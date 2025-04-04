#tag DesktopWindow
Begin DesktopWindow wndAdvTaskDialog
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   4
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   295
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   295
   MinimumWidth    =   670
   Resizeable      =   False
   Title           =   "Task Dialog (Advanced)"
   Type            =   0
   Visible         =   True
   Width           =   670
   Begin DesktopLabel labTaskDialogTitle
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Title:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextField edtTaskDialogTitle
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Task Title"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogText
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Text:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextField edtTaskDialogText
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This is the Main Instruction of the Task."
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogExplanation
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Explanation:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextArea edtTaskDialogExplanation
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      Enabled         =   True
      Format          =   ""
      Height          =   60
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Some additional information about the Task to be performed.\nAnd another Line of additional information."
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   70
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      UseFocusRing    =   True
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogType
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "MsgBox Type:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   135
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopPopupMenu lstTaskDialogType
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   150
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   135
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin DesktopLabel labTaskDialogIndirectHints11
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   80
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   True
      Left            =   312
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "(MsgBox Type): Icon gets set according to the Type-constant\r\n(Icon): TaskDialog uses this icon (ignored if MsgBox is shown)\r\nNote: Question-Icon is no longer available in TaskDialogs."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   135
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   338
   End
   Begin DesktopLabel labTaskDialogIcon
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Icon:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   165
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   118
   End
   Begin DesktopPopupMenu lstTaskDialogIcon
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   150
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   165
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin DesktopButton btnTaskDialog
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "TaskDialog"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   219
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopLabel labTaskDialogResult
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Result:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   220
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectHints1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   True
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "[TaskDialog available] (Windows Vista and newer): shows the TaskDialog with your settings\n[TaskDialog not available]: shows a MessageBox instead"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   245
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   500
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.Title = Self.Title + " v" + App.MajorVersion.ToString + "." + App.MinorVersion.ToString + "." + App.BugVersion.ToString
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub Show_TaskDialog()
		  '---------------------------------------------------------------------------------------------
		  'This Example shows how to use the RSTaskDialog
		  '
		  'we don't use all the possibilities... it's just a demo!
		  '
		  '-> so your windows users get a nice dialog, while osx/linux/winxp gets a MsgBox
		  '---------------------------------------------------------------------------------------------
		  
		  'create TaskDialog
		  Var oTaskDialog As New RSTaskDialog()
		  
		  'set properties
		  oTaskDialog.WindowTitle =  edtTaskDialogTitle.Text
		  oTaskDialog.MainInstruction = edtTaskDialogText.Text
		  oTaskDialog.Content = edtTaskDialogExplanation.Text
		  
		  'Buttons and Icon: get a predefindes set
		  '                  if this is set to a RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_ - constant, it will use this ones
		  'Warning: The Fallback to MsgBox is NOT supported if you don't assign a constant such as: RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_YesNo
		  oTaskDialog.Buttons_Icon_Set = lstTaskDialogType.RowTagAt(lstTaskDialogType.SelectedRowIndex)
		  
		  'Note: you could also set explicitly what you'd like (overriding the Set above)
		  
		  'oTaskDialog.CommonButtonFlags = (TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON or TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON)
		  'oTaskDialog.Icon = TaskDialogIcon.TD_SHIELD_ICON
		  
		  oTaskDialog.Icon = lstTaskDialogIcon.RowTagAt(lstTaskDialogIcon.SelectedRowIndex)  'in the demo, we allow to override the icon
		  
		  '---------------------------------------------------
		  'show dialog
		  '---------------------------------------------------
		  Var ret As TaskDialogCommonButtonFlags
		  ret = oTaskDialog.Show()
		  
		  'display the result
		  labTaskDialogResult.Text = "Result: " + Me.TaskDialogCommonButtonFlag_Caption(ret)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TaskDialogCommonButtonFlag_Caption(piTDCommonButtonFlag As TaskDialogCommonButtonFlags) As String
		  Select Case piTDCommonButtonFlag
		  Case TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		    Return "Cancel"
		  Case TaskDialogCommonButtonFlags.TDCBF_CLOSE_BUTTON
		    Return "Close"
		  Case TaskDialogCommonButtonFlags.TDCBF_NO_BUTTON
		    Return "No"
		  Case TaskDialogCommonButtonFlags.TDCBF_OK_BUTTON
		    Return "Ok"
		  Case TaskDialogCommonButtonFlags.TDCBF_RETRY_BUTTON
		    Return "Retry"
		  Case TaskDialogCommonButtonFlags.TDCBF_YES_BUTTON
		    Return "Yes"
		  Else 'e.g. TaskDialogCommonButtonFlags.Error
		    Return "(Error)"
		  End Select
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag Events lstTaskDialogType
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("Yes - No")
		  Me.AddRow("Yes - No - Cancel")
		  Me.AddRow("Retry - Cancel (Warning)")
		  Me.AddRow("OK - Cancel (Info)")
		  Me.AddRow("OK - Cancel (Question)")
		  Me.AddRow("OK - Cancel (Warning)")
		  Me.AddRow("OK - Cancel (Error)")
		  Me.AddRow("OK (Info)")
		  Me.AddRow("OK (Error)")
		  Me.AddRow("OK (Warning)")
		  Me.SelectedRowIndex = 0
		  
		  Me.RowTagAt(0) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_YesNo
		  Me.RowTagAt(1) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_YesNoCancel
		  Me.RowTagAt(2) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_RetryCancel_Warning
		  Me.RowTagAt(3) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsInfo
		  Me.RowTagAt(4) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsQuestion
		  Me.RowTagAt(5) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsWarning
		  Me.RowTagAt(6) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OKCancel_IsError
		  Me.RowTagAt(7) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsInfo
		  Me.RowTagAt(8) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsError
		  Me.RowTagAt(9) = RSTaskDialog.constTaskDialog_CommonButtonFlag_Set_OK_IsWarning
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTaskDialogIcon
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("(MsgBox Type)")
		  Me.AddRow("Error")
		  Me.AddRow("Information")
		  Me.AddRow("Shield")
		  Me.AddRow("Warning")
		  Me.SelectedRowIndex = 0
		  
		  Me.RowTagAt(0) = TaskDialogIcon.None
		  Me.RowTagAt(1) = TaskDialogIcon.TD_ERROR_ICON
		  Me.RowTagAt(2) = TaskDialogIcon.TD_INFORMATION_ICON
		  Me.RowTagAt(3) = TaskDialogIcon.TD_SHIELD_ICON
		  Me.RowTagAt(4) = TaskDialogIcon.TD_WARNING_ICON
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnTaskDialog
	#tag Event
		Sub Pressed()
		  Self.Show_TaskDialog()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
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
		Name="Interfaces"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
