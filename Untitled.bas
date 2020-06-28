Sub Main
 Begin Dialog UserDialog1 60,60, 800, 500, "1999", .Enable
Text 8,10,200,20, "Job Extension:"
TextBox 8, 26, 50, 10, .FText
Text 200,10,200,20, "Heat Number:"
TextBox 200, 26, 50, 10, .HText
CheckBox 8, 56, 203, 16, "Check to display controls",. Chk1
GroupBox 8, 79, 230,70, "This is a group box:", .Group
CheckBox 18,100,189,16, "File History", .History
OKButton 500, 8, 58, 21
CancelButton 500, 32, 58, 21
 End Dialog
 Dim Dlg1 As UserDialog1
 x = Dialog( Dlg1 )
End Sub
Function Enable( ControlID$, Action%, SuppValue%)
Begin Dialog UserDialog2 160,160, 260, 188, "3", .Enable
Text 8,10,73,13, "New dialog Label:"
TextBox 8, 26, 160, 18, .FText
CheckBox 8, 56, 203, 16, "New CheckBox",. ch1
CheckBox 18,100,189,16, "Additional CheckBox", .ch2
PushButton 18, 118, 159, 16, "Push Button", .but1
OKButton 177, 8, 58, 21
CancelButton 177, 32, 58, 21
 End Dialog
 Dim Dlg2 As UserDialog2
 Dlg2.FText = "Your default string goes here"
Select Case Action%
Case 1
DlgEnable "Group", 0
DlgVisible "Chk2", 0
DlgVisible "History", 0
Case 2
If ControlID$ = "Chk1" Then
 DlgEnable "Group"
 DlgVisible "Chk2"
 DlgVisible "History"
End If
If ControlID$ = "Chk2" Then
 DlgText "History", "Push to display nested dialog"
End If
If ControlID$ = "History" Then
 Enable =1
 x = Dialog( Dlg2 )
End If
Case Else
End Select
Enable =1
End Function