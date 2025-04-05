#tag Module
Module modTaskDialog
	#tag Method, Flags = &h0
		Function ShowAsTaskDialog_Modal(Extends oMessageDialog As MessageDialog) As MessageDialogButton
		  '-----------------------------------------------------------------------------------------------------------
		  'This Example shows how to use the RSTaskDialogIndirect as a substitution for MessageDialog
		  '
		  'we only use the items that are available for both.
		  '-> so your windows users get a nice dialog, while osx/linux/winxp gets the MessageDialog
		  '-----------------------------------------------------------------------------------------------------------
		  ' to use it, simply replace your (MessageDialog).ShowModal with (MessageDialog).ShowAsTaskDialog_Modal
		  '-----------------------------------------------------------------------------------------------------------
		  
		  Return oMessageDialog.ShowAsTaskDialog_ModalWithin(Nil)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowAsTaskDialog_ModalWithin(Extends oMessageDialog As MessageDialog, Parent As DesktopWindow) As MessageDialogButton
		  '-----------------------------------------------------------------------------------------------------------
		  'This Example shows how to use the RSTaskDialogIndirect as a substitution for MessageDialog
		  '
		  'we only use the items that are available for both.
		  '-> so your windows users get a nice dialog, while osx/linux/winxp gets the MessageDialog
		  '-----------------------------------------------------------------------------------------------------------
		  ' to use it, simply replace your (MessageDialog).ShowModalWithin(Parent) with (MessageDialog).ShowAsTaskDialog_ModalWithin(Parent)
		  '-----------------------------------------------------------------------------------------------------------
		  
		  
		  'create TaskDialogIndirect
		  Var dlgTaskDialogIndirect As New RSTaskDialogIndirect
		  
		  If (Not dlgTaskDialogIndirect.IsAvailable) Then
		    'don't let RSTaskDialogIndirect create another MessageDialog, as we already have one
		    If (Parent <> Nil) And Parent.Visible Then
		      Return oMessageDialog.ShowModal(Parent)
		    Else
		      Return oMessageDialog.ShowModal()
		    End If
		  End If
		  
		  'set properties
		  dlgTaskDialogIndirect.WindowTitle = oMessageDialog.Title
		  dlgTaskDialogIndirect.MainInstruction = oMessageDialog.Message
		  dlgTaskDialogIndirect.Content = oMessageDialog.Explanation
		  Select Case oMessageDialog.IconType
		  Case MessageDialog.IconTypes.Caution
		    dlgTaskDialogIndirect.MainIcon = TaskDialogIcon.TD_WARNING_ICON
		  Case MessageDialog.IconTypes.None
		    dlgTaskDialogIndirect.MainIcon = TaskDialogIcon.None
		  Case MessageDialog.IconTypes.Note
		    dlgTaskDialogIndirect.MainIcon = TaskDialogIcon.TD_INFORMATION_ICON
		  Case MessageDialog.IconTypes.Question
		    dlgTaskDialogIndirect.MainIcon = TaskDialogIcon.TD_INFORMATION_ICON
		  Case MessageDialog.IconTypes.Stop
		    dlgTaskDialogIndirect.MainIcon = TaskDialogIcon.TD_ERROR_ICON
		  Else
		    dlgTaskDialogIndirect.MainIcon = TaskDialogIcon.None
		  End Select
		  
		  dlgTaskDialogIndirect.ShowInWindow = Parent
		  
		  'create buttons
		  Var oButtons() As RSTaskDialogIndirectButton
		  Var oButton As RSTaskDialogIndirectButton
		  
		  'do we have a cancel button?
		  Var iCancel As Integer
		  If oMessageDialog.ActionButton.Visible And oMessageDialog.ActionButton.Cancel Then iCancel = 1
		  If oMessageDialog.AlternateActionButton.Visible And oMessageDialog.AlternateActionButton.Cancel Then iCancel = 2
		  If oMessageDialog.CancelButton.Visible And oMessageDialog.CancelButton.Cancel Then iCancel = 3
		  
		  Var iBtnIDs() As TaskDialogButtonID 'we just use these IDs...
		  iBtnIDs.Add(TaskDialogButtonID.IDYES)
		  iBtnIDs.Add(TaskDialogButtonID.IDNO)
		  iBtnIDs.Add(TaskDialogButtonID.IDCANCEL)
		  Var dictResult As New Dictionary 'lookup the Button later
		  For i As Integer = 1 To 3
		    Var oBtn As MessageDialogButton
		    Select Case i
		    Case 1
		      oBtn = oMessageDialog.ActionButton
		    Case 2
		      oBtn = oMessageDialog.AlternateActionButton
		    Case 3
		      oBtn = oMessageDialog.CancelButton
		    Else
		      Continue
		    End Select
		    If oBtn.Visible Then
		      oButton = New RSTaskDialogIndirectButton
		      oButton.Caption = oBtn.Caption
		      oButton.Default = oBtn.Default
		      If oBtn.Cancel Then
		        oButton.ID = iBtnIDs(iBtnIDs.LastIndex) 'the last one
		        dictResult.Value(iBtnIDs(iBtnIDs.LastIndex)) = i
		        iBtnIDs.RemoveAt(iBtnIDs.LastIndex)
		      Else
		        oButton.ID = iBtnIDs(0) 'the first one still available
		        dictResult.Value(iBtnIDs(0)) = i
		        iBtnIDs.RemoveAt(0)
		      End If
		      oButtons.Add(oButton)
		    End If
		  Next
		  dlgTaskDialogIndirect.Buttons = oButtons
		  
		  
		  '---------------------------------------------------
		  'show dialog
		  '---------------------------------------------------
		  Var retClickedButton As TaskDialogButtonID
		  Var retRadioButton As TaskDialogButtonID
		  Var retVerificationFlagChecked As Boolean
		  
		  If (Parent <> Nil) And Parent.Visible Then
		    dlgTaskDialogIndirect.ShowModalWithin(retClickedButton, retRadioButton, retVerificationFlagChecked)
		  Else
		    dlgTaskDialogIndirect.ShowModal(retClickedButton, retRadioButton, retVerificationFlagChecked)
		  End If
		  
		  
		  'return the result
		  Select Case dictResult.Lookup(retClickedButton, TaskDialogButtonID.None)
		  Case 1
		    Return oMessageDialog.ActionButton
		  Case 2
		    Return oMessageDialog.AlternateActionButton
		  Case 3
		    Return oMessageDialog.CancelButton
		  Else
		    Return Nil
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UTF16String2MemoryBlock(psText As String) As MemoryBlock
		  psText = ConvertEncoding(psText, Encodings.UTF16)
		  
		  Var mb As New MemoryBlock((psText.Length + 1) * 2)
		  mb.WString( 0 ) = psText
		  
		  Return mb
		End Function
	#tag EndMethod


	#tag Note, Name = Struct Sizes
		32bit:
		TASKDIALOGCONFIG must be 96 bytes
		TASKDIALOG_BUTTON must be 8 bytes
	#tag EndNote


	#tag Structure, Name = TaskDialogButton, Flags = &h0
		nButtonID As TaskDialogButtonID
		pszButtonText As Ptr
	#tag EndStructure

	#tag Structure, Name = TaskDialogConfig, Flags = &h0, Attributes = \"StructureAlignment \x3D 4"
		cbSize As UInt32
		  hwndParent As Ptr
		  hInstance As Integer
		  dwFlags As Int32
		  dwCommonButtons As TaskDialogCommonButtonFlags
		  pszWindowTitle As Ptr
		  hMainIcon As Integer
		  pszMainInstruction As Ptr
		  pszContent As Ptr
		  cButtons As UInt32
		  pButtons As Ptr
		  nDefaultButton As Int32
		  cRadioButtons As UInt32
		  pRadioButtons As Ptr
		  nDefaultRadioButton As Int32
		  pszVerificationText As Ptr
		  pszExpandedInformation As Ptr
		  pszExpandedControlText as Ptr
		  pszCollapsedControlText As Ptr
		  hFooterIcon As Integer
		  pszFooter As Ptr
		  pfCallback As Integer
		  lpCallbackData As Integer
		cxWidth as UInt32
	#tag EndStructure


	#tag Enum, Name = TaskDialogButtonID, Type = Int32, Flags = &h0
		IDOK = 1
		  IDCANCEL = 2
		  IDABORT = 3
		  IDRETRY = 4
		  IDIGNORE = 5
		  IDYES = 6
		  IDNO = 7
		  IDCLOSE = 8
		None = 0
	#tag EndEnum

	#tag Enum, Name = TaskDialogCommonButtonFlags, Type = Int32, Flags = &h0
		TDCBF_OK_BUTTON = 1
		  TDCBF_YES_BUTTON = 2
		  TDCBF_NO_BUTTON = 4
		  TDCBF_CANCEL_BUTTON= 8
		  TDCBF_RETRY_BUTTON = 16
		  TDCBF_CLOSE_BUTTON = 32
		  Error = -1
		None = 0
	#tag EndEnum

	#tag Enum, Name = TaskDialogElements, Type = Int32, Flags = &h0
		TDE_CONTENT = 0
		  TDE_EXPANDED_INFORMATION = 1
		  TDE_FOOTER = 2
		TDE_MAIN_INSTRUCTION = 3
	#tag EndEnum

	#tag Enum, Name = TaskDialogFlags, Type = Int32, Flags = &h0
		TDF_ENABLE_HYPERLINKS = &h1
		  TDF_USE_HICON_MAIN = &h2
		  TDF_USE_HICON_FOOTER = &h4
		  TDF_ALLOW_DIALOG_CANCELLATION = &h8
		  TDF_USE_COMMAND_LINKS = &h10
		  TDF_USE_COMMAND_LINKS_NO_ICON = &h20
		  TDF_EXPAND_FOOTER_AREA = &h40
		  TDF_EXPANDED_BY_DEFAULT = &h80
		  TDF_VERIFICATION_FLAG_CHECKED = &h100
		  TDF_SHOW_PROGRESS_BAR = &h200
		  TDF_SHOW_MARQUEE_PROGRESS_BAR = &h400
		  TDF_CALLBACK_TIMER = &h800
		  TDF_POSITION_RELATIVE_TO_WINDOW = &h1000
		  TDF_RTL_LAYOUT = &h2000
		  TDF_NO_DEFAULT_RADIO_BUTTON = &h4000
		NoFlag = 0
	#tag EndEnum

	#tag Enum, Name = TaskDialogIcon, Type = Integer, Flags = &h0
		TD_WARNING_ICON= 65535
		  TD_ERROR_ICON= 65534
		  TD_INFORMATION_ICON = 65533
		  TD_SHIELD_ICON = 65532
		  None = 0
		Question = 1
	#tag EndEnum

	#tag Enum, Name = TaskDialogIconElements, Type = Int32, Flags = &h0
		TDIE_ICON_MAIN = 0
		TDIE_ICON_FOOTER = 1
	#tag EndEnum

	#tag Enum, Name = TaskDialogMessages, Type = Int32, Flags = &h0
		TDM_NAVIGATE_PAGE = 1125
		  TDM_CLICK_BUTTON = 1126
		  TDM_SET_MARQUEE_PROGRESS_BAR = 1127
		  TDM_SET_PROGRESS_BAR_STATE = 1128
		  TDM_SET_PROGRESS_BAR_RANGE = 1129
		  TDM_SET_PROGRESS_BAR_POS = 1130
		  TDM_SET_PROGRESS_BAR_MARQUEE = 1131
		  TDM_SET_ELEMENT_TEXT = 1132
		  TDM_CLICK_RADIO_BUTTON = 1134
		  TDM_ENABLE_BUTTON = 1135
		  TDM_ENABLE_RADIO_BUTTON = 1136
		  TDM_CLICK_VERIFICATION = 1137
		  TDM_UPDATE_ELEMENT_TEXT = 1138
		  TDM_SET_BUTTON_ELEVATION_REQUIRED_STATE = 1139
		TDM_UPDATE_ICON = 1140
	#tag EndEnum

	#tag Enum, Name = TaskDialogNotifications, Type = Int32, Flags = &h0
		TDN_CREATED = 0
		  TDN_NAVIGATED = 1
		  TDN_BUTTON_CLICKED = 2
		  TDN_HYPERLINK_CLICKED = 3
		  TDN_TIMER = 4
		  TDN_DESTROYED = 5
		  TDN_RADIO_BUTTON_CLICKED = 6
		  TDN_DIALOG_CONSTRUCTED = 7
		  TDN_VERIFICATION_CLICKED = 8
		  TDN_HELP = 9
		TDN_EXPANDO_BUTTON_CLICKED = 10
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
	#tag EndViewBehavior
End Module
#tag EndModule
