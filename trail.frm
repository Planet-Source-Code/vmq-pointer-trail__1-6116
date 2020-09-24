VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1740
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1740
   ScaleWidth      =   4725
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Pointer Trail"
      Height          =   1455
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
      Begin VB.PictureBox Picture2 
         Height          =   310
         Left            =   960
         ScaleHeight     =   255
         ScaleWidth      =   3135
         TabIndex        =   3
         Top             =   840
         Width           =   3195
         Begin VB.HScrollBar HScroll1 
            Enabled         =   0   'False
            Height          =   255
            Left            =   0
            Max             =   7
            Min             =   2
            TabIndex        =   4
            Top             =   0
            Value           =   7
            Width           =   3135
         End
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Sh&ow pointer trails"
         Height          =   255
         Left            =   960
         TabIndex        =   2
         Top             =   480
         Width           =   1590
      End
      Begin VB.PictureBox Picture1 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   480
         Left            =   240
         Picture         =   "trail.frx":0000
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   1
         Top             =   360
         Width           =   480
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
If Check1.Value = 1 Then
HScroll1.Enabled = True
MouseTrail HScroll1.Value
Else
HScroll1.Enabled = False
MouseTrail 0
End If
End Sub

Private Sub HScroll1_Change()
MouseTrail HScroll1.Value
End Sub
