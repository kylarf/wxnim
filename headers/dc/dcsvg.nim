

const
  wxSVGVersion* = wxT("v0100")

when defined(__BORLANDC__):
discard "forward decl of wxFileOutputStream"
discard "forward decl of wxSVGFileDC"
type
  WxSVGFileDCImpl* {.importcpp: "wxSVGFileDCImpl", header: wxh.} = object of WxDCImpl
  

proc constructwxSVGFileDCImpl*(owner: ptr WxSVGFileDC; filename: WxString;
                              width: cint = 320; height: cint = 240; dpi: cdouble = 72.0): WxSVGFileDCImpl {.
    cdecl, constructor, importcpp: "wxSVGFileDCImpl(@)", header: wxh.}
proc destroywxSVGFileDCImpl*(this: var WxSVGFileDCImpl) {.cdecl,
    importcpp: "#.~wxSVGFileDCImpl()", header: wxh.}
proc isOk*(this: WxSVGFileDCImpl): bool {.noSideEffect, cdecl, importcpp: "IsOk",
                                      header: wxh.}
proc canDrawBitmap*(this: WxSVGFileDCImpl): bool {.noSideEffect, cdecl,
    importcpp: "CanDrawBitmap", header: wxh.}
proc canGetTextExtent*(this: WxSVGFileDCImpl): bool {.noSideEffect, cdecl,
    importcpp: "CanGetTextExtent", header: wxh.}
proc getDepth*(this: WxSVGFileDCImpl): cint {.noSideEffect, cdecl,
    importcpp: "GetDepth", header: wxh.}
proc clear*(this: var WxSVGFileDCImpl) {.cdecl, importcpp: "Clear", header: wxh.}
proc destroyClippingRegion*(this: var WxSVGFileDCImpl) {.cdecl,
    importcpp: "DestroyClippingRegion", header: wxh.}
proc getCharHeight*(this: WxSVGFileDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharHeight", header: wxh.}
proc getCharWidth*(this: WxSVGFileDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharWidth", header: wxh.}
proc setClippingRegion*(this: var WxSVGFileDCImpl; x: WxCoord; y: WxCoord; w: WxCoord;
                       h: WxCoord) {.cdecl, importcpp: "SetClippingRegion",
                                   header: wxh.}
proc setPalette*(this: var WxSVGFileDCImpl; palette: WxPalette) {.cdecl,
    importcpp: "SetPalette", header: wxh.}
proc getClippingBox*(this: var WxSVGFileDCImpl; x: ptr WxCoord; y: ptr WxCoord;
                    w: ptr WxCoord; h: ptr WxCoord) {.cdecl,
    importcpp: "GetClippingBox", header: wxh.}
proc setLogicalFunction*(this: var WxSVGFileDCImpl; function: WxRasterOperationMode) {.
    cdecl, importcpp: "SetLogicalFunction", header: wxh.}
proc getLogicalFunction*(this: WxSVGFileDCImpl): WxRasterOperationMode {.
    noSideEffect, cdecl, importcpp: "GetLogicalFunction", header: wxh.}
proc setBackground*(this: var WxSVGFileDCImpl; brush: WxBrush) {.cdecl,
    importcpp: "SetBackground", header: wxh.}
proc setBackgroundMode*(this: var WxSVGFileDCImpl; mode: cint) {.cdecl,
    importcpp: "SetBackgroundMode", header: wxh.}
proc setBrush*(this: var WxSVGFileDCImpl; brush: WxBrush) {.cdecl,
    importcpp: "SetBrush", header: wxh.}
proc setFont*(this: var WxSVGFileDCImpl; font: WxFont) {.cdecl, importcpp: "SetFont",
    header: wxh.}
proc setPen*(this: var WxSVGFileDCImpl; pen: WxPen) {.cdecl, importcpp: "SetPen",
    header: wxh.}
proc getHandle*(this: WxSVGFileDCImpl): pointer {.noSideEffect, cdecl,
    importcpp: "GetHandle", header: wxh.}
type
  WxSVGFileDC* {.importcpp: "wxSVGFileDC", header: wxh.} = object of WxDC
  

proc constructwxSVGFileDC*(filename: WxString; width: cint = 320; height: cint = 240;
                          dpi: cdouble = 72.0): WxSVGFileDC {.cdecl, constructor,
    importcpp: "wxSVGFileDC(@)", header: wxh.}