#tag Class
Protected Class RSTaskDialogIndirect
	#tag CompatibilityFlags = TargetHasGUI
	#tag Method, Flags = &h21
		Private Function Buttons_Create(ByRef TaskDialogButtonArray() As TaskDialogButton, ByRef mbButtons() As MemoryBlock, ButtonArray() As RSTaskDialogIndirectButton, ByRef defaultButton As TaskDialogButtonID) As MemoryBlock
		  defaultButton = TaskDialogButtonID.None
		  
		  for i As Integer = 0 to UBound(ButtonArray)
		    Var mb As MemoryBlock
		    Var sCaption As String
		    sCaption = ButtonArray(i).Caption.ReplaceLineEndings(" ")
		    if (Flags = TaskDialogFlags.TDF_USE_COMMAND_LINKS) then
		      sCaption = sCaption + EndOfLine + ButtonArray(i).CaptionExplanation
		    end if
		    mb = me.UTF16String2MemoryBlock(sCaption)
		    mbButtons.Append(mb)
		    
		    Var oTDB As TaskDialogButton
		    oTDB.nButtonID = ButtonArray(i).ID
		    oTDB.pszButtonText = mb
		    TaskDialogButtonArray.Append(oTDB)
		    
		    'set default Button
		    if ButtonArray(i).Default then defaultButton = ButtonArray(i).ID
		  next
		  
		  'Build a MemoryBlock (stores an Array of Buttons - that's what the TaskDialogConfig needs)
		  Var mbButtonsArray As MemoryBlock
		  
		  #if Target32Bit then
		    const ByteSizePerButton = 8
		  #elseif Target64Bit then
		    const ByteSizePerButton = 12
		  #else
		    Var r As New RuntimeException
		    r.ErrorNumber = -1
		    r.Message = "Target not implemented"
		    Raise r
		  #endif
		  
		  mbButtonsArray = New MemoryBlock( ByteSizePerButton * (UBound(TaskDialogButtonArray) + 1) )
		  Var iPos As Integer
		  for i As Integer = 0 to UBound(TaskDialogButtonArray)
		    mbButtonsArray.Int32Value(iPos) = Int32(TaskDialogButtonArray(i).nButtonID)
		    Var iPtr As ptr = (TaskDialogButtonArray(i).pszButtonText)
		    mbButtonsArray.Ptr(iPos + 4) = iPtr
		    iPos = iPos + ByteSizePerButton
		  next
		  
		  return mbButtonsArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  #if TargetWindows then
		    ebTD_Available = System.IsFunctionAvailable("TaskDialogIndirect", "ComCtl32")
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsAvailable() As Boolean
		  return ebTD_Available
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowModal(ByRef retButtonClicked As TaskDialogButtonID, ByRef retRadioButtonClicked As TaskDialogButtonID, ByRef retVerificationFlagChecked As Boolean)
		  if ebTD_Available then
		    'Show TaskDialogIndirect
		    me.ShowModal_TaskDialogIndirect(retButtonClicked, retRadioButtonClicked, retVerificationFlagChecked)
		    return
		  else
		    'Show MessageDialog
		    retButtonClicked = me.ShowModal_MessageDialog(false)
		    retRadioButtonClicked = TaskDialogButtonID.None
		    retVerificationFlagChecked = false
		    return
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowModalWithin(ByRef retButtonClicked As TaskDialogButtonID, ByRef retRadioButtonClicked As TaskDialogButtonID, ByRef retVerificationFlagChecked As Boolean)
		  if ebTD_Available then
		    'Show TaskDialogIndirect
		    me.ShowModal_TaskDialogIndirect(retButtonClicked, retRadioButtonClicked, retVerificationFlagChecked)
		    return
		  else
		    'Show MessageDialog
		    retButtonClicked = me.ShowModal_MessageDialog(true)
		    retRadioButtonClicked = TaskDialogButtonID.None
		    retVerificationFlagChecked = false
		    return
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ShowModal_MessageDialog(pbShowModalWithin As Boolean) As TaskDialogButtonID
		  Var oMsgDlg As New MessageDialog
		  oMsgDlg.Title = WindowTitle.ReplaceLineEndings(" ").Trim
		  oMsgDlg.Message = MainInstruction.ReplaceLineEndings(" ").Trim
		  oMsgDlg.Explanation = Content.ReplaceLineEndings(" ").Trim
		  
		  select case MainIcon
		  case TaskDialogIcon.TD_ERROR_ICON
		    oMsgDlg.Icon = MessageDialog.GraphicStop
		  case TaskDialogIcon.TD_INFORMATION_ICON
		    oMsgDlg.Icon = MessageDialog.GraphicNote
		  case TaskDialogIcon.TD_SHIELD_ICON
		    'not supported...
		    oMsgDlg.Icon = MessageDialog.GraphicCaution
		  case TaskDialogIcon.TD_WARNING_ICON
		    oMsgDlg.Icon = MessageDialog.GraphicCaution
		  case TaskDialogIcon.Question
		    oMsgDlg.Icon = MessageDialog.GraphicQuestion
		  end select
		  
		  
		  'default settings (if no buttons assigned)
		  oMsgDlg.ActionButton.Visible = true
		  oMsgDlg.AlternateActionButton.Visible = false
		  oMsgDlg.CancelButton.Cancel = false
		  oMsgDlg.CancelButton.Visible = false
		  
		  if (UBound(Buttons) >= 0) then
		    'search for Cancel Button
		    Var iButtonsUsed() As Integer
		    Var iCancel As Integer
		    for i As Integer = 0 to UBound(Buttons)
		      if (Buttons(i).ID = TaskDialogButtonID.IDCANCEL) then iCancel = i
		      iButtonsUsed.Append(i)
		    next
		    
		    if (iCancel > 0) then
		      'assign cancel button
		      oMsgDlg.CancelButton.Visible = true
		      oMsgDlg.CancelButton.Caption = Buttons(iCancel).Caption
		      oMsgDlg.CancelButton.Default = Buttons(iCancel).Default
		      iButtonsUsed.Remove(iCancel)
		    else
		      'is cancel in CommonButtonFlags?
		      if (CType(Bitwise.BitAnd(UInt32(me.CommonButtonFlags), UInt32(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON)), UInt32) =  UInt32(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON)) then
		        oMsgDlg.CancelButton.Visible = true
		        oMsgDlg.CancelButton.Caption = constMessageDialog_CancelCaption
		        oMsgDlg.CancelButton.Default = false
		      end if
		    end if
		    
		    if (UBound(iButtonsUsed) < 0) then
		      'only cancel button! -> switch to ActionButton
		      oMsgDlg.ActionButton.Caption = oMsgDlg.CancelButton.Caption
		      oMsgDlg.ActionButton.Cancel = true
		      oMsgDlg.ActionButton.Visible = true
		      oMsgDlg.ActionButton.Default = true
		      oMsgDlg.CancelButton.Cancel = false
		      oMsgDlg.CancelButton.Visible = false
		    else
		      'assign other buttons (max 2)
		      for i As Integer = 0 to UBound(iButtonsUsed)
		        if (i > 1) then exit
		        if (i < 1) then
		          oMsgDlg.ActionButton.Visible = true
		          oMsgDlg.ActionButton.Caption = Buttons(iButtonsUsed(i)).Caption
		          oMsgDlg.ActionButton.Default = Buttons(iButtonsUsed(i)).Default
		        else
		          oMsgDlg.AlternateActionButton.Visible = true
		          oMsgDlg.AlternateActionButton.Caption = Buttons(iButtonsUsed(i)).Caption
		          oMsgDlg.AlternateActionButton.Default = Buttons(iButtonsUsed(i)).Default
		        end if
		      next
		    end if
		  end if
		  
		  'show
		  Var oReturnBtn As MessageDialogButton
		  if pbShowModalWithin and (ShowInWindow <> nil) and ShowInWindow.Visible then
		    oReturnBtn = oMsgDlg.ShowModal(ShowInWindow)
		  else
		    oReturnBtn = oMsgDlg.ShowModal()
		  end if
		  Var sRes As String
		  if (oReturnBtn <> nil) then
		    sRes = oReturnBtn.Caption
		    if (oReturnBtn = oMsgDlg.CancelButton) then return TaskDialogButtonID.IDCANCEL
		  end if
		  
		  'return result
		  for i As Integer = 0 to UBound(Buttons)
		    if (Buttons(i).Caption = sRes) then return Buttons(i).ID
		  next
		  
		  'error
		  return TaskDialogButtonID.None
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowModal_TaskDialogIndirect(ByRef retButtonClicked As TaskDialogButtonID, ByRef retRadioButtonClicked As TaskDialogButtonID, ByRef retVerificationFlagChecked As Boolean)
		  #pragma unused retRadioButtonClicked
		  #pragma unused retButtonClicked
		  #pragma unused retVerificationFlagChecked
		  
		  'Build the MemoryBlocks for the Strings
		  '--------------------------------------
		  ' - Replace LineBreaks where appropriate
		  ' - we need to have them in memory while displaying the Dialog (which has Ptr to them)
		  Var mbWindowTitle, mbMainInstruction, mbContent, mbVerify, mbExpanded, mbExpandedControlText, mbCollapsedControlText, mbFooter As MemoryBlock
		  mbWindowTitle = me.UTF16String2MemoryBlock(WindowTitle.ReplaceLineEndings(" "))
		  mbMainInstruction = me.UTF16String2MemoryBlock(MainInstruction.ReplaceLineEndings(" "))
		  mbContent = me.UTF16String2MemoryBlock(Content)
		  mbVerify = me.UTF16String2MemoryBlock(Verify.ReplaceLineEndings(" "))
		  mbExpanded = me.UTF16String2MemoryBlock(Expanded)
		  mbExpandedControlText = me.UTF16String2MemoryBlock(ExpandedControlText)
		  mbCollapsedControlText = me.UTF16String2MemoryBlock(CollapsedControlText.ReplaceLineEndings(" "))
		  mbFooter = me.UTF16String2MemoryBlock(Footer.ReplaceLineEndings(" "))
		  
		  
		  'Build the Buttons
		  '-----------------
		  Var TaskDialogButtonArray() As TaskDialogButton
		  Var mbButtons() As MemoryBlock
		  Var defaultButton As TaskDialogButtonID
		  Var mbButtonsArray As MemoryBlock
		  mbButtonsArray = me.Buttons_Create(TaskDialogButtonArray, mbButtons, Buttons, defaultButton)
		  
		  'Build the RadioButtons
		  '----------------------
		  Var TaskDialogRadioButtonArray() As TaskDialogButton
		  Var mbRadioButtons() As MemoryBlock
		  Var defaultRadioButton As TaskDialogButtonID
		  Var mbRadioButtonsArray As MemoryBlock
		  mbRadioButtonsArray = me.Buttons_Create(TaskDialogRadioButtonArray, mbRadioButtons, RadioButtons, defaultRadioButton)
		  
		  'Build the final TaskDialogConfig
		  '--------------------------------
		  Var oTaskDialogConfig As TaskDialogConfig
		  if (ShowInWindow <> nil) then
		    oTaskDialogConfig.hwndParent = ShowInWindow.Handle
		  else
		    oTaskDialogConfig.hwndParent = Nil
		  end if
		  oTaskDialogConfig.dwFlags = CType(Bitwise.BitOr(UInt32(Flags), UInt32(TaskDialogFlags.TDF_POSITION_RELATIVE_TO_WINDOW)), Integer)
		  oTaskDialogConfig.dwCommonButtons = CommonButtonFlags
		  oTaskDialogConfig.pszWindowTitle = mbWindowTitle
		  if (MainIcon = TaskDialogIcon.Question) then
		    oTaskDialogConfig.hMainIcon = Integer(TaskDialogIcon.TD_INFORMATION_ICON)
		  else
		    oTaskDialogConfig.hMainIcon = Integer(MainIcon)
		  end if
		  oTaskDialogConfig.pszMainInstruction = mbMainInstruction
		  oTaskDialogConfig.pszContent = mbContent
		  oTaskDialogConfig.cButtons = CType(UBound(Buttons) + 1, UInt32)
		  oTaskDialogConfig.pButtons = mbButtonsArray
		  oTaskDialogConfig.nDefaultButton = CType(defaultButton, Integer)
		  oTaskDialogConfig.cRadioButtons = CType(UBound(RadioButtons) + 1, UInt32)
		  oTaskDialogConfig.pRadioButtons = mbRadioButtonsArray
		  oTaskDialogConfig.nDefaultRadioButton = CType(defaultRadioButton, Integer)
		  oTaskDialogConfig.pszVerificationText = mbVerify
		  oTaskDialogConfig.pszExpandedInformation = mbExpanded
		  oTaskDialogConfig.pszExpandedControlText = mbExpandedControlText
		  oTaskDialogConfig.pszCollapsedControlText = mbCollapsedControlText
		  if (FooterIcon = TaskDialogIcon.Question) then
		    oTaskDialogConfig.hFooterIcon = Integer(TaskDialogIcon.TD_INFORMATION_ICON)
		  else
		    oTaskDialogConfig.hFooterIcon = Integer(FooterIcon)
		  end if
		  
		  oTaskDialogConfig.pszFooter = mbFooter
		  
		  
		  'finally... -> show the TaskDialogIndirect
		  '-----------------------------------------
		  #if TargetWindows then
		    // https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nf-commctrl-taskdialogindirect
		    
		    Var iVerificationFlagChecked As Int32
		    
		    Soft Declare Function TaskDialogIndirect Lib "ComCtl32" ( ByRef pTaskDialogConfig As TaskDialogConfig, ByRef retButton As TaskDialogButtonID, ByRef retRadioButton As TaskDialogButtonID, ByRef retVerificationFlagChecked As Int32 ) As Integer
		    
		    if System.IsFunctionAvailable("TaskDialogIndirect", "ComCtl32") then
		      'these settings remain the same
		      oTaskDialogConfig.cbSize = oTaskDialogConfig.size
		      oTaskDialogConfig.hInstance = 0
		      oTaskDialogConfig.pfCallback = 0
		      
		      
		      'call and show the TaskDialogIndirect
		      '------------------------------------
		      if (TaskDialogIndirect(oTaskDialogConfig, retButtonClicked, retRadioButtonClicked, iVerificationFlagChecked) <> 0) then
		        'error
		        retButtonClicked = TaskDialogButtonID.None
		        retRadioButtonClicked = TaskDialogButtonID.None
		        retVerificationFlagChecked = false
		      else
		        retVerificationFlagChecked = (iVerificationFlagChecked = 1)
		      end if
		    end if
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UTF16String2MemoryBlock(psText As String) As MemoryBlock
		  psText = ConvertEncoding(psText, Encodings.UTF16).Trim
		  
		  Var mb as New MemoryBlock( (Len( psText ) + 2)  * 2 )
		  mb.WString( 0 ) = psText
		  
		  return mb
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Buttons() As RSTaskDialogIndirectButton
	#tag EndProperty

	#tag Property, Flags = &h0
		CollapsedControlText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CommonButtonFlags As TaskDialogCommonButtonFlags
	#tag EndProperty

	#tag Property, Flags = &h0
		Content As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebTD_Available As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Expanded As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ExpandedControlText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Flags As TaskDialogFlags
	#tag EndProperty

	#tag Property, Flags = &h0
		Footer As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FooterIcon As TaskDialogIcon
	#tag EndProperty

	#tag Property, Flags = &h0
		MainIcon As TaskDialogIcon
	#tag EndProperty

	#tag Property, Flags = &h0
		MainInstruction As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RadioButtons() As RSTaskDialogIndirectButton
	#tag EndProperty

	#tag Property, Flags = &h0
		ShowInWindow As DesktopWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		Verify As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WindowTitle As String
	#tag EndProperty


	#tag Constant, Name = constMessageDialog_CancelCaption, Type = String, Dynamic = False, Default = \"&Cancel", Scope = Private
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abbre&chen"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="CollapsedControlText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Content"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Expanded"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExpandedControlText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Footer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MainInstruction"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowInWindow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Window"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Verify"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowTitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CommonButtonFlags"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="TaskDialogCommonButtonFlags"
			EditorType="Enum"
			#tag EnumValues
				"1 - TDCBF_OK_BUTTON"
				"2 - TDCBF_YES_BUTTON"
				"4 - TDCBF_NO_BUTTON"
				"8 - TDCBF_CANCEL_BUTTON"
				"16 - TDCBF_RETRY_BUTTON"
				"32 - TDCBF_CLOSE_BUTTON"
				"-1 - Error"
				"0 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flags"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="TaskDialogFlags"
			EditorType="Enum"
			#tag EnumValues
				"1 - TDF_ENABLE_HYPERLINKS"
				"2 - TDF_USE_HICON_MAIN"
				"4 - TDF_USE_HICON_FOOTER"
				"8 - TDF_ALLOW_DIALOG_CANCELLATION"
				"16 - TDF_USE_COMMAND_LINKS"
				"32 - TDF_USE_COMMAND_LINKS_NO_ICON"
				"64 - TDF_EXPAND_FOOTER_AREA"
				"128 - TDF_EXPANDED_BY_DEFAULT"
				"256 - TDF_VERIFICATION_FLAG_CHECKED"
				"512 - TDF_SHOW_PROGRESS_BAR"
				"1024 - TDF_SHOW_MARQUEE_PROGRESS_BAR"
				"2048 - TDF_CALLBACK_TIMER"
				"4096 - TDF_POSITION_RELATIVE_TO_WINDOW"
				"8192 - TDF_RTL_LAYOUT"
				"16384 - TDF_NO_DEFAULT_RADIO_BUTTON"
				"0 - NoFlag"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FooterIcon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="TaskDialogIcon"
			EditorType="Enum"
			#tag EnumValues
				"65535 - TD_WARNING_ICON"
				"65534 - TD_ERROR_ICON"
				"65533 - TD_INFORMATION_ICON"
				"65532 - TD_SHIELD_ICON"
				"0 - None"
				"1 - Question"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MainIcon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="TaskDialogIcon"
			EditorType="Enum"
			#tag EnumValues
				"65535 - TD_WARNING_ICON"
				"65534 - TD_ERROR_ICON"
				"65533 - TD_INFORMATION_ICON"
				"65532 - TD_SHIELD_ICON"
				"0 - None"
				"1 - Question"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
