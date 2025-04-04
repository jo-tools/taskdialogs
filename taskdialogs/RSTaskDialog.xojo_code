#tag Class
Protected Class RSTaskDialog
	#tag CompatibilityFlags = TargetHasGUI
	#tag Method, Flags = &h0
		Sub Constructor()
		  #If TargetWindows Then
		    ebTD_Available = System.IsFunctionAvailable("TaskDialog", "ComCtl32")
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_CommonButtonFlags_Set(piIconSet As Integer) As Integer
		  Select Case piIconSet
		    
		  Case constTaskDialog_CommonButtonFlag_Set_YesNo
		    Return CType(TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON, Integer) Or CType(TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON, Integer)
		    
		  Case constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		    Return CType(TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON, Integer) Or CType(TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON, Integer) Or CType(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON, Integer)
		    
		  Case constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		    Return CType(TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON, Integer) Or CType(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON, Integer)
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo, constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError, constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion, constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		    Return CType(TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON, Integer) Or CType(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON, Integer)
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OK_IsInfo, constTaskDialog_CommonButtonFlag_Set_OK_IsError, constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		    Return CType(TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON, Integer)
		    
		  Else
		    Return CType(TaskDialogCommonButtonFlags.None, Integer)
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Icon_Set(piIconSet As Integer) As TaskDialogIcon
		  Select Case piIconSet
		    
		  Case constTaskDialog_CommonButtonFlag_Set_YesNo
		    Return TaskDialogIcon.Question
		    
		  Case constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		    Return TaskDialogIcon.Question
		    
		  Case constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		    Return TaskDialogIcon.TD_WARNING_ICON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo
		    Return TaskDialogIcon.TD_INFORMATION_ICON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError
		    Return TaskDialogIcon.TD_ERROR_ICON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion
		    Return TaskDialogIcon.TD_INFORMATION_ICON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		    Return TaskDialogIcon.TD_WARNING_ICON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OK_IsInfo
		    Return TaskDialogIcon.TD_INFORMATION_ICON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OK_IsError
		    Return TaskDialogIcon.TD_ERROR_ICON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		    Return TaskDialogIcon.TD_WARNING_ICON
		    
		  Else
		    Return TaskDialogIcon.None
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsAvailable() As Boolean
		  Return ebTD_Available
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Show() As TaskDialogCommonButtonFlags
		  If ebTD_Available Then
		    'Show TaskDialog
		    Return Me.Show_TaskDialog()
		  Else
		    'Show MsgBox
		    Return Me.Show_MsgBox()
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Show_MsgBox() As TaskDialogCommonButtonFlags
		  Var oMsgDlg As New MessageDialog
		  oMsgDlg.Title = WindowTitle.ReplaceLineEndings(" ").Trim
		  oMsgDlg.Message = MainInstruction.ReplaceLineEndings(" ").Trim
		  oMsgDlg.Explanation = Content.ReplaceLineEndings(" ").Trim
		  
		  oMsgDlg.ActionButton.Visible = False
		  oMsgDlg.AlternateActionButton.Visible = False
		  oMsgDlg.CancelButton.Cancel = False
		  oMsgDlg.CancelButton.Visible = False
		  
		  
		  Select Case Buttons_Icon_Set
		  Case constTaskDialog_CommonButtonFlag_Set_YesNo
		    oMsgDlg.IconType = MessageDialog.IconTypes.Question
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Yes"
		    oMsgDlg.ActionButton.Default = True
		    
		    oMsgDlg.AlternateActionButton.Visible = True
		    oMsgDlg.AlternateActionButton.Caption = "No"
		    oMsgDlg.AlternateActionButton.Default = False
		    
		    Select Case oMsgDlg.ShowModal()
		    Case oMsgDlg.ActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    Case oMsgDlg.AlternateActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    End Select
		    
		    
		  Case constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		    oMsgDlg.IconType = MessageDialog.IconTypes.Question
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Yes"
		    oMsgDlg.ActionButton.Default = True
		    
		    oMsgDlg.AlternateActionButton.Visible = True
		    oMsgDlg.AlternateActionButton.Caption = "No"
		    oMsgDlg.AlternateActionButton.Default = False
		    
		    oMsgDlg.CancelButton.Cancel = True
		    oMsgDlg.CancelButton.Visible = True
		    
		    Select Case oMsgDlg.ShowModal()
		    Case oMsgDlg.ActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    Case oMsgDlg.AlternateActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    End Select
		    
		  Case constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		    oMsgDlg.IconType = MessageDialog.IconTypes.Caution
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Retry"
		    oMsgDlg.ActionButton.Default = True
		    
		    oMsgDlg.CancelButton.Cancel = True
		    oMsgDlg.CancelButton.Visible = True
		    
		    Select Case oMsgDlg.ShowModal()
		    Case oMsgDlg.ActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    End Select
		    
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo
		    oMsgDlg.IconType = MessageDialog.IconTypes.Note
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Ok"
		    oMsgDlg.ActionButton.Default = True
		    
		    oMsgDlg.CancelButton.Cancel = True
		    oMsgDlg.CancelButton.Visible = True
		    
		    Select Case oMsgDlg.ShowModal()
		    Case oMsgDlg.ActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    End Select
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion
		    oMsgDlg.IconType = MessageDialog.IconTypes.Question
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Ok"
		    oMsgDlg.ActionButton.Default = True
		    
		    oMsgDlg.CancelButton.Cancel = True
		    oMsgDlg.CancelButton.Visible = True
		    
		    Select Case oMsgDlg.ShowModal()
		    Case oMsgDlg.ActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    End Select
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		    oMsgDlg.IconType = MessageDialog.IconTypes.Caution
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Ok"
		    oMsgDlg.ActionButton.Default = True
		    
		    oMsgDlg.CancelButton.Cancel = True
		    oMsgDlg.CancelButton.Visible = True
		    
		    Select Case oMsgDlg.ShowModal()
		    Case oMsgDlg.ActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    End Select
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError
		    oMsgDlg.IconType = MessageDialog.IconTypes.Stop
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Ok"
		    oMsgDlg.ActionButton.Default = True
		    
		    oMsgDlg.CancelButton.Cancel = True
		    oMsgDlg.CancelButton.Visible = True
		    
		    Select Case oMsgDlg.ShowModal()
		    Case oMsgDlg.ActionButton
		      Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    End Select
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OK_IsInfo
		    oMsgDlg.IconType = MessageDialog.IconTypes.Note
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Ok"
		    oMsgDlg.ActionButton.Default = True
		    
		    Call oMsgDlg.ShowModal()
		    Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OK_IsError
		    oMsgDlg.IconType = MessageDialog.IconTypes.Stop
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Ok"
		    oMsgDlg.ActionButton.Default = True
		    
		    Call oMsgDlg.ShowModal()
		    Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    
		  Case constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		    oMsgDlg.IconType = MessageDialog.IconTypes.Caution
		    
		    oMsgDlg.ActionButton.Visible = True
		    oMsgDlg.ActionButton.Caption = "Ok"
		    oMsgDlg.ActionButton.Default = True
		    
		    Call oMsgDlg.ShowModal()
		    Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    
		  End Select
		  
		  Return TaskDialogCommonButtonFlags.Error
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Show_TaskDialog() As TaskDialogCommonButtonFlags
		  #If TargetWindows Then
		    // https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nf-commctrl-taskdialog
		    
		    Soft Declare Function TaskDialog Lib "ComCtl32" ( parent As Ptr, hInstance As Integer, title As WString, mainInstruction As WString, content As WString, buttons As Integer, icon As TaskDialogIcon, ByRef retButton As TaskDialogButtonID ) As Integer
		    
		    If Not System.IsFunctionAvailable("TaskDialog", "ComCtl32") Then Return TaskDialogCommonButtonFlags.Error
		    
		    Var iRet As TaskDialogButtonID
		    Var ptrHandle As Ptr
		    If (ShowInWindow <> Nil) Then ptrHandle = ShowInWindow.Handle
		    
		    Var iCommonButtonFlags As Integer
		    If (CommonButtonFlags = CType(TaskDialogCommonButtonFlags.None, Integer)) Then
		      iCommonButtonFlags = Me.Get_CommonButtonFlags_Set(Buttons_Icon_Set)
		    Else
		      iCommonButtonFlags = CType(CommonButtonFlags, Integer)
		    End If
		    
		    Var iIcon As TaskDialogIcon
		    If (Icon = TaskDialogIcon.None) Then
		      iIcon = Me.Get_Icon_Set(Buttons_Icon_Set)
		    Else
		      iIcon = Icon
		    End If
		    
		    If (iIcon = TaskDialogIcon.Question) Then iIcon = TaskDialogIcon.TD_INFORMATION_ICON
		    
		    If (TaskDialog(ptrHandle, 0, WindowTitle.ReplaceLineEndings(" ").Trim, MainInstruction.ReplaceLineEndings(" ").Trim, Content.Trim, iCommonButtonFlags, iIcon, iRet) <> 0) Then Return TaskDialogCommonButtonFlags.Error
		    
		    Select Case iRet
		    Case TaskDialogButtonID.IDOK
		      Return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Case TaskDialogButtonID.IDCANCEL
		      Return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    Case TaskDialogButtonID.IDRETRY
		      Return TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON
		    Case TaskDialogButtonID.IDYES
		      Return TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    Case TaskDialogButtonID.IDNO
		      Return TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		    Case TaskDialogButtonID.IDCLOSE
		      Return TaskDialogCommonButtonFlags.TDCBF_CLOSE_BUTTON
		    Else
		      Return TaskDialogCommonButtonFlags.Error
		    End Select
		    
		  #EndIf
		  
		  Return TaskDialogCommonButtonFlags.Error
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UTF16String2MemoryBlock(psText As String) As MemoryBlock
		  psText = ConvertEncoding(psText, Encodings.UTF16).Trim
		  
		  Var mb As New MemoryBlock((psText.Length + 1) * 2)
		  mb.WString( 0 ) = psText
		  
		  Return mb
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Buttons_Icon_Set As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CommonButtonFlags As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Content As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebTD_Available As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Icon As TaskDialogIcon = TaskDialogIcon.None
	#tag EndProperty

	#tag Property, Flags = &h0
		MainInstruction As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ShowInWindow As DesktopWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		WindowTitle As String
	#tag EndProperty


	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError, Type = Double, Dynamic = False, Default = \"9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion, Type = Double, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_OK_IsError, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_OK_IsInfo, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_OK_IsWarning, Type = Double, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_YesNo, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constTaskDialog_CommonButtonFlag_Set_YesNoCancel, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Buttons_Icon_Set"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CommonButtonFlags"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
			Name="WindowTitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Visible=false
			Group="Behavior"
			InitialValue="TaskDialogIcon.None"
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
