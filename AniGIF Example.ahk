#NoEnv
SetWorkingDir, %A_ScriptDir%
#Include <AniGIF>

gif1 := New AniGIF("w280 h150 Center Border", "pacman.gif")
AniGIF_Add("x+50", "Flag_France.gif", "https://autohotkey.com") ; Omit w and h to autosize the control
Gui, Add, Button, xm gSetBkColor, SetBkColor
Gui, Add, Button, x+40 gZoomIn, ZoomIn
Gui, Add, Button, x+40 gZoomOut, ZoomOut
Gui, Add, Button, x+40 gUnloadGif, Unload Gif
Gui, Show, w400
return

SetBkColor:
	gif1.SetBkColor("Green")
return

ZoomIn:
	gif1.Zoom(true)
return

ZoomOut:
	gif1.Zoom(false)
return

UnloadGif:
	gif1.UnloadGif()
return

GuiClose:
ExitApp
