#tag Class
Protected Class RSTaskDialogIndirect
	#tag CompatibilityFlags = TargetHasGUI
	#tag Method, Flags = &h21
		Private Function Buttons_Create(ByRef TaskDialogButtonArray() As TaskDialogButton, ByRef mbButtons() As MemoryBlock, ButtonArray() As RSTaskDialogIndirectButton, ByRef defaultButton As TaskDialogButtonID) As MemoryBlock
		  defaultButton = TaskDialogButtonID.None
		  
		  For i As Integer = 0 To ButtonArray.LastIndex
		    Var mb As MemoryBlock
		    Var sCaption As String
		    sCaption = ButtonArray(i).Caption.ReplaceLineEndings(" ")
		    If (Flags = TaskDialogFlags.TDF_USE_COMMAND_LINKS) Then
		      sCaption = sCaption + EndOfLine + ButtonArray(i).CaptionExplanation
		    End If
		    mb = Me.UTF16String2MemoryBlock(sCaption)
		    mbButtons.Add(mb)
		    
		    Var oTDB As TaskDialogButton
		    oTDB.nButtonID = ButtonArray(i).ID
		    oTDB.pszButtonText = mb
		    TaskDialogButtonArray.Add(oTDB)
		    
		    'set default Button
		    If ButtonArray(i).Default Then defaultButton = ButtonArray(i).ID
		  Next
		  
		  'Build a MemoryBlock (stores an Array of Buttons - that's what the TaskDialogConfig needs)
		  Var mbButtonsArray As MemoryBlock
		  
		  #If Target32Bit Then
		    Const ByteSizePerButton = 8
		  #ElseIf Target64Bit Then
		    Const ByteSizePerButton = 12
		  #Else
		    Var r As New RuntimeException
		    r.ErrorNumber = -1
		    r.Message = "Target not implemented"
		    Raise r
		  #EndIf
		  
		  mbButtonsArray = New MemoryBlock( ByteSizePerButton * (TaskDialogButtonArray.LastIndex + 1) )
		  Var iPos As Integer
		  For i As Integer = 0 To TaskDialogButtonArray.LastIndex
		    mbButtonsArray.Int32Value(iPos) = Int32(TaskDialogButtonArray(i).nButtonID)
		    Var iPtr As Ptr = (TaskDialogButtonArray(i).pszButtonText)
		    mbButtonsArray.Ptr(iPos + 4) = iPtr
		    iPos = iPos + ByteSizePerButton
		  Next
		  
		  Return mbButtonsArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  #If TargetWindows Then
		    ebTD_Available = System.IsFunctionAvailable("TaskDialogIndirect", "ComCtl32")
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsAvailable() As Boolean
		  Return ebTD_Available
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowModal(ByRef retButtonClicked As TaskDialogButtonID, ByRef retRadioButtonClicked As TaskDialogButtonID, ByRef retVerificationFlagChecked As Boolean)
		  If ebTD_Available Then
		    'Show TaskDialogIndirect
		    Me.ShowModal_TaskDialogIndirect(retButtonClicked, retRadioButtonClicked, retVerificationFlagChecked)
		    Return
		  Else
		    'Show MessageDialog
		    retButtonClicked = Me.ShowModal_MessageDialog(False)
		    retRadioButtonClicked = TaskDialogButtonID.None
		    retVerificationFlagChecked = False
		    Return
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowModalWithin(ByRef retButtonClicked As TaskDialogButtonID, ByRef retRadioButtonClicked As TaskDialogButtonID, ByRef retVerificationFlagChecked As Boolean)
		  If ebTD_Available Then
		    'Show TaskDialogIndirect
		    Me.ShowModal_TaskDialogIndirect(retButtonClicked, retRadioButtonClicked, retVerificationFlagChecked)
		    Return
		  Else
		    'Show MessageDialog
		    retButtonClicked = Me.ShowModal_MessageDialog(True)
		    retRadioButtonClicked = TaskDialogButtonID.None
		    retVerificationFlagChecked = False
		    Return
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ShowModal_MessageDialog(pbShowModalWithin As Boolean) As TaskDialogButtonID
		  Var oMsgDlg As New MessageDialog
		  oMsgDlg.Title = WindowTitle.ReplaceLineEndings(" ").Trim
		  oMsgDlg.Message = MainInstruction.ReplaceLineEndings(" ").Trim
		  oMsgDlg.Explanation = Content.ReplaceLineEndings(" ").Trim
		  
		  Select Case MainIcon
		  Case TaskDialogIcon.TD_ERROR_ICON
		    oMsgDlg.IconType = MessageDialog.IconTypes.Stop
		  Case TaskDialogIcon.TD_INFORMATION_ICON
		    oMsgDlg.IconType = MessageDialog.IconTypes.Note
		  Case TaskDialogIcon.TD_SHIELD_ICON
		    'not supported...
		    oMsgDlg.IconType = MessageDialog.IconTypes.Caution
		  Case TaskDialogIcon.TD_WARNING_ICON
		    oMsgDlg.IconType = MessageDialog.IconTypes.Caution
		  Case TaskDialogIcon.Question
		    oMsgDlg.IconType = MessageDialog.IconTypes.Question
		  End Select
		  
		  
		  'default settings (if no buttons assigned)
		  oMsgDlg.ActionButton.Visible = True
		  oMsgDlg.AlternateActionButton.Visible = False
		  oMsgDlg.CancelButton.Cancel = False
		  oMsgDlg.CancelButton.Visible = False
		  
		  If (Buttons.LastIndex >= 0) Then
		    'search for Cancel Button
		    Var iButtonsUsed() As Integer
		    Var iCancel As Integer
		    For i As Integer = 0 To Buttons.LastIndex
		      If (Buttons(i).ID = TaskDialogButtonID.IDCANCEL) Then iCancel = i
		      iButtonsUsed.Add(i)
		    Next
		    
		    If (iCancel > 0) Then
		      'assign cancel button
		      oMsgDlg.CancelButton.Visible = True
		      oMsgDlg.CancelButton.Caption = Buttons(iCancel).Caption
		      oMsgDlg.CancelButton.Default = Buttons(iCancel).Default
		      iButtonsUsed.RemoveAt(iCancel)
		    Else
		      'is cancel in CommonButtonFlags?
		      If (CType(Bitwise.BitAnd(UInt32(Me.CommonButtonFlags), UInt32(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON)), UInt32) =  UInt32(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON)) Then
		        oMsgDlg.CancelButton.Visible = True
		        oMsgDlg.CancelButton.Caption = constMessageDialog_CancelCaption
		        oMsgDlg.CancelButton.Default = False
		      End If
		    End If
		    
		    If (iButtonsUsed.LastIndex < 0) Then
		      'only cancel button! -> switch to ActionButton
		      oMsgDlg.ActionButton.Caption = oMsgDlg.CancelButton.Caption
		      oMsgDlg.ActionButton.Cancel = True
		      oMsgDlg.ActionButton.Visible = True
		      oMsgDlg.ActionButton.Default = True
		      oMsgDlg.CancelButton.Cancel = False
		      oMsgDlg.CancelButton.Visible = False
		    Else
		      'assign other buttons (max 2)
		      For i As Integer = 0 To iButtonsUsed.LastIndex
		        If (i > 1) Then Exit
		        If (i < 1) Then
		          oMsgDlg.ActionButton.Visible = True
		          oMsgDlg.ActionButton.Caption = Buttons(iButtonsUsed(i)).Caption
		          oMsgDlg.ActionButton.Default = Buttons(iButtonsUsed(i)).Default
		        Else
		          oMsgDlg.AlternateActionButton.Visible = True
		          oMsgDlg.AlternateActionButton.Caption = Buttons(iButtonsUsed(i)).Caption
		          oMsgDlg.AlternateActionButton.Default = Buttons(iButtonsUsed(i)).Default
		        End If
		      Next
		    End If
		  End If
		  
		  'show
		  Var oReturnBtn As MessageDialogButton
		  If pbShowModalWithin And (ShowInWindow <> Nil) And ShowInWindow.Visible Then
		    oReturnBtn = oMsgDlg.ShowModal(ShowInWindow)
		  Else
		    oReturnBtn = oMsgDlg.ShowModal()
		  End If
		  Var sRes As String
		  If (oReturnBtn <> Nil) Then
		    sRes = oReturnBtn.Caption
		    If (oReturnBtn = oMsgDlg.CancelButton) Then Return TaskDialogButtonID.IDCANCEL
		  End If
		  
		  'return result
		  For i As Integer = 0 To Buttons.LastIndex
		    If (Buttons(i).Caption = sRes) Then Return Buttons(i).ID
		  Next
		  
		  'error
		  Return TaskDialogButtonID.None
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowModal_TaskDialogIndirect(ByRef retButtonClicked As TaskDialogButtonID, ByRef retRadioButtonClicked As TaskDialogButtonID, ByRef retVerificationFlagChecked As Boolean)
		  #Pragma unused retRadioButtonClicked
		  #Pragma unused retButtonClicked
		  #Pragma unused retVerificationFlagChecked
		  
		  'Build the MemoryBlocks for the Strings
		  '--------------------------------------
		  ' - Replace LineBreaks where appropriate
		  ' - we need to have them in memory while displaying the Dialog (which has Ptr to them)
		  Var mbWindowTitle, mbMainInstruction, mbContent, mbVerify, mbExpanded, mbExpandedControlText, mbCollapsedControlText, mbFooter As MemoryBlock
		  mbWindowTitle = Me.UTF16String2MemoryBlock(WindowTitle.ReplaceLineEndings(" "))
		  mbMainInstruction = Me.UTF16String2MemoryBlock(MainInstruction.ReplaceLineEndings(" "))
		  mbContent = Me.UTF16String2MemoryBlock(Content)
		  mbVerify = Me.UTF16String2MemoryBlock(Verify.ReplaceLineEndings(" "))
		  mbExpanded = Me.UTF16String2MemoryBlock(Expanded)
		  mbExpandedControlText = Me.UTF16String2MemoryBlock(ExpandedControlText)
		  mbCollapsedControlText = Me.UTF16String2MemoryBlock(CollapsedControlText.ReplaceLineEndings(" "))
		  mbFooter = Me.UTF16String2MemoryBlock(Footer.ReplaceLineEndings(" "))
		  
		  
		  'Build the Buttons
		  '-----------------
		  Var TaskDialogButtonArray() As TaskDialogButton
		  Var mbButtons() As MemoryBlock
		  Var defaultButton As TaskDialogButtonID
		  Var mbButtonsArray As MemoryBlock
		  mbButtonsArray = Me.Buttons_Create(TaskDialogButtonArray, mbButtons, Buttons, defaultButton)
		  
		  'Build the RadioButtons
		  '----------------------
		  Var TaskDialogRadioButtonArray() As TaskDialogButton
		  Var mbRadioButtons() As MemoryBlock
		  Var defaultRadioButton As TaskDialogButtonID
		  Var mbRadioButtonsArray As MemoryBlock
		  mbRadioButtonsArray = Me.Buttons_Create(TaskDialogRadioButtonArray, mbRadioButtons, RadioButtons, defaultRadioButton)
		  
		  'Build the final TaskDialogConfig
		  '--------------------------------
		  Var oTaskDialogConfig As TaskDialogConfig
		  If (ShowInWindow <> Nil) Then
		    oTaskDialogConfig.hwndParent = ShowInWindow.Handle
		  Else
		    oTaskDialogConfig.hwndParent = Nil
		  End If
		  oTaskDialogConfig.dwFlags = CType(Bitwise.BitOr(UInt32(Flags), UInt32(TaskDialogFlags.TDF_POSITION_RELATIVE_TO_WINDOW)), Integer)
		  oTaskDialogConfig.dwCommonButtons = CommonButtonFlags
		  oTaskDialogConfig.pszWindowTitle = mbWindowTitle
		  If (MainIcon = TaskDialogIcon.Question) Then
		    oTaskDialogConfig.hMainIcon = Integer(TaskDialogIcon.TD_INFORMATION_ICON)
		  Else
		    oTaskDialogConfig.hMainIcon = Integer(MainIcon)
		  End If
		  oTaskDialogConfig.pszMainInstruction = mbMainInstruction
		  oTaskDialogConfig.pszContent = mbContent
		  oTaskDialogConfig.cButtons = CType(Buttons.LastIndex + 1, UInt32)
		  oTaskDialogConfig.pButtons = mbButtonsArray
		  oTaskDialogConfig.nDefaultButton = CType(defaultButton, Integer)
		  oTaskDialogConfig.cRadioButtons = CType(RadioButtons.LastIndex + 1, UInt32)
		  oTaskDialogConfig.pRadioButtons = mbRadioButtonsArray
		  oTaskDialogConfig.nDefaultRadioButton = CType(defaultRadioButton, Integer)
		  oTaskDialogConfig.pszVerificationText = mbVerify
		  oTaskDialogConfig.pszExpandedInformation = mbExpanded
		  oTaskDialogConfig.pszExpandedControlText = mbExpandedControlText
		  oTaskDialogConfig.pszCollapsedControlText = mbCollapsedControlText
		  If (FooterIcon = TaskDialogIcon.Question) Then
		    oTaskDialogConfig.hFooterIcon = Integer(TaskDialogIcon.TD_INFORMATION_ICON)
		  Else
		    oTaskDialogConfig.hFooterIcon = Integer(FooterIcon)
		  End If
		  
		  oTaskDialogConfig.pszFooter = mbFooter
		  
		  
		  'finally... -> show the TaskDialogIndirect
		  '-----------------------------------------
		  #If TargetWindows Then
		    // https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nf-commctrl-taskdialogindirect
		    
		    Var iVerificationFlagChecked As Int32
		    
		    Soft Declare Function TaskDialogIndirect Lib "ComCtl32" ( ByRef pTaskDialogConfig As TaskDialogConfig, ByRef retButton As TaskDialogButtonID, ByRef retRadioButton As TaskDialogButtonID, ByRef retVerificationFlagChecked As Int32 ) As Integer
		    
		    If System.IsFunctionAvailable("TaskDialogIndirect", "ComCtl32") Then
		      'these settings remain the same
		      oTaskDialogConfig.cbSize = oTaskDialogConfig.size
		      oTaskDialogConfig.hInstance = 0
		      oTaskDialogConfig.pfCallback = 0
		      
		      
		      'call and show the TaskDialogIndirect
		      '------------------------------------
		      If (TaskDialogIndirect(oTaskDialogConfig, retButtonClicked, retRadioButtonClicked, iVerificationFlagChecked) <> 0) Then
		        'error
		        retButtonClicked = TaskDialogButtonID.None
		        retRadioButtonClicked = TaskDialogButtonID.None
		        retVerificationFlagChecked = False
		      Else
		        retVerificationFlagChecked = (iVerificationFlagChecked = 1)
		      End If
		    End If
		    
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UTF16String2MemoryBlock(psText As String) As MemoryBlock
		  psText = ConvertEncoding(psText, Encodings.UTF16).Trim
		  
		  Var mb As New MemoryBlock((psText.Length + 2) * 2)
		  mb.WString( 0 ) = psText
		  
		  Return mb
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
