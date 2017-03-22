


type
  WxMirrorDCImpl* {.importcpp: "wxMirrorDCImpl", header: wxh.} = object of WxDCImpl
  

proc constructwxMirrorDCImpl*(owner: ptr WxDC; dc: var WxDCImpl; mirror: bool): WxMirrorDCImpl {.
    cdecl, constructor, importcpp: "wxMirrorDCImpl(@)", header: wxh.}
proc clear*(this: var WxMirrorDCImpl) {.cdecl, importcpp: "Clear", header: wxh.}
proc setFont*(this: var WxMirrorDCImpl; font: WxFont) {.cdecl, importcpp: "SetFont",
    header: wxh.}
proc setPen*(this: var WxMirrorDCImpl; pen: WxPen) {.cdecl, importcpp: "SetPen",
    header: wxh.}
proc setBrush*(this: var WxMirrorDCImpl; brush: WxBrush) {.cdecl,
    importcpp: "SetBrush", header: wxh.}
proc setBackground*(this: var WxMirrorDCImpl; brush: WxBrush) {.cdecl,
    importcpp: "SetBackground", header: wxh.}
proc setBackgroundMode*(this: var WxMirrorDCImpl; mode: cint) {.cdecl,
    importcpp: "SetBackgroundMode", header: wxh.}
proc setPalette*(this: var WxMirrorDCImpl; palette: WxPalette) {.cdecl,
    importcpp: "SetPalette", header: wxh.}
proc destroyClippingRegion*(this: var WxMirrorDCImpl) {.cdecl,
    importcpp: "DestroyClippingRegion", header: wxh.}
proc getCharHeight*(this: WxMirrorDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharHeight", header: wxh.}
proc getCharWidth*(this: WxMirrorDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharWidth", header: wxh.}
proc canDrawBitmap*(this: WxMirrorDCImpl): bool {.noSideEffect, cdecl,
    importcpp: "CanDrawBitmap", header: wxh.}
proc canGetTextExtent*(this: WxMirrorDCImpl): bool {.noSideEffect, cdecl,
    importcpp: "CanGetTextExtent", header: wxh.}
proc getDepth*(this: WxMirrorDCImpl): cint {.noSideEffect, cdecl,
    importcpp: "GetDepth", header: wxh.}
proc getPPI*(this: WxMirrorDCImpl): WxSize {.noSideEffect, cdecl, importcpp: "GetPPI",
    header: wxh.}
proc isOk*(this: WxMirrorDCImpl): bool {.noSideEffect, cdecl, importcpp: "IsOk",
                                     header: wxh.}
proc setMapMode*(this: var WxMirrorDCImpl; mode: WxMappingMode) {.cdecl,
    importcpp: "SetMapMode", header: wxh.}
proc setUserScale*(this: var WxMirrorDCImpl; x: cdouble; y: cdouble) {.cdecl,
    importcpp: "SetUserScale", header: wxh.}
proc setLogicalOrigin*(this: var WxMirrorDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetLogicalOrigin", header: wxh.}
proc setDeviceOrigin*(this: var WxMirrorDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetDeviceOrigin", header: wxh.}
proc setAxisOrientation*(this: var WxMirrorDCImpl; xLeftRight: bool; yBottomUp: bool) {.
    cdecl, importcpp: "SetAxisOrientation", header: wxh.}
proc setLogicalFunction*(this: var WxMirrorDCImpl; function: WxRasterOperationMode) {.
    cdecl, importcpp: "SetLogicalFunction", header: wxh.}
proc getHandle*(this: WxMirrorDCImpl): pointer {.noSideEffect, cdecl,
    importcpp: "GetHandle", header: wxh.}
type
  WxMirrorDC* {.importcpp: "wxMirrorDC", header: wxh.} = object of WxDC
  

proc constructwxMirrorDC*(dc: var WxDC; mirror: bool): WxMirrorDC {.cdecl, constructor,
    importcpp: "wxMirrorDC(@)", header: wxh.}
proc reflect*(this: var WxMirrorDC; sizeOrig: WxSize): WxSize {.cdecl,
    importcpp: "Reflect", header: wxh.}