


const
  wxALWAYS_NATIVE_DOUBLE_BUFFER* = 1


const
  wxBUFFER_VIRTUAL_AREA* = 0x00000001


const
  wxBUFFER_CLIENT_AREA* = 0x00000002


const
  wxBUFFER_USES_SHARED_BUFFER* = 0x00000004

type
  WxBufferedDC* {.importcpp: "wxBufferedDC", header: wxh.} = object of WxMemoryDC
  

proc constructwxBufferedDC*(): WxBufferedDC {.cdecl, constructor,
    importcpp: "wxBufferedDC(@)", header: wxh.}
proc constructwxBufferedDC*(dc: ptr WxDC; buffer: var WxBitmap = wxNullBitmap;
                           style: cint = wxBUFFER_CLIENT_AREA): WxBufferedDC {.cdecl,
    constructor, importcpp: "wxBufferedDC(@)", header: wxh.}
proc constructwxBufferedDC*(dc: ptr WxDC; area: WxSize;
                           style: cint = wxBUFFER_CLIENT_AREA): WxBufferedDC {.cdecl,
    constructor, importcpp: "wxBufferedDC(@)", header: wxh.}
proc destroywxBufferedDC*(this: var WxBufferedDC) {.cdecl,
    importcpp: "#.~wxBufferedDC()", header: wxh.}
proc init*(this: var WxBufferedDC; dc: ptr WxDC; buffer: var WxBitmap = wxNullBitmap;
          style: cint = wxBUFFER_CLIENT_AREA) {.cdecl, importcpp: "Init", header: wxh.}
proc init*(this: var WxBufferedDC; dc: ptr WxDC; area: WxSize;
          style: cint = wxBUFFER_CLIENT_AREA) {.cdecl, importcpp: "Init", header: wxh.}
proc unMask*(this: var WxBufferedDC) {.cdecl, importcpp: "UnMask", header: wxh.}
proc setStyle*(this: var WxBufferedDC; style: cint) {.cdecl, importcpp: "SetStyle",
    header: wxh.}
proc getStyle*(this: WxBufferedDC): cint {.noSideEffect, cdecl, importcpp: "GetStyle",
                                       header: wxh.}

type
  WxBufferedPaintDC* {.importcpp: "wxBufferedPaintDC", header: wxh.} = object of WxBufferedDC
  

proc constructwxBufferedPaintDC*(window: ptr WxWindow; buffer: var WxBitmap;
                                style: cint = wxBUFFER_CLIENT_AREA): WxBufferedPaintDC {.
    cdecl, constructor, importcpp: "wxBufferedPaintDC(@)", header: wxh.}
proc constructwxBufferedPaintDC*(window: ptr WxWindow;
                                style: cint = wxBUFFER_CLIENT_AREA): WxBufferedPaintDC {.
    cdecl, constructor, importcpp: "wxBufferedPaintDC(@)", header: wxh.}
proc destroywxBufferedPaintDC*(this: var WxBufferedPaintDC) {.cdecl,
    importcpp: "#.~wxBufferedPaintDC()", header: wxh.}

const
  wxAutoBufferedPaintDCBase* = wxPaintDC

type
  WxAutoBufferedPaintDC* {.importcpp: "wxAutoBufferedPaintDC", header: wxh.} = object of WxAutoBufferedPaintDCBase
  

proc constructwxAutoBufferedPaintDC*(win: ptr WxWindow): WxAutoBufferedPaintDC {.
    cdecl, constructor, importcpp: "wxAutoBufferedPaintDC(@)", header: wxh.}
proc destroywxAutoBufferedPaintDC*(this: var WxAutoBufferedPaintDC) {.cdecl,
    importcpp: "#.~wxAutoBufferedPaintDC()", header: wxh.}

proc wxAutoBufferedPaintDCFactory*(window: ptr WxWindow): ptr WxDC {.cdecl.}