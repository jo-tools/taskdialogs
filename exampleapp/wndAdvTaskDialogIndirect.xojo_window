#tag DesktopWindow
Begin DesktopWindow wndAdvTaskDialogIndirect
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
   Height          =   600
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1958432767
   MenuBarVisible  =   True
   MinimumHeight   =   600
   MinimumWidth    =   670
   Resizeable      =   False
   Title           =   "Task Dialog Indirect (Advanced)"
   Type            =   0
   Visible         =   True
   Width           =   670
   Begin DesktopLabel labTaskDialogIndirectTitle
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextField edtTaskDialogIndirectTitle
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Task Title"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectMainInstruction
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      Text            =   "Main Instruction:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   45
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextField edtTaskDialogIndirectMainInstruction
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This is the Main Instruction of the Task."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   45
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectContent
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      Text            =   "Content:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextArea edtTaskDialogIndirectContent
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   40
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Some additional information about the Task to be performed.\nAnd another Line of additional information."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   70
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectVerify
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      Text            =   "Verify (checkbox):"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   115
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextField edtTaskDialogIndirectVerify
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Don't ask again"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   115
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectExpanded
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Expanded Content:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   140
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextArea edtTaskDialogIndirectExpanded
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   40
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Some more ideas about the Content:\r\n- do this?\n- or do that?"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   140
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectCollapsedControlText
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "CollapsedControlText:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   185
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextField edtTaskDialogIndirectCollapsedControlText
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Why do we need to perform this Task?"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   185
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectExpandedControlText
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ExpandedControlText:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   210
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextArea edtTaskDialogIndirectExpandedControlText
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   40
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "You've expanded the Collapsed Control Text.\nSo here you are: This is some more information about why we need to perform this Task."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   210
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectFooter
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Footer:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   255
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopTextField edtTaskDialogIndirectFooter
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This is an Example of TaskDialogIndirect."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   255
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectButton1
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Button 1:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   280
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   55
   End
   Begin DesktopPopupMenu lstTaskDialogIndirectButtonID1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   280
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   58
   End
   Begin DesktopTextField edtTaskDialogIndirectButtonCaption1
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Task 1"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   280
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   100
   End
   Begin DesktopTextArea edtTaskDialogIndirectButtonExplanation1
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   40
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   260
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Just an explanation, in case you're choosing Task 1."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   280
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   150
   End
   Begin DesktopLabel labTaskDialogIndirectShowButtons
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   428
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Button-Type:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   281
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopPopupMenu lstTaskDialogIndirectShowButtons
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   520
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   280
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   130
   End
   Begin DesktopLabel labTaskDialogIndirectButton2
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Button 2:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   325
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   55
   End
   Begin DesktopPopupMenu lstTaskDialogIndirectButtonID2
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   325
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   58
   End
   Begin DesktopTextField edtTaskDialogIndirectButtonCaption2
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Task 2"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   325
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   100
   End
   Begin DesktopTextArea edtTaskDialogIndirectButtonExplanation2
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   40
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   260
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Just an explanation, in case you're choosing Task 2."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   325
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   150
   End
   Begin DesktopLabel labTaskDialogIndirectButtonDefault
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   428
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Default:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   325
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopRadioButton radTaskDialogIndirectDefaultButton1
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   " Button 1 "
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   520
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   325
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   130
   End
   Begin DesktopRadioButton radTaskDialogIndirectDefaultButton2
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   " Button 2 "
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   520
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   350
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   130
   End
   Begin DesktopLabel labTaskDialogIndirectButton3
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Button 3:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   370
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   55
   End
   Begin DesktopPopupMenu lstTaskDialogIndirectButtonID3
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   370
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   58
   End
   Begin DesktopTextField edtTaskDialogIndirectButtonCaption3
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   150
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Cancel"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   370
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   100
   End
   Begin DesktopTextArea edtTaskDialogIndirectButtonExplanation3
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   40
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   260
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Just an explanation, in case you're choosing to Cancel."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   370
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   150
   End
   Begin DesktopRadioButton radTaskDialogIndirectDefaultButton3
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   " Button 3 "
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   520
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   375
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   130
   End
   Begin DesktopLabel labTaskDialogIndirectIcon
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Icons:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   415
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopLabel labTaskDialogIndirectMainIcon
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Main:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   415
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   96
   End
   Begin DesktopPopupMenu lstTaskDialogIndirectMainIcon
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   260
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   415
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin DesktopLabel labTaskDialogIndirectButtonHint
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   35
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   428
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Note: For simplicity of the Demo, we use the same Buttons as RadioButtons. Of course you can create a different RadioButton-set..."
      TextAlignment   =   0
      TextColor       =   &c55555500
      Tooltip         =   ""
      Top             =   415
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   222
   End
   Begin DesktopLabel labTaskDialogIndirectFooterIcon
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Footer:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   440
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   96
   End
   Begin DesktopPopupMenu lstTaskDialogIndirectFooterIcon
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   260
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   440
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin DesktopButton btnTaskDialogIndirect
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "TaskDialogIndirect"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   41
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   482
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopLabel labTaskDialogIndirectResult
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   42
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Result:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   482
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   500
   End
   Begin DesktopLabel labTaskDialogIndirectHints
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   40
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
      TabIndex        =   43
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "[TaskDialogIndirect available] (Windows Vista and newer): shows the TaskDialogIndirect with your settings\n[TaskDialogIndirect not available]: shows a MessageDialog instead (uses only bold items)"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   507
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   500
   End
   Begin DesktopButton btnMessageDialog
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "(MessageDialog)"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   44
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   547
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopLabel labTaskDialogIndirectHints2
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   45
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
      TabIndex        =   45
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Builds a MessageDialog, but shows it with .ShowAsTaskDialog instead of .ShowModal. \r\nNote: for the sake of simplicity, we assign the MessageDialogButtons like this: Button1=ActionButton, Button2=AlternateActionButton, Button3=CancelButton"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   547
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   500
   End
   Begin DesktopSeparator Separator1
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   4
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   40
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   472
      Transparent     =   True
      Visible         =   True
      Width           =   670
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub Show_MessageDialog()
		  '-----------------------------------------------------------------------------------------------------------
		  'This Example shows how to use the RSTaskDialogIndirect as a substitution for MessageDialog
		  '
		  'we only use the items that are available for both.
		  '-> so your windows users get a nice dialog, while osx/linux/winxp gets the MessageDialog
		  '-----------------------------------------------------------------------------------------------------------
		  ' to use it, simply replace your (MessageDialog).ShowModalWithin(Parent) with (MessageDialog).ShowAsTaskDialog_ModalWithin(Parent)
		  '-----------------------------------------------------------------------------------------------------------
		  
		  'Note: for the sake of simplicity, we assign the MessageDialogButtons like this:
		  '      (no exception, no fancy matching)
		  ' - Button1: ActionButton
		  ' - Button2: AlternateActionButton
		  ' - Button3: CancelButton
		  
		  Var oDlg As New MessageDialog
		  oDlg.Title = edtTaskDialogIndirectTitle.Text
		  oDlg.Message = edtTaskDialogIndirectMainInstruction.Text
		  oDlg.Explanation = edtTaskDialogIndirectContent.Text
		  
		  Select Case lstTaskDialogIndirectMainIcon.RowTagAt(lstTaskDialogIndirectMainIcon.SelectedRowIndex)
		  Case TaskDialogIcon.None
		    oDlg.IconType = MessageDialog.IconTypes.None
		  Case TaskDialogIcon.TD_ERROR_ICON
		    oDlg.IconType = MessageDialog.IconTypes.Stop
		  Case TaskDialogIcon.TD_INFORMATION_ICON
		    oDlg.IconType = MessageDialog.IconTypes.Note
		  Case TaskDialogIcon.TD_SHIELD_ICON
		    oDlg.IconType = MessageDialog.IconTypes.Note
		  Case TaskDialogIcon.TD_WARNING_ICON
		    oDlg.IconType = MessageDialog.IconTypes.Caution
		  Else
		    oDlg.IconType = MessageDialog.IconTypes.None
		  End Select
		  
		  If (edtTaskDialogIndirectButtonCaption1.Text <> "") Then
		    oDlg.ActionButton.Visible = True
		    oDlg.ActionButton.Caption = edtTaskDialogIndirectButtonCaption1.Text
		    oDlg.ActionButton.Cancel = (TaskDialogButtonID.IDCANCEL = lstTaskDialogIndirectButtonID1.RowTagAt(lstTaskDialogIndirectButtonID1.SelectedRowIndex))
		    If radTaskDialogIndirectDefaultButton1.Value Then oDlg.ActionButton.Default = True
		  End If
		  If (edtTaskDialogIndirectButtonCaption2.Text <> "") Then
		    oDlg.AlternateActionButton.Visible = True
		    oDlg.AlternateActionButton.Caption = edtTaskDialogIndirectButtonCaption2.Text
		    oDlg.AlternateActionButton.Cancel = (TaskDialogButtonID.IDCANCEL = lstTaskDialogIndirectButtonID2.RowTagAt(lstTaskDialogIndirectButtonID2.SelectedRowIndex))
		    If radTaskDialogIndirectDefaultButton2.Value Then oDlg.AlternateActionButton.Default = True
		  End If
		  If (edtTaskDialogIndirectButtonCaption3.Text <> "") Then
		    oDlg.CancelButton.Visible = True
		    oDlg.CancelButton.Caption = edtTaskDialogIndirectButtonCaption3.Text
		    oDlg.CancelButton.Cancel = (TaskDialogButtonID.IDCANCEL = lstTaskDialogIndirectButtonID3.RowTagAt(lstTaskDialogIndirectButtonID3.SelectedRowIndex))
		    If radTaskDialogIndirectDefaultButton3.Value Then oDlg.CancelButton.Default = True
		  End If
		  
		  'show and display the result
		  'select case oDlg.ShowModal()                //replace this one
		  Select Case oDlg.ShowAsTaskDialog_Modal()    //with this
		  Case oDlg.ActionButton
		    labTaskDialogIndirectResult.Text = "MessageDialog-Result: ActionButton"
		  Case oDlg.AlternateActionButton
		    labTaskDialogIndirectResult.Text = "MessageDialog-Result: AlternateActionButton"
		  Case oDlg.CancelButton
		    labTaskDialogIndirectResult.Text = "MessageDialog-Result: CancelButton"
		  Else
		    labTaskDialogIndirectResult.Text = "MessageDialog-Result: (Error)"
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Show_TaskDialogIndirect()
		  '---------------------------------------------------------------------------------------------
		  'This Example shows how to use the RSTaskDialogIndirect
		  '
		  'we don't use all the possibilities... it's just a demo!
		  '
		  '-> so your windows users get a nice dialog, while osx/linux/winxp gets the MessageDialog
		  '   (available only with items in bold)
		  '---------------------------------------------------------------------------------------------
		  
		  'create TaskDialogIndirect
		  Var dlgTaskDialogIndirect As New RSTaskDialogIndirect
		  'set properties
		  dlgTaskDialogIndirect.WindowTitle = edtTaskDialogIndirectTitle.Text
		  dlgTaskDialogIndirect.MainInstruction = edtTaskDialogIndirectMainInstruction.Text
		  dlgTaskDialogIndirect.Content = edtTaskDialogIndirectContent.Text
		  dlgTaskDialogIndirect.MainIcon = lstTaskDialogIndirectMainIcon.RowTagAt(lstTaskDialogIndirectMainIcon.SelectedRowIndex)
		  
		  dlgTaskDialogIndirect.Verify = edtTaskDialogIndirectVerify.Text
		  dlgTaskDialogIndirect.Expanded = edtTaskDialogIndirectExpanded.Text
		  dlgTaskDialogIndirect.ExpandedControlText = edtTaskDialogIndirectExpandedControlText.Text
		  dlgTaskDialogIndirect.CollapsedControlText = edtTaskDialogIndirectCollapsedControlText.Text
		  dlgTaskDialogIndirect.Footer = edtTaskDialogIndirectFooter.Text
		  dlgTaskDialogIndirect.FooterIcon = lstTaskDialogIndirectFooterIcon.RowTagAt(lstTaskDialogIndirectFooterIcon.SelectedRowIndex)
		  
		  dlgTaskDialogIndirect.ShowInWindow = Self
		  dlgTaskDialogIndirect.Flags = TaskDialogFlags.NoFlag
		  If (lstTaskDialogIndirectShowButtons.SelectedRowText = "Command Links") Then
		    'set Flag for CommandLinks (instead of Buttons)
		    dlgTaskDialogIndirect.Flags = TaskDialogFlags.TDF_USE_COMMAND_LINKS
		  End If
		  dlgTaskDialogIndirect.CommonButtonFlags = TaskDialogCommonButtonFlags.None
		  
		  'create buttons
		  'note: in the demo, we always set the first button as default
		  Var oButtons() As RSTaskDialogIndirectButton
		  Var oButton As RSTaskDialogIndirectButton
		  If (edtTaskDialogIndirectButtonCaption1.Text.Trim <> "") Then
		    oButton = New RSTaskDialogIndirectButton
		    oButton.Caption = edtTaskDialogIndirectButtonCaption1.Text
		    oButton.CaptionExplanation = edtTaskDialogIndirectButtonExplanation1.Text
		    oButton.ID = lstTaskDialogIndirectButtonID1.RowTagAt(lstTaskDialogIndirectButtonID1.SelectedRowIndex)
		    If radTaskDialogIndirectDefaultButton1.Value Then oButton.Default = True
		    oButtons.Add(oButton)
		  End If
		  If (edtTaskDialogIndirectButtonCaption2.Text.Trim <> "") Then
		    oButton = New RSTaskDialogIndirectButton
		    oButton.Caption = edtTaskDialogIndirectButtonCaption2.Text
		    oButton.CaptionExplanation = edtTaskDialogIndirectButtonExplanation2.Text
		    oButton.ID = lstTaskDialogIndirectButtonID2.RowTagAt(lstTaskDialogIndirectButtonID2.SelectedRowIndex)
		    If radTaskDialogIndirectDefaultButton2.Value Then oButton.Default = True
		    oButtons.Add(oButton)
		  End If
		  
		  Var bThirdButtonAsCommandLinksCancel As Boolean = False
		  If (lstTaskDialogIndirectShowButtons.SelectedRowText = "Command Links") Then
		    If (TaskDialogButtonID.IDCANCEL = lstTaskDialogIndirectButtonID3.RowTagAt(lstTaskDialogIndirectButtonID3.SelectedRowIndex)) Then
		      '3rd Button is set to 'Cancel' -> show as Cancel Button, below the Command Links
		      dlgTaskDialogIndirect.CommonButtonFlags = TaskDialogCommonButtonFlags.TDCBF_CANCEL_BUTTON
		      bThirdButtonAsCommandLinksCancel = True
		    End If
		  End If
		  If (Not bThirdButtonAsCommandLinksCancel) And (edtTaskDialogIndirectButtonCaption3.Text.Trim <> "") Then
		    oButton = New RSTaskDialogIndirectButton
		    oButton.Caption = edtTaskDialogIndirectButtonCaption3.Text
		    oButton.CaptionExplanation = edtTaskDialogIndirectButtonExplanation3.Text
		    oButton.ID = lstTaskDialogIndirectButtonID3.RowTagAt(lstTaskDialogIndirectButtonID3.SelectedRowIndex)
		    If radTaskDialogIndirectDefaultButton3.Value Then oButton.Default = True
		    oButtons.Add(oButton)
		  End If
		  
		  dlgTaskDialogIndirect.Buttons = oButtons
		  
		  If (lstTaskDialogIndirectShowButtons.SelectedRowText = "Buttons + RadioButtons") Then
		    'Note: we're going to the the buttons for BOTH Buttons and RadioButtons
		    '      of course you could create a different Button-Set for the RadioButtons...
		    dlgTaskDialogIndirect.RadioButtons = oButtons
		  End If
		  
		  
		  
		  'show dialog
		  Var retClickedButton As TaskDialogButtonID
		  Var retRadioButton As TaskDialogButtonID
		  Var retVerificationFlagChecked As Boolean
		  '---------------------------------------------------
		  'show dialog
		  '---------------------------------------------------
		  dlgTaskDialogIndirect.ShowModal(retClickedButton, retRadioButton, retVerificationFlagChecked)
		  '---------------------------------------------------
		  
		  
		  'display the result
		  Var sResult() As String
		  sResult.Add("Button '" + Self.TaskDialogButtonID_Caption(retClickedButton) + "'")
		  sResult.Add("RadioButton '" + Self.TaskDialogButtonID_Caption(retRadioButton) + "'")
		  If retVerificationFlagChecked Then
		    sResult.Add("VerificationFlag 'checked'")
		  Else
		    sResult.Add("VerificationFlag 'not checked'")
		  End If
		  labTaskDialogIndirectResult.Text = "Return: " + string.FromArray(sResult, ", ")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TaskDialogButtonID_Caption(poTaskDialogButtonID As TaskDialogButtonID) As String
		  Select Case poTaskDialogButtonID
		  Case TaskDialogButtonID.IDABORT
		    Return "abort"
		  Case TaskDialogButtonID.IDCANCEL
		    Return "cancel"
		  Case TaskDialogButtonID.IDCLOSE
		    Return "close"
		  Case TaskDialogButtonID.IDIGNORE
		    Return "ignore"
		  Case TaskDialogButtonID.IDNO
		    Return "no"
		  Case TaskDialogButtonID.IDOK
		    Return "ok"
		  Case TaskDialogButtonID.IDRETRY
		    Return "retry"
		  Case TaskDialogButtonID.IDYES
		    Return "yes"
		  Else
		    Return "-"
		  End Select
		  
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag Events lstTaskDialogIndirectButtonID1
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("yes")
		  Me.AddRow("no")
		  Me.AddRow("cancel")
		  Me.AddRow("ok")
		  Me.AddRow("retry")
		  Me.AddRow("abort")
		  Me.AddRow("close")
		  Me.AddRow("ignore")
		  
		  Me.SelectedRowIndex = 0
		  
		  Me.RowTagAt(0) = TaskDialogButtonID.IDYES
		  Me.RowTagAt(1) = TaskDialogButtonID.IDNO
		  Me.RowTagAt(2) = TaskDialogButtonID.IDCANCEL
		  Me.RowTagAt(3) = TaskDialogButtonID.IDOK
		  Me.RowTagAt(4) = TaskDialogButtonID.IDRETRY
		  Me.RowTagAt(5) = TaskDialogButtonID.IDABORT
		  Me.RowTagAt(6) = TaskDialogButtonID.IDCLOSE
		  Me.RowTagAt(7) = TaskDialogButtonID.IDIGNORE
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTaskDialogIndirectShowButtons
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("Buttons")
		  Me.AddRow("Buttons + RadioButtons")
		  Me.AddRow("Command Links")
		  Me.SelectedRowIndex = 2
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  #Pragma unused item
		  
		  Select Case Me.SelectedRowText
		  Case "Command Links"
		    edtTaskDialogIndirectButtonExplanation1.Enabled = True
		    edtTaskDialogIndirectButtonExplanation2.Enabled = True
		    edtTaskDialogIndirectButtonExplanation3.Enabled = True
		  Else
		    edtTaskDialogIndirectButtonExplanation1.Enabled = False
		    edtTaskDialogIndirectButtonExplanation2.Enabled = False
		    edtTaskDialogIndirectButtonExplanation3.Enabled = False
		  End Select
		  
		  Select Case Me.SelectedRowText
		  Case "Buttons + RadioButtons"
		    labTaskDialogIndirectButtonHint.Visible = True
		  Else
		    labTaskDialogIndirectButtonHint.Visible = False
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTaskDialogIndirectButtonID2
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("yes")
		  Me.AddRow("no")
		  Me.AddRow("cancel")
		  Me.AddRow("ok")
		  Me.AddRow("retry")
		  Me.AddRow("abort")
		  Me.AddRow("close")
		  Me.AddRow("ignore")
		  
		  Me.SelectedRowIndex = 1
		  
		  Me.RowTagAt(0) = TaskDialogButtonID.IDYES
		  Me.RowTagAt(1) = TaskDialogButtonID.IDNO
		  Me.RowTagAt(2) = TaskDialogButtonID.IDCANCEL
		  Me.RowTagAt(3) = TaskDialogButtonID.IDOK
		  Me.RowTagAt(4) = TaskDialogButtonID.IDRETRY
		  Me.RowTagAt(5) = TaskDialogButtonID.IDABORT
		  Me.RowTagAt(6) = TaskDialogButtonID.IDCLOSE
		  Me.RowTagAt(7) = TaskDialogButtonID.IDIGNORE
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTaskDialogIndirectButtonID3
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("yes")
		  Me.AddRow("no")
		  Me.AddRow("cancel")
		  Me.AddRow("ok")
		  Me.AddRow("retry")
		  Me.AddRow("abort")
		  Me.AddRow("close")
		  Me.AddRow("ignore")
		  
		  Me.SelectedRowIndex = 2
		  
		  Me.RowTagAt(0) = TaskDialogButtonID.IDYES
		  Me.RowTagAt(1) = TaskDialogButtonID.IDNO
		  Me.RowTagAt(2) = TaskDialogButtonID.IDCANCEL
		  Me.RowTagAt(3) = TaskDialogButtonID.IDOK
		  Me.RowTagAt(4) = TaskDialogButtonID.IDRETRY
		  Me.RowTagAt(5) = TaskDialogButtonID.IDABORT
		  Me.RowTagAt(6) = TaskDialogButtonID.IDCLOSE
		  Me.RowTagAt(7) = TaskDialogButtonID.IDIGNORE
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTaskDialogIndirectMainIcon
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("Error")
		  Me.AddRow("Information")
		  Me.AddRow("Shield")
		  Me.AddRow("Warning")
		  Me.SelectedRowIndex = 1
		  
		  Me.RowTagAt(0) = TaskDialogIcon.TD_ERROR_ICON
		  Me.RowTagAt(1) = TaskDialogIcon.TD_INFORMATION_ICON
		  Me.RowTagAt(2) = TaskDialogIcon.TD_SHIELD_ICON
		  Me.RowTagAt(3) = TaskDialogIcon.TD_WARNING_ICON
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTaskDialogIndirectFooterIcon
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow("Error")
		  Me.AddRow("Information")
		  Me.AddRow("Shield")
		  Me.AddRow("Warning")
		  Me.SelectedRowIndex = 2
		  
		  Me.RowTagAt(0) = TaskDialogIcon.TD_ERROR_ICON
		  Me.RowTagAt(1) = TaskDialogIcon.TD_INFORMATION_ICON
		  Me.RowTagAt(2) = TaskDialogIcon.TD_SHIELD_ICON
		  Me.RowTagAt(3) = TaskDialogIcon.TD_WARNING_ICON
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnTaskDialogIndirect
	#tag Event
		Sub Pressed()
		  '---------------------------------------------------------------------------------------------
		  'This Example shows how to use the RSTaskDialogIndirect
		  '
		  'we don't use all the possibilities... it's just a demo!
		  '
		  '-> so your windows users get a nice dialog, while osx/linux/winxp gets the MessageDialog
		  '   (available only with items in bold)
		  '---------------------------------------------------------------------------------------------
		  
		  Self.Show_TaskDialogIndirect()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnMessageDialog
	#tag Event
		Sub Pressed()
		  '-----------------------------------------------------------------------------------------------------------
		  'This Example shows how to use the RSTaskDialogIndirect as a substitution for MessageDialog
		  '
		  'we only use the items that are available for both.
		  '-> so your windows users get a nice dialog, while osx/linux/winxp gets the MessageDialog
		  '-----------------------------------------------------------------------------------------------------------
		  ' to use it, simply replace your (MessageDialog).ShowModalWithin(Parent) with (MessageDialog).ShowAsTaskDialog_ModalWithin(Parent)
		  '-----------------------------------------------------------------------------------------------------------
		  
		  'Note: for the sake of simplicity, we assign the MessageDialogButtons like this:
		  '      (no exception, no fancy matching)
		  ' - Button1: ActionButton
		  ' - Button2: AlternateActionButton
		  ' - Button3: CancelButton
		  
		  Self.Show_MessageDialog()
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
			"9 - Modeless Dialog"
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
		Type="ColorGroup"
		EditorType="ColorGroup"
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
		Type="DesktopMenuBar"
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
