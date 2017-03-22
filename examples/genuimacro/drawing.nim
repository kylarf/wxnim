import "../../wx", "../../genui"
{.experimental.}

var drawPanel: ptr WxPanel

proc onPaint(e: var WxPaintEvent) {.cdecl.} =
  var dc = cnew constructWxPaintDC(drawPanel)
  dc.setPen()
  dc.clear()


genui:
  mainFrame % Frame(title = "Hello World"):
    drawPanel % Panel -> (wxEVT_PAINT, onPaint)

mainFrame.show()
runMainLoop()