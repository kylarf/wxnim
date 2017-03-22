


type
  WxWindowDC* {.importcpp: "wxWindowDC", header: wxh.} = object of WxDC
  

proc constructwxWindowDC*(win: ptr WxWindow): WxWindowDC {.cdecl, constructor,
    importcpp: "wxWindowDC(@)", header: wxh.}

type
  WxClientDC* {.importcpp: "wxClientDC", header: wxh.} = object of WxWindowDC
  

proc constructwxClientDC*(win: ptr WxWindow): WxClientDC {.cdecl, constructor,
    importcpp: "wxClientDC(@)", header: wxh.}

type
  WxPaintDC* {.importcpp: "wxPaintDC", header: wxh.} = object of WxClientDC
  

proc constructwxPaintDC*(win: ptr WxWindow): WxPaintDC {.cdecl, constructor,
    importcpp: "wxPaintDC(@)", header: wxh.}