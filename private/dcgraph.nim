
discard "forward decl of wxWindowDC"
type
  WxGCDC* {.importcpp: "wxGCDC", header: wxh.} = object of WxDC
  

proc constructwxGCDC*(dc: WxWindowDC): WxGCDC {.cdecl, constructor,
    importcpp: "wxGCDC(@)", header: wxh.}
proc constructwxGCDC*(dc: WxMemoryDC): WxGCDC {.cdecl, constructor,
    importcpp: "wxGCDC(@)", header: wxh.}
proc constructwxGCDC*(dc: WxPrinterDC): WxGCDC {.cdecl, constructor,
    importcpp: "wxGCDC(@)", header: wxh.}
#proc constructwxGCDC*(context: ptr WxGraphicsContext): WxGCDC {.cdecl, constructor,
#    importcpp: "wxGCDC(@)", header: wxh.}
proc constructwxGCDC*(): WxGCDC {.cdecl, constructor, importcpp: "wxGCDC(@)",
                               header: wxh.}
proc destroywxGCDC*(this: var WxGCDC) {.cdecl, importcpp: "#.~wxGCDC()", header: wxh.}
#proc getGraphicsContext*(this: WxGCDC): ptr WxGraphicsContext {.noSideEffect, cdecl,
#    importcpp: "GetGraphicsContext", header: wxh.}
#proc setGraphicsContext*(this: var WxGCDC; ctx: ptr WxGraphicsContext) {.cdecl,
#    importcpp: "SetGraphicsContext", header: wxh.}
type
  WxGCDCImpl* {.importcpp: "wxGCDCImpl", header: wxh.} = object of WxDCImpl
  

proc constructwxGCDCImpl*(owner: ptr WxDC; dc: WxWindowDC): WxGCDCImpl {.cdecl,
    constructor, importcpp: "wxGCDCImpl(@)", header: wxh.}
proc constructwxGCDCImpl*(owner: ptr WxDC; dc: WxMemoryDC): WxGCDCImpl {.cdecl,
    constructor, importcpp: "wxGCDCImpl(@)", header: wxh.}
proc constructwxGCDCImpl*(owner: ptr WxDC; dc: WxPrinterDC): WxGCDCImpl {.cdecl,
    constructor, importcpp: "wxGCDCImpl(@)", header: wxh.}
proc constructwxGCDCImpl*(owner: ptr WxDC): WxGCDCImpl {.cdecl, constructor,
    importcpp: "wxGCDCImpl(@)", header: wxh.}
proc destroywxGCDCImpl*(this: var WxGCDCImpl) {.cdecl, importcpp: "#.~wxGCDCImpl()",
    header: wxh.}
proc clear*(this: var WxGCDCImpl) {.cdecl, importcpp: "Clear", header: wxh.}
proc startDoc*(this: var WxGCDCImpl; message: WxString): bool {.cdecl,
    importcpp: "StartDoc", header: wxh.}
proc endDoc*(this: var WxGCDCImpl) {.cdecl, importcpp: "EndDoc", header: wxh.}
proc startPage*(this: var WxGCDCImpl) {.cdecl, importcpp: "StartPage", header: wxh.}
proc endPage*(this: var WxGCDCImpl) {.cdecl, importcpp: "EndPage", header: wxh.}
proc flush*(this: var WxGCDCImpl) {.cdecl, importcpp: "Flush", header: wxh.}
proc setFont*(this: var WxGCDCImpl; font: WxFont) {.cdecl, importcpp: "SetFont",
    header: wxh.}
proc setPen*(this: var WxGCDCImpl; pen: WxPen) {.cdecl, importcpp: "SetPen", header: wxh.}
proc setBrush*(this: var WxGCDCImpl; brush: WxBrush) {.cdecl, importcpp: "SetBrush",
    header: wxh.}
proc setBackground*(this: var WxGCDCImpl; brush: WxBrush) {.cdecl,
    importcpp: "SetBackground", header: wxh.}
proc setBackgroundMode*(this: var WxGCDCImpl; mode: cint) {.cdecl,
    importcpp: "SetBackgroundMode", header: wxh.}
proc setPalette*(this: var WxGCDCImpl; palette: WxPalette) {.cdecl,
    importcpp: "SetPalette", header: wxh.}
