# AniGIF-AHK
AHK wrapper for [AniGIF](https://www.codeproject.com/Articles/16970/AniGIF-a-simple-animated-GIF-custom-control).

### Usage

`AniGIF_Add(Options:="", FileName, Link:="")`
- *Options* - (Optional) Control options same as `Gui Add`
- *FileName* - The GIF filename
- *Link* - (Optional) Url to open when clicking the gif image

### Examples

```AutoHotkey
AniGIF_Add("xm w200 h200 Center BackGroundRed", "test.gif", "http://autohotkey.com")

gif2 := AniGIF_Add("xm", "test2.gif") ; Omit w and h to autosize the control
gif2.SetBkColor(0xff00ff)
gif2.LoadGifFromFile("another.gif")

Gui, Show, w400
```

### Methods
- LoadGifFromFile(FileName)
- UnloadGif()
- Zoom(bZoom := true) ; bZoom -- TRUE = Zoom In by 10%, FALSE = Zoom Out by 10%
- SetBkColor(BkColor) ; BkColor -- Color Name or RGB value
- SetHyperlink(Link)
