VERSION 5.00
Begin VB.Form Form9 
   BorderStyle     =   0  'None
   ClientHeight    =   3090
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   LinkTopic       =   "Form9"
   MouseIcon       =   "Form9.frx":0000
   MousePointer    =   99  'Custom
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5
      Left            =   1740
      Top             =   1305
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   525
      Left            =   2190
      Top             =   2115
      Width           =   630
   End
   Begin VB.Image Image1 
      Height          =   1335
      Left            =   240
      MouseIcon       =   "Form9.frx":014A
      MousePointer    =   99  'Custom
      Picture         =   "Form9.frx":0294
      Stretch         =   -1  'True
      Top             =   480
      Width           =   735
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Sub Form_Load()
On Error Resume Next
With Shape1
.Height = Screen.Height
.Width = Screen.Width
.Left = 0
.Top = 0
End With
Timer1.Enabled = True
HWND_TOPMOST = -1
SWP_NOSIZE = &H1
SWP_NOREDRAW = &H8
SWP_NOMOVE = &H2
SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, Me.Width, Me.Height, SWP_NOMOVE Or SWP_NOSIZE
Image1.Top = 0
Image1.Left = 0
Image1.Height = Screen.Height
Image1.Width = Screen.Width
Me.Height = Screen.Height
Me.Width = Screen.Width
End Sub
Private Sub Form_DblClick()
Unload Me
End Sub
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 27 Then Unload Me
End Sub
Private Sub Image1_DblClick()
Unload Me
End Sub
Private Sub Timer1_Timer()
On Error Resume Next
Shape1.Left = Shape1.Left + 100
If Shape1.Left = Screen.Width + 10 Then Timer1.Enabled = False
End Sub