proc destroyClippingRegion*(this: var WxGCDCImpl) {.cdecl,
    importcpp: "DestroyClippingRegion", header: wxh.}
proc getCharHeight*(this: WxGCDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharHeight", header: wxh.}
proc getCharWidth*(this: WxGCDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharWidth", header: wxh.}
proc canDrawBitmap*(this: WxGCDCImpl): bool {.noSideEffect, cdecl,
    importcpp: "CanDrawBitmap", header: wxh.}
proc canGetTextExtent*(this: WxGCDCImpl): bool {.noSideEffect, cdecl,
    importcpp: "CanGetTextExtent", header: wxh.}
proc getDepth*(this: WxGCDCImpl): cint {.noSideEffect, cdecl, importcpp: "GetDepth",
                                     header: wxh.}
proc getPPI*(this: WxGCDCImpl): WxSize {.noSideEffect, cdecl, importcpp: "GetPPI",
                                     header: wxh.}
proc setLogicalFunction*(this: var WxGCDCImpl; function: WxRasterOperationMode) {.
    cdecl, importcpp: "SetLogicalFunction", header: wxh.}
proc setTextForeground*(this: var WxGCDCImpl; colour: WxColour) {.cdecl,
    importcpp: "SetTextForeground", header: wxh.}
proc setTextBackground*(this: var WxGCDCImpl; colour: WxColour) {.cdecl,
    importcpp: "SetTextBackground", header: wxh.}
proc computeScaleAndOrigin*(this: var WxGCDCImpl) {.cdecl,
    importcpp: "ComputeScaleAndOrigin", header: wxh.}
#proc getGraphicsContext*(this: WxGCDCImpl): ptr WxGraphicsContext {.noSideEffect,
#    cdecl, importcpp: "GetGraphicsContext", header: wxh.}
#proc setGraphicsContext*(this: var WxGCDCImpl; ctx: ptr WxGraphicsContext) {.cdecl,
#    importcpp: "SetGraphicsContext", header: wxh.}
proc getHandle*(this: WxGCDCImpl): pointer {.noSideEffect, cdecl,
    importcpp: "GetHandle", header: wxh.}
proc doFloodFill*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord; col: WxColour;
                 style: WxFloodFillStyle = wxFLOOD_SURFACE): bool {.cdecl,
    importcpp: "DoFloodFill", header: wxh.}
proc doGradientFillLinear*(this: var WxGCDCImpl; rect: WxRect;
                          initialColour: WxColour; destColour: WxColour;
                          nDirection: WxDirection = wxEAST) {.cdecl,
    importcpp: "DoGradientFillLinear", header: wxh.}
proc doGradientFillConcentric*(this: var WxGCDCImpl; rect: WxRect;
                              initialColour: WxColour; destColour: WxColour;
                              circleCenter: WxPoint) {.cdecl,
    importcpp: "DoGradientFillConcentric", header: wxh.}
proc doGetPixel*(this: WxGCDCImpl; x: WxCoord; y: WxCoord; col: ptr WxColour): bool {.
    noSideEffect, cdecl, importcpp: "DoGetPixel", header: wxh.}
proc doDrawPoint*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoDrawPoint", header: wxh.}
#proc doDrawSpline*(this: var WxGCDCImpl; points: ptr WxPointList) {.cdecl,
#    importcpp: "DoDrawSpline", header: wxh.}
proc doDrawLine*(this: var WxGCDCImpl; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord) {.
    cdecl, importcpp: "DoDrawLine", header: wxh.}
proc doDrawArc*(this: var WxGCDCImpl; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord;
               xc: WxCoord; yc: WxCoord) {.cdecl, importcpp: "DoDrawArc", header: wxh.}
proc doDrawCheckMark*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                     height: WxCoord) {.cdecl, importcpp: "DoDrawCheckMark",
                                      header: wxh.}
proc doDrawEllipticArc*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord; w: WxCoord;
                       h: WxCoord; sa: cdouble; ea: cdouble) {.cdecl,
    importcpp: "DoDrawEllipticArc", header: wxh.}
proc doDrawRectangle*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                     height: WxCoord) {.cdecl, importcpp: "DoDrawRectangle",
                                      header: wxh.}
proc doDrawRoundedRectangle*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord;
                            width: WxCoord; height: WxCoord; radius: cdouble) {.cdecl,
    importcpp: "DoDrawRoundedRectangle", header: wxh.}
