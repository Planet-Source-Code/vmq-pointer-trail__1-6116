Attribute VB_Name = "Module1"
'set mouse trails
Private Const SPI_SETMOUSETRAILS = 93
'update
Private Const SPIF_UPDATEINIFILE = &H1
Private Const SPIF_SENDWININICHANGE = &H2
'systemparameter
Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByRef lpvParam As Any, ByVal fuWinIni As Long) As Long

Sub MouseTrail(Trails As Long)
x% = SystemParametersInfo(SPI_SETMOUSETRAILS, Trails, ByVal 0&, SPIF_UPDATEINIFILE Or SPIF_SENDWININICHANGE)
End Sub

