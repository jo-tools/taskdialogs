#tag Class
Protected Class RSTaskDialog
	#tag CompatibilityFlags = TargetHasGUI
	#tag Method, Flags = &h0
		Sub Constructor()
		  #if TargetWindows then
		    ebTD_Available = System.IsFunctionAvailable("TaskDialog", "ComCtl32")
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_CommonButtonFlags_Set(piIconSet As Integer) As Integer
		  select case piIconSet
		    
		  case constTaskDialog_CommonButtonFlag_Set_YesNo
		    return CType(TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON, Integer) or CType(TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON, Integer)
		    
		  case constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		    return CType(TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON, Integer) or CType(TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON, Integer) or CType(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON, Integer)
		    
		  case constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		    return CType(TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON, Integer) or CType(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON, Integer)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo, constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError, constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion, constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		    return CType(TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON, Integer) or CType(TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON, Integer)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OK_IsInfo, constTaskDialog_CommonButtonFlag_Set_OK_IsError, constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		    return CType(TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON, Integer)
		    
		  else
		    return CType(TaskDialogCommonButtonFlags.None, Integer)
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get_Icon_Set(piIconSet As Integer) As TaskDialogIcon
		  select case piIconSet
		    
		  case constTaskDialog_CommonButtonFlag_Set_YesNo
		    return TaskDialogIcon.Question
		    
		  case constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		    return TaskDialogIcon.Question
		    
		  case constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		    return TaskDialogIcon.TD_WARNING_ICON
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo
		    return TaskDialogIcon.TD_INFORMATION_ICON
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError
		    return TaskDialogIcon.TD_ERROR_ICON
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion
		    return TaskDialogIcon.TD_INFORMATION_ICON
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		    return TaskDialogIcon.TD_WARNING_ICON
		    
		  case constTaskDialog_CommonButtonFlag_Set_OK_IsInfo
		    return TaskDialogIcon.TD_INFORMATION_ICON
		    
		  case constTaskDialog_CommonButtonFlag_Set_OK_IsError
		    return TaskDialogIcon.TD_ERROR_ICON
		    
		  case constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		    return TaskDialogIcon.TD_WARNING_ICON
		    
		  else
		    return TaskDialogIcon.None
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsAvailable() As Boolean
		  return ebTD_Available
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Show() As TaskDialogCommonButtonFlags
		  if ebTD_Available then
		    'Show TaskDialog
		    return me.Show_TaskDialog()
		  else
		    'Show MsgBox
		    return me.Show_MsgBox()
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Show_MsgBox() As TaskDialogCommonButtonFlags
		  Dim iMsgBoxResult As Integer = -1
		  Dim iMsgBoxButtons As Integer
		  Dim iMsgBoxIcon As Integer
		  
		  select case Buttons_Icon_Set
		  case constTaskDialog_CommonButtonFlag_Set_YesNo
		    iMsgBoxButtons = Integer(MsgBoxButtons.YesNo)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Question)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		    iMsgBoxButtons = Integer(MsgBoxButtons.YesNoCancel)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Question)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		    iMsgBoxButtons = Integer(MsgBoxButtons.RetryCancel)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Caution)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo
		    iMsgBoxButtons = Integer(MsgBoxButtons.OKCancel)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Note)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion
		    iMsgBoxButtons = Integer(MsgBoxButtons.OKCancel)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Question)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		    iMsgBoxButtons = Integer(MsgBoxButtons.OKCancel)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Caution)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError
		    iMsgBoxButtons = Integer(MsgBoxButtons.OKCancel)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Stop)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OK_IsInfo
		    iMsgBoxButtons = Integer(MsgBoxButtons.OK)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Note)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OK_IsError
		    iMsgBoxButtons = Integer(MsgBoxButtons.OK)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Stop)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  case constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		    iMsgBoxButtons = Integer(MsgBoxButtons.OK)
		    iMsgBoxIcon = Integer(MsgBoxIcon.Caution)
		    iMsgBoxResult = me.Show_MsgBox_Standard(iMsgBoxButtons, iMsgBoxIcon)
		    
		  else
		    'error
		  end select
		  
		  select case MsgBoxResult(iMsgBoxResult)
		  case MsgBoxResult.Abort
		    return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		  case MsgBoxResult.Cancel
		    return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		  case MsgBoxResult.Ignore
		    return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		  case MsgBoxResult.No
		    return TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		  case MsgBoxResult.OK
		    return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		  case MsgBoxResult.Retry
		    return TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON
		  case MsgBoxResult.Yes
		    return TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		  else
		    return TaskDialogCommonButtonFlags.Error
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Show_MsgBox_Standard(piMsgBoxButtons As Integer, piMsgBoxIcon As Integer) As Integer
		  Dim sMsgBoxText As String
		  if (Content = "") then
		    sMsgBoxText = Trim(MainInstruction)
		  else
		    sMsgBoxText = Trim(ReplaceLineEndings(MainInstruction, " ")) + EndOfLine + EndOfLine + Trim(ReplaceLineEndings(Content, " "))
		  end if
		  
		  return MsgBox(sMsgBoxText, (piMsgBoxButtons + piMsgBoxIcon + Integer(MsgBoxButtonDefault.First)), Trim(ReplaceLineEndings(WindowTitle, " ")))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Show_TaskDialog() As TaskDialogCommonButtonFlags
		  #if TargetWindows then
		    // https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nf-commctrl-taskdialog
		    
		    Soft Declare Function TaskDialog Lib "ComCtl32" ( parent As Ptr, hInstance As Integer, title As WString, mainInstruction As WString, content As WString, buttons As Integer, icon As TaskDialogIcon, ByRef retButton As TaskDialogButtonID ) As Integer
		    
		    if not System.IsFunctionAvailable("TaskDialog", "ComCtl32") then return TaskDialogCommonButtonFlags.Error
		    
		    Dim iRet As TaskDialogButtonID
		    Dim ptrHandle As Ptr
		    If (ShowInWindow <> Nil) Then ptrHandle = ShowInWindow.Handle
		    
		    Dim iCommonButtonFlags As Integer
		    if (CommonButtonFlags = CType(TaskDialogCommonButtonFlags.None, Integer)) then
		      iCommonButtonFlags = me.Get_CommonButtonFlags_Set(Buttons_Icon_Set)
		    else
		      iCommonButtonFlags = CType(CommonButtonFlags, Integer)
		    end if
		    
		    Dim iIcon As TaskDialogIcon
		    if (Icon = TaskDialogIcon.None) then
		      iIcon = me.Get_Icon_Set(Buttons_Icon_Set)
		    else
		      iIcon = Icon
		    end if
		    
		    if (iIcon = TaskDialogIcon.Question) then iIcon = TaskDialogIcon.TD_INFORMATION_ICON
		    
		    If (TaskDialog(ptrHandle, 0, Trim(ReplaceLineEndings(WindowTitle, " ")), Trim(ReplaceLineEndings(MainInstruction, " ")), Trim(Content), iCommonButtonFlags, iIcon, iRet) <> 0) Then Return TaskDialogCommonButtonFlags.Error
		    
		    select case iRet
		    case TaskDialogButtonID.IDOK
		      return TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    case TaskDialogButtonID.IDCANCEL
		      return TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    case TaskDialogButtonID.IDRETRY
		      return TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON
		    case TaskDialogButtonID.IDYES
		      return TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    case TaskDialogButtonID.IDNO
		      return TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		    case TaskDialogButtonID.IDCLOSE
		      return TaskDialogCommonButtonFlags.TDCBF_CLOSE_BUTTON
		    else
		      return TaskDialogCommonButtonFlags.Error
		    end select
		    
		  #endif
		  
		  return TaskDialogCommonButtonFlags.Error
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UTF16String2MemoryBlock(psText As String) As MemoryBlock
		  psText = Trim(ConvertEncoding(psText, Encodings.UTF16))
		  
		  Dim mb As MemoryBlock
		  mb = New MemoryBlock( (Len( psText ) + 1)  * 2 )
		  mb.WString( 0 ) = psText
		  
		  return mb
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
