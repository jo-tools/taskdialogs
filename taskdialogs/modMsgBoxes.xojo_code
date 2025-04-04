#tag Module
Module modMsgBoxes
	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Error(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Select Case oTaskDialog.Show()
		  Case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Return True
		  Else
		    Return False
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Info(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Select Case oTaskDialog.Show()
		  Case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Return True
		  Else
		    Return False
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Question(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Select Case oTaskDialog.Show()
		  Case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Return True
		  Else
		    Return False
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_OKCancel_Warning(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Select Case oTaskDialog.Show()
		  Case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Return True
		  Else
		    Return False
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgBox_OK_Error(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil)
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsError
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Call oTaskDialog.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgBox_OK_Info(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil)
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsInfo
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Call oTaskDialog.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgBox_OK_Warning(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil)
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Call oTaskDialog.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_RetryCancel_Warning(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Select Case oTaskDialog.Show()
		  Case TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON
		    Return True
		  Else
		    Return False
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_YesNo(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_YesNo
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Select Case oTaskDialog.Show()
		  Case TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    Return True
		  Else
		    Return False
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MsgBox_YesNoCancel(psTitle As String, psText As String, psExplanation As String, poShowWithinWindow As DesktopWindow = nil) As Integer
		  Var oTaskDialog As New RSTaskDialog
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  oTaskDialog.Buttons_Icon_Set = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  
		  Select Case oTaskDialog.Show()
		  Case TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    Return 1
		  Case TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		    Return 2
		  Else
		    Return 0
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TaskDialog_BtnCaption(psCaption As String, ByRef paAltChars() As String) As String
		  #If TargetWindows Then
		    If (InStr(psCaption, "&") > 0) And (paAltChars.IndexOf(Mid(psCaption, InStr(psCaption, "&") + 1, 1)) < 0) Then
		      paAltChars.Add(Mid(psCaption, InStr(psCaption, "&") + 1, 1))
		      Return psCaption
		    End If
		    psCaption = ReplaceAll(psCaption, "&", "")
		    For i As Integer = 1 To Len(psCaption) - 1
		      If (paAltChars.IndexOf(Mid(psCaption, i, 1)) < 0) Then
		        paAltChars.Add(Mid(psCaption, i, 1))
		        psCaption = Mid(psCaption, 1, i-1) + "&" + Mid(psCaption, i, Len(psCaption) - i + 1)
		        Return psCaption
		      End If
		    Next
		    Return psCaption
		    
		  #Else
		    #Pragma unused paAltChars
		    Return psCaption.ReplaceAll("&", "")
		    
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TaskDialog_OneOption(psTitle As String, piIcon As MessageDialog.IconTypes, psText As String, psExplanation As String, psAction As String, poShowWithinWindow As DesktopWindow = nil) As Boolean
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
		  Select Case TaskDialog_TwoOptions(psTitle, piIcon, psText, psExplanation, psAction, "", True, poShowWithinWindow)
		  Case 1
		    Return True
		  Else
		    Return False
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TaskDialog_TwoOptions(psTitle As String, piIcon As MessageDialog.IconTypes, psText As String, psExplanation As String, psDefaultAction As String, psSecondAction As String, pbCancel As Boolean, poShowWithinWindow As DesktopWindow = nil) As Integer
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
		  Var bAlternated As Boolean
		  psDefaultAction = psDefaultAction.Trim
		  psSecondAction = psSecondAction.Trim
		  If (psDefaultAction = "") Then
		    bAlternated = True
		    psDefaultAction = psSecondAction
		    psSecondAction = ""
		  End If
		  
		  Var sAltChars() As String
		  If pbCancel Then sAltChars.Add("c")
		  
		  Var oTaskDialog As New RSTaskDialogIndirect
		  oTaskDialog.WindowTitle = psTitle
		  oTaskDialog.MainInstruction = psText
		  oTaskDialog.Content = psExplanation
		  Select Case piIcon
		  Case MessageDialog.IconTypes.Note
		    oTaskDialog.MainIcon = TaskDialogIcon.TD_INFORMATION_ICON
		  Case MessageDialog.IconTypes.Caution
		    oTaskDialog.MainIcon = TaskDialogIcon.TD_WARNING_ICON
		  Case MessageDialog.IconTypes.Stop
		    oTaskDialog.MainIcon = TaskDialogIcon.TD_ERROR_ICON
		  Case MessageDialog.IconTypes.Question
		    oTaskDialog.MainIcon = TaskDialogIcon.Question
		  Else
		    oTaskDialog.MainIcon = TaskDialogIcon.None
		  End Select
		  
		  oTaskDialog.ShowInWindow = poShowWithinWindow
		  Var oButtons() As RSTaskDialogIndirectButton
		  Var oButton As RSTaskDialogIndirectButton
		  If (psDefaultAction <> "") Then
		    oButton = New RSTaskDialogIndirectButton
		    oButton.Caption = TaskDialog_BtnCaption(psDefaultAction, sAltChars)
		    oButton.ID = TaskDialogButtonID.IDYES
		    oButton.Default = True
		    oButtons.Add(oButton)
		  End If
		  If (psSecondAction <> "") Then
		    oButton = New RSTaskDialogIndirectButton
		    oButton.Caption = TaskDialog_BtnCaption(psSecondAction, sAltChars)
		    oButton.ID = TaskDialogButtonID.IDNO
		    oButton.Default = False
		    oButtons.Add(oButton)
		  End If
		  If pbCancel Then
		    oTaskDialog.CommonButtonFlags = TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		  Else
		    oTaskDialog.CommonButtonFlags = TaskDialogCommonButtonFlags.None
		  End If
		  oTaskDialog.Buttons = oButtons
		  oTaskDialog.Flags = TaskDialogFlags.TDF_USE_COMMAND_LINKS
		  Var retButton, retRButton As TaskDialogButtonID
		  Var bFlagChecked As Boolean
		  oTaskDialog.ShowModalWithin(retButton, retRButton, bFlagChecked)
		  
		  Select Case retButton
		  Case TaskDialogButtonID.IDYES
		    If bAlternated Then Return 2
		    Return 1
		  Case TaskDialogButtonID.IDNO
		    Return 2
		  Else
		    Return 0
		  End Select
		  
		End Function
	#tag EndMethod


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