proc doDrawEllipse*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                   height: WxCoord) {.cdecl, importcpp: "DoDrawEllipse", header: wxh.}
proc doCrossHair*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoCrossHair", header: wxh.}
proc doDrawIcon*(this: var WxGCDCImpl; icon: WxIcon; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoDrawIcon", header: wxh.}
proc doDrawBitmap*(this: var WxGCDCImpl; bmp: WxBitmap; x: WxCoord; y: WxCoord;
                  useMask: bool = false) {.cdecl, importcpp: "DoDrawBitmap",
                                       header: wxh.}
proc doDrawText*(this: var WxGCDCImpl; text: WxString; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoDrawText", header: wxh.}
proc doDrawRotatedText*(this: var WxGCDCImpl; text: WxString; x: WxCoord; y: WxCoord;
                       angle: cdouble) {.cdecl, importcpp: "DoDrawRotatedText",
                                       header: wxh.}
proc doBlit*(this: var WxGCDCImpl; xdest: WxCoord; ydest: WxCoord; width: WxCoord;
            height: WxCoord; source: ptr WxDC; xsrc: WxCoord; ysrc: WxCoord;
            rop: WxRasterOperationMode = wxCOPY; useMask: bool = false;
            xsrcMask: WxCoord = - 1; ysrcMask: WxCoord = - 1): bool {.cdecl,
    importcpp: "DoBlit", header: wxh.}
proc doStretchBlit*(this: var WxGCDCImpl; xdest: WxCoord; ydest: WxCoord;
                   dstWidth: WxCoord; dstHeight: WxCoord; source: ptr WxDC;
                   xsrc: WxCoord; ysrc: WxCoord; srcWidth: WxCoord;
                   srcHeight: WxCoord; a12: WxRasterOperationMode = wxCOPY;
                   useMask: bool = false; xsrcMask: WxCoord = wxDefaultCoord;
                   ysrcMask: WxCoord = wxDefaultCoord): bool {.cdecl,
    importcpp: "DoStretchBlit", header: wxh.}
proc doGetSize*(this: WxGCDCImpl; a3: ptr cint; a4: ptr cint) {.noSideEffect, cdecl,
    importcpp: "DoGetSize", header: wxh.}
proc doGetSizeMM*(this: WxGCDCImpl; width: ptr cint; height: ptr cint) {.noSideEffect,
    cdecl, importcpp: "DoGetSizeMM", header: wxh.}
proc doDrawLines*(this: var WxGCDCImpl; n: cint; points: ptr WxPoint; xoffset: WxCoord;
                 yoffset: WxCoord) {.cdecl, importcpp: "DoDrawLines", header: wxh.}
proc doDrawPolygon*(this: var WxGCDCImpl; n: cint; points: ptr WxPoint; xoffset: WxCoord;
                   yoffset: WxCoord; fillStyle: WxPolygonFillMode = wxODDEVEN_RULE) {.
    cdecl, importcpp: "DoDrawPolygon", header: wxh.}
proc doDrawPolyPolygon*(this: var WxGCDCImpl; n: cint; count: ptr cint;
                       points: ptr WxPoint; xoffset: WxCoord; yoffset: WxCoord;
                       fillStyle: WxPolygonFillMode) {.cdecl,
    importcpp: "DoDrawPolyPolygon", header: wxh.}
proc doSetDeviceClippingRegion*(this: var WxGCDCImpl; region: WxRegion) {.cdecl,
    importcpp: "DoSetDeviceClippingRegion", header: wxh.}
proc doSetClippingRegion*(this: var WxGCDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                         height: WxCoord) {.cdecl,
    importcpp: "DoSetClippingRegion", header: wxh.}
proc doGetTextExtent*(this: WxGCDCImpl; string: WxString; x: ptr WxCoord;
                     y: ptr WxCoord; descent: ptr WxCoord = nil;
                     externalLeading: ptr WxCoord = nil; theFont: ptr WxFont = nil) {.
    noSideEffect, cdecl, importcpp: "DoGetTextExtent", header: wxh.}
proc doGetPartialTextExtents*(this: WxGCDCImpl; text: WxString;
                             widths: var WxArrayInt): bool {.noSideEffect, cdecl,
    importcpp: "DoGetPartialTextExtents", header: wxh.}