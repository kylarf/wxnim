


type
  WxPrinterDC* {.importcpp: "wxPrinterDC", header: wxh.} = object of WxDC
  

proc constructwxPrinterDC*(): WxPrinterDC {.cdecl, constructor,
    importcpp: "wxPrinterDC(@)", header: wxh.}
#proc constructwxPrinterDC*(data: WxPrintData): WxPrinterDC {.cdecl, constructor,
#    importcpp: "wxPrinterDC(@)", header: wxh.}
proc getPaperRect*(this: WxPrinterDC): WxRect {.noSideEffect, cdecl,
    importcpp: "GetPaperRect", header: wxh.}
proc getResolution*(this: WxPrinterDC): cint {.noSideEffect, cdecl,
    importcpp: "GetResolution", header: wxh.}