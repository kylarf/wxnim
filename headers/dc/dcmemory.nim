


type
  WxMemoryDC* {.importcpp: "wxMemoryDC", header: wxh.} = object of WxDC
  

proc constructwxMemoryDC*(): WxMemoryDC {.cdecl, constructor,
                                       importcpp: "wxMemoryDC(@)", header: wxh.}
proc constructwxMemoryDC*(bitmap: var WxBitmap): WxMemoryDC {.cdecl, constructor,
    importcpp: "wxMemoryDC(@)", header: wxh.}
proc constructwxMemoryDC*(dc: ptr WxDC): WxMemoryDC {.cdecl, constructor,
    importcpp: "wxMemoryDC(@)", header: wxh.}
proc selectObject*(this: var WxMemoryDC; bmp: var WxBitmap) {.cdecl,
    importcpp: "SelectObject", header: wxh.}
proc selectObjectAsSource*(this: var WxMemoryDC; bmp: WxBitmap) {.cdecl,
    importcpp: "SelectObjectAsSource", header: wxh.}
proc getSelectedBitmap*(this: WxMemoryDC): WxBitmap {.noSideEffect, cdecl,
    importcpp: "GetSelectedBitmap", header: wxh.}
proc getSelectedBitmap*(this: var WxMemoryDC): var WxBitmap {.cdecl,
    importcpp: "GetSelectedBitmap", header: wxh.}
