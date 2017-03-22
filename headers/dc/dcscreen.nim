

type
  WxScreenDC* {.importcpp: "wxScreenDC", header: wxh.} = object of WxDC
  

proc constructwxScreenDC*(): WxScreenDC {.cdecl, constructor,
                                       importcpp: "wxScreenDC(@)", header: wxh.}
proc startDrawingOnTop*(window: ptr WxWindow): bool {.cdecl,
    importcpp: "wxScreenDC::StartDrawingOnTop(@)", header: wxh.}
proc startDrawingOnTop*(rect: ptr WxRect = nil): bool {.cdecl,
    importcpp: "wxScreenDC::StartDrawingOnTop(@)", header: wxh.}
proc endDrawingOnTop*(): bool {.cdecl, importcpp: "wxScreenDC::EndDrawingOnTop(@)",
                             header: wxh.}
