#tag Module
Module modMsgBoxes
	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Error(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  select case oTaskDialog.Show()
		  case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    return true
		  else
		    return false
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Info(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  select case oTaskDialog.Show()
		  case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    return true
		  else
		    return false
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Question(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  select case oTaskDialog.Show()
		  case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    return true
		  else
		    return false
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Warning(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  select case oTaskDialog.Show()
		  case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    return true
		  else
		    return false
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgBox_OK_Error(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil)
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsError
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  call oTaskDialog.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgBox_OK_Info(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil)
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsInfo
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  call oTaskDialog.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgBox_OK_Warning(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil)
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  call oTaskDialog.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_RetryCancel_Warning(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  select case oTaskDialog.Show()
		  case TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON
		    return true
		  else
		    return false
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_YesNo(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_YesNo
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  select case oTaskDialog.Show()
		  case TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    return true
		  else
		    return false
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_YesNoCancel(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Integer
		  Dim oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  select case oTaskDialog.Show()
		  case TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    return 1
		  case TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		    return 2
		  else
		    return 0
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TaskDialog_BtnCaption(psCaption As String, ByRef paAltChars() As String) As String
		  #if TargetWindows then
		    if (InStr(psCaption, "&") > 0) and (paAltChars.IndexOf(Mid(psCaption, InStr(psCaption, "&") + 1, 1)) < 0) then
		      paAltChars.Append(Mid(psCaption, InStr(psCaption, "&") + 1, 1))
		      return psCaption
		    end if
		    psCaption = ReplaceAll(psCaption, "&", "")
		    for i As Integer = 1 to Len(psCaption) - 1
		      if (paAltChars.IndexOf(Mid(psCaption, i, 1)) < 0) then
		        paAltChars.Append(Mid(psCaption, i, 1))
		        psCaption = Mid(psCaption, 1, i-1) + "&" + Mid(psCaption, i, Len(psCaption) - i + 1)
		        return psCaption
		      end if
		    next
		    return psCaption
		    
		  #else
		    #pragma unused paAltChars
		    return ReplaceAll(psCaption, "&", "")
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TaskDialog_OneOption(psTitle As String, piIcon As MsgBoxIcon, psText As String, psExplanation As String, psAction As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  '============================================================
		  '
		  ' Dialog mit 1 Optionen und Abbrechen
		  ' z.B. "Löschen / Abbrechen"
		  '
		  ' Hinweis: Diesen Aufruf NUR für 1 Auswahl mit Text.
		  '          nicht bei: (OK, Cancel)
		  ' Result:
		  '  false = Abbruch
		  '  true  = Action gewaehlt
		  '
		  '============================================================
		  
		  'NOT ThreadSafe
		  select case TaskDialog_TwoOptions(psTitle, piIcon, psText, psExplanation, psAction, "", true, poShowWithinWindow)
		  case 1
		    return true
		  else
		    return false
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TaskDialog_TwoOptions(psTitle As String, piIcon As MsgBoxIcon, psText As String, psExplanation As String, psDefaultAction As String, psSecondAction As String, pbCancel As Boolean, poShowWithinWindow As DesktopWindow = nil) As Integer
		  '============================================================
		  '
		  ' Dialog mit 2 Optionen, mit/ohne Abbrechen
		  ' z.B. "Löschen, Ausblenden / Abbrechen"
		  '
		  ' Hinweis: Diesen Aufruf NUR für 2 Auswahlen mit Text.
		  '          nicht bei: (OK, Ausblenden, Cancel)
		  ' Result:
		  '  0 = Abbruch (sofern pbCancel aktiviert)
		  '  1 = Default Action gewaehlt
		  '  2 = Second Action gewaehlt
		  '
		  '============================================================
		  
		  'NOT ThreadSafe
		  Dim bAlternated As Boolean
		  psDefaultAction = psDefaultAction.Trim
		  psSecondAction = psSecondAction.Trim
		  if (psDefaultAction = "") then
		    bAlternated = true
		    psDefaultAction = psSecondAction
		    psSecondAction = ""
		  end if
		  
		  Dim sAltChars() As String
		  if pbCancel then sAltChars.Append("c")
		  
		  Dim oTaskDialog As New RSTaskDialogIndirect
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  select case piIcon
		  case MsgBoxIcon.Note
		    oTaskDialog.MainIcon = TaskDialogIcon.TD_INFORMATION_ICON
		  case MsgBoxIcon.Caution
		    oTaskDialog.MainIcon = TaskDialogIcon.TD_WARNING_ICON
		  case MsgBoxIcon.Stop
		    oTaskDialog.MainIcon = TaskDialogIcon.TD_ERROR_ICON
		  case MsgBoxIcon.Question
		    oTaskDialog.MainIcon = TaskDialogIcon.Question
		  else
		    oTaskDialog.MainIcon = TaskDialogIcon.None
		  end select
		  
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  Dim oButtons() As RSTaskDialogIndirectButton
		  Dim oButton As RSTaskDialogIndirectButton
		  if (psDefaultAction <> "") then
		    oButton = New RSTaskDialogIndirectButton
		    oButton.Caption = TaskDialog_BtnCaption(psDefaultAction, sAltChars)
		    oButton.ID = TaskDialogButtonID.IDYES
		    oButton.Default = true
		    oButtons.Append(oButton)
		  end if
		  if (psSecondAction <> "") then
		    oButton = New RSTaskDialogIndirectButton
		    oButton.Caption = TaskDialog_BtnCaption(psSecondAction, sAltChars)
		    oButton.ID = TaskDialogButtonID.IDNO
		    oButton.Default = false
		    oButtons.Append(oButton)
		  end if
		  if pbCancel then
		    oTaskDialog.CommonButtonFlags = TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		  else
		    oTaskDialog.CommonButtonFlags = TaskDialogCommonButtonFlags.None
		  end if
		  oTaskDialog.Buttons = oButtons
		  oTaskDialog.Flags = TaskDialogFlags.TDF_USE_COMMAND_LINKS
		  Dim retButton, retRButton As TaskDialogButtonID
		  Dim bFlagChecked As Boolean
		  oTaskDialog.ShowModalWithin(retButton, retRButton, bFlagChecked)
		  
		  select case retButton
		  case TaskDialogButtonID.IDYES
		    if bAlternated then return 2
		    return 1
		  case TaskDialogButtonID.IDNO
		    return 2
		  else
		    return 0
		  end select
		  
		End Function
	#tag EndMethod


	#tag Enum, Name = MsgBoxButtonDefault, Flags = &h0
		First=0
		  Second=256
		  Third=512
		NoDefault=768
	#tag EndEnum

	#tag Enum, Name = MsgBoxButtons, Flags = &h0
		OK=0
		  OKCancel=1
		  AbortRetryIgnore=2
		  YesNoCancel=3
		  YesNo=4
		RetryCancel=5
	#tag EndEnum

	#tag Enum, Name = MsgBoxIcon, Flags = &h0
		None=0
		  Stop=16
		  Question=32
		  Caution=48
		Note=64
	#tag EndEnum

	#tag Enum, Name = MsgBoxResult, Flags = &h0
		OK=1
		  Cancel=2
		  Abort=3
		  Retry=4
		  Ignore=5
		  Yes=6
		No=7
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
