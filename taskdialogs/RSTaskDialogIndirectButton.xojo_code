#tag Class
Protected Class RSTaskDialogIndirectButton
	#tag CompatibilityFlags = TargetHasGUI
	#tag Property, Flags = &h0
		Caption As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CaptionExplanation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Default As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebTD_Available As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ID As TaskDialogButtonID
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Caption"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaptionExplanation"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Default"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			Type="TaskDialogButtonID"
			EditorType="Enum"
			#tag EnumValues
				"1 - IDOK"
				"2 - IDCANCEL"
				"3 - IDABORT"
				"4 - IDRETRY"
				"5 - IDIGNORE"
				"6 - IDYES"
				"7 - IDNO"
				"8 - IDCLOSE"
				"0 - None"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
