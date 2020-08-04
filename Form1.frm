VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Membekukan Form"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1440
      TabIndex        =   1
      Top             =   1560
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1440
      TabIndex        =   0
      Top             =   2040
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    lhSysMenu = GetSystemMenu(Me.hwnd, False)
    lRetVal = RemoveMenu(lhSysMenu, SC_MOVE, MF_BYCOMMAND)
    Command1.Enabled = False
    Command2.Enabled = True
End Sub

Private Sub Command2_Click()
    lhSysMenu = GetSystemMenu(Me.hwnd, True)
    lRetVal = RemoveMenu(lhSysMenu, SC_MOVE, MF_BYCOMMAND)
    Command1.Enabled = True
    Command2.Enabled = False
End Sub

Private Sub Form_Load()
    Command2.Caption = "Off"
    Command1.Caption = "On"
    Command1.Enabled = True
    Command2.Enabled = False
End Sub
