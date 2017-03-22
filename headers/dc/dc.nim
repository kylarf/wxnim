


const
  wxUSE_NEW_DC* = 1

discard "forward decl of wxDC"
discard "forward decl of wxClientDC"
discard "forward decl of wxPaintDC"
discard "forward decl of wxWindowDC"
discard "forward decl of wxScreenDC"
discard "forward decl of wxMemoryDC"
discard "forward decl of wxPrinterDC"
discard "forward decl of wxPrintData"
discard "forward decl of wxGraphicsContext"

type
  WxRasterOperationMode* {.size: sizeof(cint), importcpp: "wxGraphicsContext::wxRasterOperationMode",
                          header: wxh.} = enum
    wxCLEAR, wxXOR, wxINVERT, wxOR_REVERSE, wxAND_REVERSE, wxCOPY, wxAND, wxAND_INVERT,
    wxNO_OP, wxNOR, wxEQUIV, wxSRC_INVERT, wxOR_INVERT, wxNAND, wxOR, wxSET



type
  WxFloodFillStyle* {.size: sizeof(cint),
                     importcpp: "wxGraphicsContext::wxFloodFillStyle", header: wxh.} = enum
    wxFLOOD_SURFACE = 1, wxFLOOD_BORDER



type
  WxMappingMode* {.size: sizeof(cint),
                  importcpp: "wxGraphicsContext::wxMappingMode", header: wxh.} = enum
    wxMM_TEXT = 1, wxMM_METRIC, wxMM_LOMETRIC, wxMM_TWIPS, wxMM_POINTS



type
  WxFontMetrics* {.importcpp: "wxFontMetrics", header: wxh.} = object
    height* {.importc: "height".}: cint
    ascent* {.importc: "ascent".}: cint
    descent* {.importc: "descent".}: cint
    internalLeading* {.importc: "internalLeading".}: cint
    externalLeading* {.importc: "externalLeading".}: cint
    averageWidth* {.importc: "averageWidth".}: cint


proc constructwxFontMetrics*(): WxFontMetrics {.cdecl, constructor,
    importcpp: "wxFontMetrics(@)", header: wxh.}

type
  WxDrawObject* {.importcpp: "wxDrawObject", header: wxh.} = object
  

proc destroywxDrawObject*(this: var WxDrawObject) {.cdecl,
    importcpp: "#.~wxDrawObject()", header: wxh.}
proc draw*(this: WxDrawObject; a3: var WxDC) {.noSideEffect, cdecl, importcpp: "Draw",
    header: wxh.}
proc calcBoundingBox*(this: var WxDrawObject; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "CalcBoundingBox", header: wxh.}
proc resetBoundingBox*(this: var WxDrawObject) {.cdecl,
    importcpp: "ResetBoundingBox", header: wxh.}
proc minX*(this: WxDrawObject): WxCoord {.noSideEffect, cdecl, importcpp: "MinX",
                                      header: wxh.}
proc maxX*(this: WxDrawObject): WxCoord {.noSideEffect, cdecl, importcpp: "MaxX",
                                      header: wxh.}
proc minY*(this: WxDrawObject): WxCoord {.noSideEffect, cdecl, importcpp: "MinY",
                                      header: wxh.}
proc maxY*(this: WxDrawObject): WxCoord {.noSideEffect, cdecl, importcpp: "MaxY",
                                      header: wxh.}
proc getType*(this: var WxDrawObject): cint {.cdecl, importcpp: "GetType", header: wxh.}

discard "forward decl of wxDCImpl"
type
  WxDCFactory* {.importcpp: "wxDCFactory", header: wxh.} = object
  

proc constructwxDCFactory*(): WxDCFactory {.cdecl, constructor,
    importcpp: "wxDCFactory(@)", header: wxh.}
proc destroywxDCFactory*(this: var WxDCFactory) {.cdecl,
    importcpp: "#.~wxDCFactory()", header: wxh.}
proc createWindowDC*(this: var WxDCFactory; owner: ptr WxWindowDC; window: ptr WxWindow): ptr WxDCImpl {.
    cdecl, importcpp: "CreateWindowDC", header: wxh.}
proc createClientDC*(this: var WxDCFactory; owner: ptr WxClientDC; window: ptr WxWindow): ptr WxDCImpl {.
    cdecl, importcpp: "CreateClientDC", header: wxh.}
proc createPaintDC*(this: var WxDCFactory; owner: ptr WxPaintDC; window: ptr WxWindow): ptr WxDCImpl {.
    cdecl, importcpp: "CreatePaintDC", header: wxh.}
proc createMemoryDC*(this: var WxDCFactory; owner: ptr WxMemoryDC): ptr WxDCImpl {.cdecl,
    importcpp: "CreateMemoryDC", header: wxh.}
proc createMemoryDC*(this: var WxDCFactory; owner: ptr WxMemoryDC; bitmap: var WxBitmap): ptr WxDCImpl {.
    cdecl, importcpp: "CreateMemoryDC", header: wxh.}
proc createMemoryDC*(this: var WxDCFactory; owner: ptr WxMemoryDC; dc: ptr WxDC): ptr WxDCImpl {.
    cdecl, importcpp: "CreateMemoryDC", header: wxh.}
proc createScreenDC*(this: var WxDCFactory; owner: ptr WxScreenDC): ptr WxDCImpl {.cdecl,
    importcpp: "CreateScreenDC", header: wxh.}
proc createPrinterDC*(this: var WxDCFactory; owner: ptr WxPrinterDC; data: WxPrintData): ptr WxDCImpl {.
    cdecl, importcpp: "CreatePrinterDC", header: wxh.}
proc set*(factory: ptr WxDCFactory) {.cdecl, importcpp: "wxDCFactory::Set(@)",
                                  header: wxh.}
proc get*(): ptr WxDCFactory {.cdecl, importcpp: "wxDCFactory::Get(@)", header: wxh.}

#[]
type
  WxNativeDCFactory* {.importcpp: "wxNativeDCFactory", header: wxh.} = object


proc constructwxNativeDCFactory*(): WxNativeDCFactory {.cdecl, constructor,
    importcpp: "wxNativeDCFactory(@)", header: wxh.}
proc createWindowDC*(this: var WxNativeDCFactory; owner: ptr WxWindowDC;
                    window: ptr WxWindow): ptr WxDCImpl {.cdecl,
    importcpp: "CreateWindowDC", header: wxh.}
proc createClientDC*(this: var WxNativeDCFactory; owner: ptr WxClientDC;
                    window: ptr WxWindow): ptr WxDCImpl {.cdecl,
    importcpp: "CreateClientDC", header: wxh.}
proc createPaintDC*(this: var WxNativeDCFactory; owner: ptr WxPaintDC;
                   window: ptr WxWindow): ptr WxDCImpl {.cdecl,
    importcpp: "CreatePaintDC", header: wxh.}
proc createMemoryDC*(this: var WxNativeDCFactory; owner: ptr WxMemoryDC): ptr WxDCImpl {.
    cdecl, importcpp: "CreateMemoryDC", header: wxh.}
proc createMemoryDC*(this: var WxNativeDCFactory; owner: ptr WxMemoryDC;
                    bitmap: var WxBitmap): ptr WxDCImpl {.cdecl,
    importcpp: "CreateMemoryDC", header: wxh.}
proc createMemoryDC*(this: var WxNativeDCFactory; owner: ptr WxMemoryDC; dc: ptr WxDC): ptr WxDCImpl {.
    cdecl, importcpp: "CreateMemoryDC", header: wxh.}
proc createScreenDC*(this: var WxNativeDCFactory; owner: ptr WxScreenDC): ptr WxDCImpl {.
    cdecl, importcpp: "CreateScreenDC", header: wxh.}
proc createPrinterDC*(this: var WxNativeDCFactory; owner: ptr WxPrinterDC;
                     data: WxPrintData): ptr WxDCImpl {.cdecl,
    importcpp: "CreatePrinterDC", header: wxh.}
]#

type
  WxDCImpl* {.importcpp: "wxDCImpl", header: wxh.} = object of WxObject
  

proc constructwxDCImpl*(owner: ptr WxDC): WxDCImpl {.cdecl, constructor,
    importcpp: "wxDCImpl(@)", header: wxh.}
proc destroywxDCImpl*(this: var WxDCImpl) {.cdecl, importcpp: "#.~wxDCImpl()",
                                        header: wxh.}
proc getOwner*(this: WxDCImpl): ptr WxDC {.noSideEffect, cdecl, importcpp: "GetOwner",
                                      header: wxh.}
proc getWindow*(this: WxDCImpl): ptr WxWindow {.noSideEffect, cdecl,
    importcpp: "GetWindow", header: wxh.}
proc isOk*(this: WxDCImpl): bool {.noSideEffect, cdecl, importcpp: "IsOk", header: wxh.}
proc canDrawBitmap*(this: WxDCImpl): bool {.noSideEffect, cdecl,
                                        importcpp: "CanDrawBitmap", header: wxh.}
proc canGetTextExtent*(this: WxDCImpl): bool {.noSideEffect, cdecl,
    importcpp: "CanGetTextExtent", header: wxh.}
proc getCairoContext*(this: WxDCImpl): pointer {.noSideEffect, cdecl,
    importcpp: "GetCairoContext", header: wxh.}
proc getHandle*(this: WxDCImpl): pointer {.noSideEffect, cdecl,
                                       importcpp: "GetHandle", header: wxh.}
proc doGetSize*(this: WxDCImpl; width: ptr cint; height: ptr cint) {.noSideEffect, cdecl,
    importcpp: "DoGetSize", header: wxh.}
proc getSize*(this: WxDCImpl; width: ptr cint; height: ptr cint) {.noSideEffect, cdecl,
    importcpp: "GetSize", header: wxh.}
proc getSize*(this: WxDCImpl): WxSize {.noSideEffect, cdecl, importcpp: "GetSize",
                                    header: wxh.}
proc doGetSizeMM*(this: WxDCImpl; width: ptr cint; height: ptr cint) {.noSideEffect,
    cdecl, importcpp: "DoGetSizeMM", header: wxh.}
proc getDepth*(this: WxDCImpl): cint {.noSideEffect, cdecl, importcpp: "GetDepth",
                                   header: wxh.}
proc getPPI*(this: WxDCImpl): WxSize {.noSideEffect, cdecl, importcpp: "GetPPI",
                                   header: wxh.}
proc setLayoutDirection*(this: var WxDCImpl; dir: WxLayoutDirection) {.cdecl,
    importcpp: "SetLayoutDirection", header: wxh.}
proc getLayoutDirection*(this: WxDCImpl): WxLayoutDirection {.noSideEffect, cdecl,
    importcpp: "GetLayoutDirection", header: wxh.}
proc startDoc*(this: var WxDCImpl; message: WxString): bool {.cdecl,
    importcpp: "StartDoc", header: wxh.}
proc endDoc*(this: var WxDCImpl) {.cdecl, importcpp: "EndDoc", header: wxh.}
proc startPage*(this: var WxDCImpl) {.cdecl, importcpp: "StartPage", header: wxh.}
proc endPage*(this: var WxDCImpl) {.cdecl, importcpp: "EndPage", header: wxh.}
proc flush*(this: var WxDCImpl) {.cdecl, importcpp: "Flush", header: wxh.}
proc calcBoundingBox*(this: var WxDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "CalcBoundingBox", header: wxh.}
proc resetBoundingBox*(this: var WxDCImpl) {.cdecl, importcpp: "ResetBoundingBox",
    header: wxh.}
proc minX*(this: WxDCImpl): WxCoord {.noSideEffect, cdecl, importcpp: "MinX",
                                  header: wxh.}
proc maxX*(this: WxDCImpl): WxCoord {.noSideEffect, cdecl, importcpp: "MaxX",
                                  header: wxh.}
proc minY*(this: WxDCImpl): WxCoord {.noSideEffect, cdecl, importcpp: "MinY",
                                  header: wxh.}
proc maxY*(this: WxDCImpl): WxCoord {.noSideEffect, cdecl, importcpp: "MaxY",
                                  header: wxh.}
proc setFont*(this: var WxDCImpl; font: WxFont) {.cdecl, importcpp: "SetFont",
    header: wxh.}
proc getFont*(this: WxDCImpl): WxFont {.noSideEffect, cdecl, importcpp: "GetFont",
                                    header: wxh.}
proc setPen*(this: var WxDCImpl; pen: WxPen) {.cdecl, importcpp: "SetPen", header: wxh.}
proc getPen*(this: WxDCImpl): WxPen {.noSideEffect, cdecl, importcpp: "GetPen",
                                  header: wxh.}
proc setBrush*(this: var WxDCImpl; brush: WxBrush) {.cdecl, importcpp: "SetBrush",
    header: wxh.}
proc getBrush*(this: WxDCImpl): WxBrush {.noSideEffect, cdecl, importcpp: "GetBrush",
                                      header: wxh.}
proc setBackground*(this: var WxDCImpl; brush: WxBrush) {.cdecl,
    importcpp: "SetBackground", header: wxh.}
proc getBackground*(this: WxDCImpl): WxBrush {.noSideEffect, cdecl,
    importcpp: "GetBackground", header: wxh.}
proc setBackgroundMode*(this: var WxDCImpl; mode: cint) {.cdecl,
    importcpp: "SetBackgroundMode", header: wxh.}
proc getBackgroundMode*(this: WxDCImpl): cint {.noSideEffect, cdecl,
    importcpp: "GetBackgroundMode", header: wxh.}
proc setTextForeground*(this: var WxDCImpl; colour: WxColour) {.cdecl,
    importcpp: "SetTextForeground", header: wxh.}
proc getTextForeground*(this: WxDCImpl): WxColour {.noSideEffect, cdecl,
    importcpp: "GetTextForeground", header: wxh.}
proc setTextBackground*(this: var WxDCImpl; colour: WxColour) {.cdecl,
    importcpp: "SetTextBackground", header: wxh.}
proc getTextBackground*(this: WxDCImpl): WxColour {.noSideEffect, cdecl,
    importcpp: "GetTextBackground", header: wxh.}
proc setPalette*(this: var WxDCImpl; palette: WxPalette) {.cdecl,
    importcpp: "SetPalette", header: wxh.}
proc inheritAttributes*(this: var WxDCImpl; win: ptr WxWindow) {.cdecl,
    importcpp: "InheritAttributes", header: wxh.}
proc setLogicalFunction*(this: var WxDCImpl; function: WxRasterOperationMode) {.cdecl,
    importcpp: "SetLogicalFunction", header: wxh.}
proc getLogicalFunction*(this: WxDCImpl): WxRasterOperationMode {.noSideEffect,
    cdecl, importcpp: "GetLogicalFunction", header: wxh.}
proc getCharHeight*(this: WxDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharHeight", header: wxh.}
proc getCharWidth*(this: WxDCImpl): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetCharWidth", header: wxh.}
proc doGetFontMetrics*(this: WxDCImpl; height: ptr cint; ascent: ptr cint;
                      descent: ptr cint; internalLeading: ptr cint;
                      externalLeading: ptr cint; averageWidth: ptr cint) {.
    noSideEffect, cdecl, importcpp: "DoGetFontMetrics", header: wxh.}
proc doGetTextExtent*(this: WxDCImpl; string: WxString; x: ptr WxCoord; y: ptr WxCoord;
                     descent: ptr WxCoord = nil; externalLeading: ptr WxCoord = nil;
                     theFont: ptr WxFont = nil) {.noSideEffect, cdecl,
    importcpp: "DoGetTextExtent", header: wxh.}
proc getMultiLineTextExtent*(this: WxDCImpl; string: WxString; width: ptr WxCoord;
                            height: ptr WxCoord; heightLine: ptr WxCoord = nil;
                            font: ptr WxFont = nil) {.noSideEffect, cdecl,
    importcpp: "GetMultiLineTextExtent", header: wxh.}
proc doGetPartialTextExtents*(this: WxDCImpl; text: WxString; widths: var WxArrayInt): bool {.
    noSideEffect, cdecl, importcpp: "DoGetPartialTextExtents", header: wxh.}
proc clear*(this: var WxDCImpl) {.cdecl, importcpp: "Clear", header: wxh.}
proc doSetClippingRegion*(this: var WxDCImpl; x: WxCoord; y: WxCoord; w: WxCoord;
                         h: WxCoord) {.cdecl, importcpp: "DoSetClippingRegion",
                                     header: wxh.}
proc doSetDeviceClippingRegion*(this: var WxDCImpl; region: WxRegion) {.cdecl,
    importcpp: "DoSetDeviceClippingRegion", header: wxh.}
proc doGetClippingBox*(this: WxDCImpl; x: ptr WxCoord; y: ptr WxCoord; w: ptr WxCoord;
                      h: ptr WxCoord) {.noSideEffect, cdecl,
                                     importcpp: "DoGetClippingBox", header: wxh.}
proc destroyClippingRegion*(this: var WxDCImpl) {.cdecl,
    importcpp: "DestroyClippingRegion", header: wxh.}
proc deviceToLogicalX*(this: WxDCImpl; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalX", header: wxh.}
proc deviceToLogicalY*(this: WxDCImpl; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalY", header: wxh.}
proc deviceToLogicalXRel*(this: WxDCImpl; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalXRel", header: wxh.}
proc deviceToLogicalYRel*(this: WxDCImpl; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalYRel", header: wxh.}
proc logicalToDeviceX*(this: WxDCImpl; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceX", header: wxh.}
proc logicalToDeviceY*(this: WxDCImpl; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceY", header: wxh.}
proc logicalToDeviceXRel*(this: WxDCImpl; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceXRel", header: wxh.}
proc logicalToDeviceYRel*(this: WxDCImpl; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceYRel", header: wxh.}
proc setMapMode*(this: var WxDCImpl; mode: WxMappingMode) {.cdecl,
    importcpp: "SetMapMode", header: wxh.}
proc getMapMode*(this: WxDCImpl): WxMappingMode {.noSideEffect, cdecl,
    importcpp: "GetMapMode", header: wxh.}
proc setUserScale*(this: var WxDCImpl; x: cdouble; y: cdouble) {.cdecl,
    importcpp: "SetUserScale", header: wxh.}
proc getUserScale*(this: WxDCImpl; x: ptr cdouble; y: ptr cdouble) {.noSideEffect, cdecl,
    importcpp: "GetUserScale", header: wxh.}
proc setLogicalScale*(this: var WxDCImpl; x: cdouble; y: cdouble) {.cdecl,
    importcpp: "SetLogicalScale", header: wxh.}
proc getLogicalScale*(this: WxDCImpl; x: ptr cdouble; y: ptr cdouble) {.noSideEffect,
    cdecl, importcpp: "GetLogicalScale", header: wxh.}
proc setLogicalOrigin*(this: var WxDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetLogicalOrigin", header: wxh.}
proc doGetLogicalOrigin*(this: WxDCImpl; x: ptr WxCoord; y: ptr WxCoord) {.noSideEffect,
    cdecl, importcpp: "DoGetLogicalOrigin", header: wxh.}
proc setDeviceOrigin*(this: var WxDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetDeviceOrigin", header: wxh.}
proc doGetDeviceOrigin*(this: WxDCImpl; x: ptr WxCoord; y: ptr WxCoord) {.noSideEffect,
    cdecl, importcpp: "DoGetDeviceOrigin", header: wxh.}
proc setDeviceLocalOrigin*(this: var WxDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetDeviceLocalOrigin", header: wxh.}
proc computeScaleAndOrigin*(this: var WxDCImpl) {.cdecl,
    importcpp: "ComputeScaleAndOrigin", header: wxh.}
proc setAxisOrientation*(this: var WxDCImpl; xLeftRight: bool; yBottomUp: bool) {.cdecl,
    importcpp: "SetAxisOrientation", header: wxh.}
proc getContentScaleFactor*(this: WxDCImpl): cdouble {.noSideEffect, cdecl,
    importcpp: "GetContentScaleFactor", header: wxh.}
proc doFloodFill*(this: var WxDCImpl; x: WxCoord; y: WxCoord; col: WxColour;
                 style: WxFloodFillStyle = wxFLOOD_SURFACE): bool {.cdecl,
    importcpp: "DoFloodFill", header: wxh.}
proc doGradientFillLinear*(this: var WxDCImpl; rect: WxRect; initialColour: WxColour;
                          destColour: WxColour; nDirection: WxDirection = wxEAST) {.
    cdecl, importcpp: "DoGradientFillLinear", header: wxh.}
proc doGradientFillConcentric*(this: var WxDCImpl; rect: WxRect;
                              initialColour: WxColour; destColour: WxColour;
                              circleCenter: WxPoint) {.cdecl,
    importcpp: "DoGradientFillConcentric", header: wxh.}
proc doGetPixel*(this: WxDCImpl; x: WxCoord; y: WxCoord; col: ptr WxColour): bool {.
    noSideEffect, cdecl, importcpp: "DoGetPixel", header: wxh.}
proc doDrawPoint*(this: var WxDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoDrawPoint", header: wxh.}
proc doDrawLine*(this: var WxDCImpl; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord) {.
    cdecl, importcpp: "DoDrawLine", header: wxh.}
proc doDrawArc*(this: var WxDCImpl; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord;
               xc: WxCoord; yc: WxCoord) {.cdecl, importcpp: "DoDrawArc", header: wxh.}
proc doDrawCheckMark*(this: var WxDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                     height: WxCoord) {.cdecl, importcpp: "DoDrawCheckMark",
                                      header: wxh.}
proc doDrawEllipticArc*(this: var WxDCImpl; x: WxCoord; y: WxCoord; w: WxCoord;
                       h: WxCoord; sa: cdouble; ea: cdouble) {.cdecl,
    importcpp: "DoDrawEllipticArc", header: wxh.}
proc doDrawRectangle*(this: var WxDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                     height: WxCoord) {.cdecl, importcpp: "DoDrawRectangle",
                                      header: wxh.}
proc doDrawRoundedRectangle*(this: var WxDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                            height: WxCoord; radius: cdouble) {.cdecl,
    importcpp: "DoDrawRoundedRectangle", header: wxh.}
proc doDrawEllipse*(this: var WxDCImpl; x: WxCoord; y: WxCoord; width: WxCoord;
                   height: WxCoord) {.cdecl, importcpp: "DoDrawEllipse", header: wxh.}
proc doCrossHair*(this: var WxDCImpl; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoCrossHair", header: wxh.}
proc doDrawIcon*(this: var WxDCImpl; icon: WxIcon; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoDrawIcon", header: wxh.}
proc doDrawBitmap*(this: var WxDCImpl; bmp: WxBitmap; x: WxCoord; y: WxCoord;
                  useMask: bool = false) {.cdecl, importcpp: "DoDrawBitmap",
                                       header: wxh.}
proc doDrawText*(this: var WxDCImpl; text: WxString; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DoDrawText", header: wxh.}
proc doDrawRotatedText*(this: var WxDCImpl; text: WxString; x: WxCoord; y: WxCoord;
                       angle: cdouble) {.cdecl, importcpp: "DoDrawRotatedText",
                                       header: wxh.}
proc doBlit*(this: var WxDCImpl; xdest: WxCoord; ydest: WxCoord; width: WxCoord;
            height: WxCoord; source: ptr WxDC; xsrc: WxCoord; ysrc: WxCoord;
            rop: WxRasterOperationMode = wxCOPY; useMask: bool = false;
            xsrcMask: WxCoord = wxDefaultCoord; ysrcMask: WxCoord = wxDefaultCoord): bool {.
    cdecl, importcpp: "DoBlit", header: wxh.}
proc doStretchBlit*(this: var WxDCImpl; xdest: WxCoord; ydest: WxCoord;
                   dstWidth: WxCoord; dstHeight: WxCoord; source: ptr WxDC;
                   xsrc: WxCoord; ysrc: WxCoord; srcWidth: WxCoord;
                   srcHeight: WxCoord; rop: WxRasterOperationMode = wxCOPY;
                   useMask: bool = false; xsrcMask: WxCoord = wxDefaultCoord;
                   ysrcMask: WxCoord = wxDefaultCoord): bool {.cdecl,
    importcpp: "DoStretchBlit", header: wxh.}
proc doGetAsBitmap*(this: WxDCImpl; subrect: ptr WxRect): WxBitmap {.noSideEffect,
    cdecl, importcpp: "DoGetAsBitmap", header: wxh.}
proc doDrawLines*(this: var WxDCImpl; n: cint; points: ptr WxPoint; xoffset: WxCoord;
                 yoffset: WxCoord) {.cdecl, importcpp: "DoDrawLines", header: wxh.}
proc drawLines*(this: var WxDCImpl; list: ptr WxPointList; xoffset: WxCoord;
               yoffset: WxCoord) {.cdecl, importcpp: "DrawLines", header: wxh.}
proc doDrawPolygon*(this: var WxDCImpl; n: cint; points: ptr WxPoint; xoffset: WxCoord;
                   yoffset: WxCoord; fillStyle: WxPolygonFillMode = wxODDEVEN_RULE) {.
    cdecl, importcpp: "DoDrawPolygon", header: wxh.}
proc doDrawPolyPolygon*(this: var WxDCImpl; n: cint; count: ptr cint;
                       points: ptr WxPoint; xoffset: WxCoord; yoffset: WxCoord;
                       fillStyle: WxPolygonFillMode) {.cdecl,
    importcpp: "DoDrawPolyPolygon", header: wxh.}
proc drawPolygon*(this: var WxDCImpl; list: ptr WxPointList; xoffset: WxCoord;
                 yoffset: WxCoord; fillStyle: WxPolygonFillMode) {.cdecl,
    importcpp: "DrawPolygon", header: wxh.}
proc drawSpline*(this: var WxDCImpl; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord;
                x3: WxCoord; y3: WxCoord) {.cdecl, importcpp: "DrawSpline", header: wxh.}
proc drawSpline*(this: var WxDCImpl; n: cint; points: ptr WxPoint) {.cdecl,
    importcpp: "DrawSpline", header: wxh.}
proc drawSpline*(this: var WxDCImpl; points: ptr WxPointList) {.cdecl,
    importcpp: "DrawSpline", header: wxh.}
proc doDrawSpline*(this: var WxDCImpl; points: ptr WxPointList) {.cdecl,
    importcpp: "DoDrawSpline", header: wxh.}
proc doSelect*(this: var WxDCImpl; bmp: WxBitmap) {.cdecl, importcpp: "DoSelect",
    header: wxh.}
proc getSelectedBitmap*(this: WxDCImpl): WxBitmap {.noSideEffect, cdecl,
    importcpp: "GetSelectedBitmap", header: wxh.}
proc getSelectedBitmap*(this: var WxDCImpl): var WxBitmap {.cdecl,
    importcpp: "GetSelectedBitmap", header: wxh.}
proc getPaperRect*(this: WxDCImpl): WxRect {.noSideEffect, cdecl,
    importcpp: "GetPaperRect", header: wxh.}
proc getResolution*(this: WxDCImpl): cint {.noSideEffect, cdecl,
                                        importcpp: "GetResolution", header: wxh.}
proc getGraphicsContext*(this: WxDCImpl): ptr WxGraphicsContext {.noSideEffect, cdecl,
    importcpp: "GetGraphicsContext", header: wxh.}
proc setGraphicsContext*(this: var WxDCImpl; ctx: ptr WxGraphicsContext) {.cdecl,
    importcpp: "SetGraphicsContext", header: wxh.}
type
  WxDC* {.importcpp: "wxDC", header: wxh.} = object of WxObject
  

proc copyAttributes*(this: var WxDC; dc: WxDC) {.cdecl, importcpp: "CopyAttributes",
    header: wxh.}
proc destroywxDC*(this: var WxDC) {.cdecl, importcpp: "#.~wxDC()", header: wxh.}
proc getImpl*(this: var WxDC): ptr WxDCImpl {.cdecl, importcpp: "GetImpl", header: wxh.}
proc getImpl*(this: WxDC): ptr WxDCImpl {.noSideEffect, cdecl, importcpp: "GetImpl",
                                     header: wxh.}
proc getWindow*(this: WxDC): ptr WxWindow {.noSideEffect, cdecl,
                                       importcpp: "GetWindow", header: wxh.}
proc getHandle*(this: WxDC): pointer {.noSideEffect, cdecl, importcpp: "GetHandle",
                                   header: wxh.}
proc isOk*(this: WxDC): bool {.noSideEffect, cdecl, importcpp: "IsOk", header: wxh.}
proc canDrawBitmap*(this: WxDC): bool {.noSideEffect, cdecl,
                                    importcpp: "CanDrawBitmap", header: wxh.}
proc canGetTextExtent*(this: WxDC): bool {.noSideEffect, cdecl,
                                       importcpp: "CanGetTextExtent", header: wxh.}
proc getSize*(this: WxDC; width: ptr cint; height: ptr cint) {.noSideEffect, cdecl,
    importcpp: "GetSize", header: wxh.}
proc getSize*(this: WxDC): WxSize {.noSideEffect, cdecl, importcpp: "GetSize",
                                header: wxh.}
proc getSizeMM*(this: WxDC; width: ptr cint; height: ptr cint) {.noSideEffect, cdecl,
    importcpp: "GetSizeMM", header: wxh.}
proc getSizeMM*(this: WxDC): WxSize {.noSideEffect, cdecl, importcpp: "GetSizeMM",
                                  header: wxh.}
proc getDepth*(this: WxDC): cint {.noSideEffect, cdecl, importcpp: "GetDepth",
                               header: wxh.}
proc getPPI*(this: WxDC): WxSize {.noSideEffect, cdecl, importcpp: "GetPPI", header: wxh.}
proc getResolution*(this: WxDC): cint {.noSideEffect, cdecl,
                                    importcpp: "GetResolution", header: wxh.}
proc getContentScaleFactor*(this: WxDC): cdouble {.noSideEffect, cdecl,
    importcpp: "GetContentScaleFactor", header: wxh.}
proc setLayoutDirection*(this: var WxDC; dir: WxLayoutDirection) {.cdecl,
    importcpp: "SetLayoutDirection", header: wxh.}
proc getLayoutDirection*(this: WxDC): WxLayoutDirection {.noSideEffect, cdecl,
    importcpp: "GetLayoutDirection", header: wxh.}
proc startDoc*(this: var WxDC; message: WxString): bool {.cdecl, importcpp: "StartDoc",
    header: wxh.}
proc endDoc*(this: var WxDC) {.cdecl, importcpp: "EndDoc", header: wxh.}
proc startPage*(this: var WxDC) {.cdecl, importcpp: "StartPage", header: wxh.}
proc endPage*(this: var WxDC) {.cdecl, importcpp: "EndPage", header: wxh.}
proc calcBoundingBox*(this: var WxDC; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "CalcBoundingBox", header: wxh.}
proc resetBoundingBox*(this: var WxDC) {.cdecl, importcpp: "ResetBoundingBox",
                                     header: wxh.}
proc minX*(this: WxDC): WxCoord {.noSideEffect, cdecl, importcpp: "MinX", header: wxh.}
proc maxX*(this: WxDC): WxCoord {.noSideEffect, cdecl, importcpp: "MaxX", header: wxh.}
proc minY*(this: WxDC): WxCoord {.noSideEffect, cdecl, importcpp: "MinY", header: wxh.}
proc maxY*(this: WxDC): WxCoord {.noSideEffect, cdecl, importcpp: "MaxY", header: wxh.}
proc setFont*(this: var WxDC; font: WxFont) {.cdecl, importcpp: "SetFont", header: wxh.}
proc getFont*(this: WxDC): WxFont {.noSideEffect, cdecl, importcpp: "GetFont",
                                header: wxh.}
proc setPen*(this: var WxDC; pen: WxPen) {.cdecl, importcpp: "SetPen", header: wxh.}
proc getPen*(this: WxDC): WxPen {.noSideEffect, cdecl, importcpp: "GetPen", header: wxh.}
proc setBrush*(this: var WxDC; brush: WxBrush) {.cdecl, importcpp: "SetBrush",
    header: wxh.}
proc getBrush*(this: WxDC): WxBrush {.noSideEffect, cdecl, importcpp: "GetBrush",
                                  header: wxh.}
proc setBackground*(this: var WxDC; brush: WxBrush) {.cdecl,
    importcpp: "SetBackground", header: wxh.}
proc getBackground*(this: WxDC): WxBrush {.noSideEffect, cdecl,
                                       importcpp: "GetBackground", header: wxh.}
proc setBackgroundMode*(this: var WxDC; mode: cint) {.cdecl,
    importcpp: "SetBackgroundMode", header: wxh.}
proc getBackgroundMode*(this: WxDC): cint {.noSideEffect, cdecl,
                                        importcpp: "GetBackgroundMode",
                                        header: wxh.}
proc setTextForeground*(this: var WxDC; colour: WxColour) {.cdecl,
    importcpp: "SetTextForeground", header: wxh.}
proc getTextForeground*(this: WxDC): WxColour {.noSideEffect, cdecl,
    importcpp: "GetTextForeground", header: wxh.}
proc setTextBackground*(this: var WxDC; colour: WxColour) {.cdecl,
    importcpp: "SetTextBackground", header: wxh.}
proc getTextBackground*(this: WxDC): WxColour {.noSideEffect, cdecl,
    importcpp: "GetTextBackground", header: wxh.}
proc setPalette*(this: var WxDC; palette: WxPalette) {.cdecl, importcpp: "SetPalette",
    header: wxh.}
proc setLogicalFunction*(this: var WxDC; function: WxRasterOperationMode) {.cdecl,
    importcpp: "SetLogicalFunction", header: wxh.}
proc getLogicalFunction*(this: WxDC): WxRasterOperationMode {.noSideEffect, cdecl,
    importcpp: "GetLogicalFunction", header: wxh.}
proc getCharHeight*(this: WxDC): WxCoord {.noSideEffect, cdecl,
                                       importcpp: "GetCharHeight", header: wxh.}
proc getCharWidth*(this: WxDC): WxCoord {.noSideEffect, cdecl,
                                      importcpp: "GetCharWidth", header: wxh.}
proc getFontMetrics*(this: WxDC): WxFontMetrics {.noSideEffect, cdecl,
    importcpp: "GetFontMetrics", header: wxh.}
proc getTextExtent*(this: WxDC; string: WxString; x: ptr WxCoord; y: ptr WxCoord;
                   descent: ptr WxCoord = nil; externalLeading: ptr WxCoord = nil;
                   theFont: ptr WxFont = nil) {.noSideEffect, cdecl,
    importcpp: "GetTextExtent", header: wxh.}
proc getTextExtent*(this: WxDC; string: WxString): WxSize {.noSideEffect, cdecl,
    importcpp: "GetTextExtent", header: wxh.}
proc getMultiLineTextExtent*(this: WxDC; string: WxString; width: ptr WxCoord;
                            height: ptr WxCoord; heightLine: ptr WxCoord = nil;
                            font: ptr WxFont = nil) {.noSideEffect, cdecl,
    importcpp: "GetMultiLineTextExtent", header: wxh.}
proc getMultiLineTextExtent*(this: WxDC; string: WxString): WxSize {.noSideEffect,
    cdecl, importcpp: "GetMultiLineTextExtent", header: wxh.}
proc getPartialTextExtents*(this: WxDC; text: WxString; widths: var WxArrayInt): bool {.
    noSideEffect, cdecl, importcpp: "GetPartialTextExtents", header: wxh.}
proc clear*(this: var WxDC) {.cdecl, importcpp: "Clear", header: wxh.}
proc setClippingRegion*(this: var WxDC; x: WxCoord; y: WxCoord; width: WxCoord;
                       height: WxCoord) {.cdecl, importcpp: "SetClippingRegion",
                                        header: wxh.}
proc setClippingRegion*(this: var WxDC; pt: WxPoint; sz: WxSize) {.cdecl,
    importcpp: "SetClippingRegion", header: wxh.}
proc setClippingRegion*(this: var WxDC; rect: WxRect) {.cdecl,
    importcpp: "SetClippingRegion", header: wxh.}
proc setDeviceClippingRegion*(this: var WxDC; region: WxRegion) {.cdecl,
    importcpp: "SetDeviceClippingRegion", header: wxh.}
proc destroyClippingRegion*(this: var WxDC) {.cdecl,
    importcpp: "DestroyClippingRegion", header: wxh.}
proc getClippingBox*(this: WxDC; x: ptr WxCoord; y: ptr WxCoord; w: ptr WxCoord;
                    h: ptr WxCoord) {.noSideEffect, cdecl,
                                   importcpp: "GetClippingBox", header: wxh.}
proc getClippingBox*(this: WxDC; rect: var WxRect) {.noSideEffect, cdecl,
    importcpp: "GetClippingBox", header: wxh.}
proc deviceToLogicalX*(this: WxDC; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalX", header: wxh.}
proc deviceToLogicalY*(this: WxDC; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalY", header: wxh.}
proc deviceToLogicalXRel*(this: WxDC; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalXRel", header: wxh.}
proc deviceToLogicalYRel*(this: WxDC; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "DeviceToLogicalYRel", header: wxh.}
proc logicalToDeviceX*(this: WxDC; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceX", header: wxh.}
proc logicalToDeviceY*(this: WxDC; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceY", header: wxh.}
proc logicalToDeviceXRel*(this: WxDC; x: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceXRel", header: wxh.}
proc logicalToDeviceYRel*(this: WxDC; y: WxCoord): WxCoord {.noSideEffect, cdecl,
    importcpp: "LogicalToDeviceYRel", header: wxh.}
proc setMapMode*(this: var WxDC; mode: WxMappingMode) {.cdecl, importcpp: "SetMapMode",
    header: wxh.}
proc getMapMode*(this: WxDC): WxMappingMode {.noSideEffect, cdecl,
    importcpp: "GetMapMode", header: wxh.}
proc setUserScale*(this: var WxDC; x: cdouble; y: cdouble) {.cdecl,
    importcpp: "SetUserScale", header: wxh.}
proc getUserScale*(this: WxDC; x: ptr cdouble; y: ptr cdouble) {.noSideEffect, cdecl,
    importcpp: "GetUserScale", header: wxh.}
proc setLogicalScale*(this: var WxDC; x: cdouble; y: cdouble) {.cdecl,
    importcpp: "SetLogicalScale", header: wxh.}
proc getLogicalScale*(this: WxDC; x: ptr cdouble; y: ptr cdouble) {.noSideEffect, cdecl,
    importcpp: "GetLogicalScale", header: wxh.}
proc setLogicalOrigin*(this: var WxDC; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetLogicalOrigin", header: wxh.}
proc getLogicalOrigin*(this: WxDC; x: ptr WxCoord; y: ptr WxCoord) {.noSideEffect, cdecl,
    importcpp: "GetLogicalOrigin", header: wxh.}
proc getLogicalOrigin*(this: WxDC): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetLogicalOrigin", header: wxh.}
proc setDeviceOrigin*(this: var WxDC; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetDeviceOrigin", header: wxh.}
proc getDeviceOrigin*(this: WxDC; x: ptr WxCoord; y: ptr WxCoord) {.noSideEffect, cdecl,
    importcpp: "GetDeviceOrigin", header: wxh.}
proc getDeviceOrigin*(this: WxDC): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetDeviceOrigin", header: wxh.}
proc setAxisOrientation*(this: var WxDC; xLeftRight: bool; yBottomUp: bool) {.cdecl,
    importcpp: "SetAxisOrientation", header: wxh.}
proc setDeviceLocalOrigin*(this: var WxDC; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "SetDeviceLocalOrigin", header: wxh.}
proc floodFill*(this: var WxDC; x: WxCoord; y: WxCoord; col: WxColour;
               style: WxFloodFillStyle = wxFLOOD_SURFACE): bool {.cdecl,
    importcpp: "FloodFill", header: wxh.}
proc floodFill*(this: var WxDC; pt: WxPoint; col: WxColour;
               style: WxFloodFillStyle = wxFLOOD_SURFACE): bool {.cdecl,
    importcpp: "FloodFill", header: wxh.}
proc gradientFillConcentric*(this: var WxDC; rect: WxRect; initialColour: WxColour;
                            destColour: WxColour) {.cdecl,
    importcpp: "GradientFillConcentric", header: wxh.}
proc gradientFillConcentric*(this: var WxDC; rect: WxRect; initialColour: WxColour;
                            destColour: WxColour; circleCenter: WxPoint) {.cdecl,
    importcpp: "GradientFillConcentric", header: wxh.}
proc gradientFillLinear*(this: var WxDC; rect: WxRect; initialColour: WxColour;
                        destColour: WxColour; nDirection: WxDirection = wxEAST) {.
    cdecl, importcpp: "GradientFillLinear", header: wxh.}
proc getPixel*(this: WxDC; x: WxCoord; y: WxCoord; col: ptr WxColour): bool {.noSideEffect,
    cdecl, importcpp: "GetPixel", header: wxh.}
proc getPixel*(this: WxDC; pt: WxPoint; col: ptr WxColour): bool {.noSideEffect, cdecl,
    importcpp: "GetPixel", header: wxh.}
proc drawLine*(this: var WxDC; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord) {.cdecl,
    importcpp: "DrawLine", header: wxh.}
proc drawLine*(this: var WxDC; pt1: WxPoint; pt2: WxPoint) {.cdecl,
    importcpp: "DrawLine", header: wxh.}
proc crossHair*(this: var WxDC; x: WxCoord; y: WxCoord) {.cdecl, importcpp: "CrossHair",
    header: wxh.}
proc crossHair*(this: var WxDC; pt: WxPoint) {.cdecl, importcpp: "CrossHair", header: wxh.}
proc drawArc*(this: var WxDC; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord;
             xc: WxCoord; yc: WxCoord) {.cdecl, importcpp: "DrawArc", header: wxh.}
proc drawArc*(this: var WxDC; pt1: WxPoint; pt2: WxPoint; centre: WxPoint) {.cdecl,
    importcpp: "DrawArc", header: wxh.}
proc drawCheckMark*(this: var WxDC; x: WxCoord; y: WxCoord; width: WxCoord;
                   height: WxCoord) {.cdecl, importcpp: "DrawCheckMark", header: wxh.}
proc drawCheckMark*(this: var WxDC; rect: WxRect) {.cdecl, importcpp: "DrawCheckMark",
    header: wxh.}
proc drawEllipticArc*(this: var WxDC; x: WxCoord; y: WxCoord; w: WxCoord; h: WxCoord;
                     sa: cdouble; ea: cdouble) {.cdecl, importcpp: "DrawEllipticArc",
    header: wxh.}
proc drawEllipticArc*(this: var WxDC; pt: WxPoint; sz: WxSize; sa: cdouble; ea: cdouble) {.
    cdecl, importcpp: "DrawEllipticArc", header: wxh.}
proc drawPoint*(this: var WxDC; x: WxCoord; y: WxCoord) {.cdecl, importcpp: "DrawPoint",
    header: wxh.}
proc drawPoint*(this: var WxDC; pt: WxPoint) {.cdecl, importcpp: "DrawPoint", header: wxh.}
proc drawLines*(this: var WxDC; n: cint; points: ptr WxPoint; xoffset: WxCoord = 0;
               yoffset: WxCoord = 0) {.cdecl, importcpp: "DrawLines", header: wxh.}
proc drawLines*(this: var WxDC; list: ptr WxPointList; xoffset: WxCoord = 0;
               yoffset: WxCoord = 0) {.cdecl, importcpp: "DrawLines", header: wxh.}
proc drawPolygon*(this: var WxDC; n: cint; points: ptr WxPoint; xoffset: WxCoord = 0;
                 yoffset: WxCoord = 0; fillStyle: WxPolygonFillMode = wxODDEVEN_RULE) {.
    cdecl, importcpp: "DrawPolygon", header: wxh.}
proc drawPolygon*(this: var WxDC; list: ptr WxPointList; xoffset: WxCoord = 0;
                 yoffset: WxCoord = 0; fillStyle: WxPolygonFillMode = wxODDEVEN_RULE) {.
    cdecl, importcpp: "DrawPolygon", header: wxh.}
proc drawPolyPolygon*(this: var WxDC; n: cint; count: ptr cint; points: ptr WxPoint;
                     xoffset: WxCoord = 0; yoffset: WxCoord = 0;
                     fillStyle: WxPolygonFillMode = wxODDEVEN_RULE) {.cdecl,
    importcpp: "DrawPolyPolygon", header: wxh.}
proc drawRectangle*(this: var WxDC; x: WxCoord; y: WxCoord; width: WxCoord;
                   height: WxCoord) {.cdecl, importcpp: "DrawRectangle", header: wxh.}
proc drawRectangle*(this: var WxDC; pt: WxPoint; sz: WxSize) {.cdecl,
    importcpp: "DrawRectangle", header: wxh.}
proc drawRectangle*(this: var WxDC; rect: WxRect) {.cdecl, importcpp: "DrawRectangle",
    header: wxh.}
proc drawRoundedRectangle*(this: var WxDC; x: WxCoord; y: WxCoord; width: WxCoord;
                          height: WxCoord; radius: cdouble) {.cdecl,
    importcpp: "DrawRoundedRectangle", header: wxh.}
proc drawRoundedRectangle*(this: var WxDC; pt: WxPoint; sz: WxSize; radius: cdouble) {.
    cdecl, importcpp: "DrawRoundedRectangle", header: wxh.}
proc drawRoundedRectangle*(this: var WxDC; r: WxRect; radius: cdouble) {.cdecl,
    importcpp: "DrawRoundedRectangle", header: wxh.}
proc drawCircle*(this: var WxDC; x: WxCoord; y: WxCoord; radius: WxCoord) {.cdecl,
    importcpp: "DrawCircle", header: wxh.}
proc drawCircle*(this: var WxDC; pt: WxPoint; radius: WxCoord) {.cdecl,
    importcpp: "DrawCircle", header: wxh.}
proc drawEllipse*(this: var WxDC; x: WxCoord; y: WxCoord; width: WxCoord; height: WxCoord) {.
    cdecl, importcpp: "DrawEllipse", header: wxh.}
proc drawEllipse*(this: var WxDC; pt: WxPoint; sz: WxSize) {.cdecl,
    importcpp: "DrawEllipse", header: wxh.}
proc drawEllipse*(this: var WxDC; rect: WxRect) {.cdecl, importcpp: "DrawEllipse",
    header: wxh.}
proc drawIcon*(this: var WxDC; icon: WxIcon; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DrawIcon", header: wxh.}
proc drawIcon*(this: var WxDC; icon: WxIcon; pt: WxPoint) {.cdecl, importcpp: "DrawIcon",
    header: wxh.}
proc drawBitmap*(this: var WxDC; bmp: WxBitmap; x: WxCoord; y: WxCoord;
                useMask: bool = false) {.cdecl, importcpp: "DrawBitmap", header: wxh.}
proc drawBitmap*(this: var WxDC; bmp: WxBitmap; pt: WxPoint; useMask: bool = false) {.cdecl,
    importcpp: "DrawBitmap", header: wxh.}
proc drawText*(this: var WxDC; text: WxString; x: WxCoord; y: WxCoord) {.cdecl,
    importcpp: "DrawText", header: wxh.}
proc drawText*(this: var WxDC; text: WxString; pt: WxPoint) {.cdecl,
    importcpp: "DrawText", header: wxh.}
proc drawRotatedText*(this: var WxDC; text: WxString; x: WxCoord; y: WxCoord;
                     angle: cdouble) {.cdecl, importcpp: "DrawRotatedText",
                                     header: wxh.}
proc drawRotatedText*(this: var WxDC; text: WxString; pt: WxPoint; angle: cdouble) {.
    cdecl, importcpp: "DrawRotatedText", header: wxh.}
proc drawLabel*(this: var WxDC; text: WxString; image: WxBitmap; rect: WxRect;
               alignment: cint = wxALIGN_LEFT or wxALIGN_TOP; indexAccel: cint = - 1;
               rectBounding: ptr WxRect = nil) {.cdecl, importcpp: "DrawLabel",
    header: wxh.}
proc drawLabel*(this: var WxDC; text: WxString; rect: WxRect;
               alignment: cint = wxALIGN_LEFT or wxALIGN_TOP; indexAccel: cint = - 1) {.
    cdecl, importcpp: "DrawLabel", header: wxh.}
proc blit*(this: var WxDC; xdest: WxCoord; ydest: WxCoord; width: WxCoord;
          height: WxCoord; source: ptr WxDC; xsrc: WxCoord; ysrc: WxCoord;
          rop: WxRasterOperationMode = wxCOPY; useMask: bool = false;
          xsrcMask: WxCoord = wxDefaultCoord; ysrcMask: WxCoord = wxDefaultCoord): bool {.
    cdecl, importcpp: "Blit", header: wxh.}
proc blit*(this: var WxDC; destPt: WxPoint; sz: WxSize; source: ptr WxDC; srcPt: WxPoint;
          rop: WxRasterOperationMode = wxCOPY; useMask: bool = false;
          srcPtMask: WxPoint = wxDefaultPosition): bool {.cdecl, importcpp: "Blit",
    header: wxh.}
proc stretchBlit*(this: var WxDC; dstX: WxCoord; dstY: WxCoord; dstWidth: WxCoord;
                 dstHeight: WxCoord; source: ptr WxDC; srcX: WxCoord; srcY: WxCoord;
                 srcWidth: WxCoord; srcHeight: WxCoord;
                 rop: WxRasterOperationMode = wxCOPY; useMask: bool = false;
                 srcMaskX: WxCoord = wxDefaultCoord;
                 srcMaskY: WxCoord = wxDefaultCoord): bool {.cdecl,
    importcpp: "StretchBlit", header: wxh.}
proc stretchBlit*(this: var WxDC; dstPt: WxPoint; dstSize: WxSize; source: ptr WxDC;
                 srcPt: WxPoint; srcSize: WxSize;
                 rop: WxRasterOperationMode = wxCOPY; useMask: bool = false;
                 srcMaskPt: WxPoint = wxDefaultPosition): bool {.cdecl,
    importcpp: "StretchBlit", header: wxh.}
proc getAsBitmap*(this: WxDC; subrect: ptr WxRect = cast[ptr WxRect](nil)): WxBitmap {.
    noSideEffect, cdecl, importcpp: "GetAsBitmap", header: wxh.}
proc drawSpline*(this: var WxDC; x1: WxCoord; y1: WxCoord; x2: WxCoord; y2: WxCoord;
                x3: WxCoord; y3: WxCoord) {.cdecl, importcpp: "DrawSpline", header: wxh.}
proc drawSpline*(this: var WxDC; n: cint; points: ptr WxPoint) {.cdecl,
    importcpp: "DrawSpline", header: wxh.}
proc drawSpline*(this: var WxDC; points: ptr WxPointList) {.cdecl,
    importcpp: "DrawSpline", header: wxh.}
proc getGraphicsContext*(this: WxDC): ptr WxGraphicsContext {.noSideEffect, cdecl,
    importcpp: "GetGraphicsContext", header: wxh.}
proc setGraphicsContext*(this: var WxDC; ctx: ptr WxGraphicsContext) {.cdecl,
    importcpp: "SetGraphicsContext", header: wxh.}

type
  WxDCTextColourChanger* {.importcpp: "wxDCTextColourChanger", header: wxh.} = object
  

proc constructwxDCTextColourChanger*(dc: var WxDC): WxDCTextColourChanger {.cdecl,
    constructor, importcpp: "wxDCTextColourChanger(@)", header: wxh.}
proc constructwxDCTextColourChanger*(dc: var WxDC; col: WxColour): WxDCTextColourChanger {.
    cdecl, constructor, importcpp: "wxDCTextColourChanger(@)", header: wxh.}
proc destroywxDCTextColourChanger*(this: var WxDCTextColourChanger) {.cdecl,
    importcpp: "#.~wxDCTextColourChanger()", header: wxh.}
proc set*(this: var WxDCTextColourChanger; col: WxColour) {.cdecl, importcpp: "Set",
    header: wxh.}

type
  WxDCPenChanger* {.importcpp: "wxDCPenChanger", header: wxh.} = object
  

proc constructwxDCPenChanger*(dc: var WxDC; pen: WxPen): WxDCPenChanger {.cdecl,
    constructor, importcpp: "wxDCPenChanger(@)", header: wxh.}
proc destroywxDCPenChanger*(this: var WxDCPenChanger) {.cdecl,
    importcpp: "#.~wxDCPenChanger()", header: wxh.}

type
  WxDCBrushChanger* {.importcpp: "wxDCBrushChanger", header: wxh.} = object
  

proc constructwxDCBrushChanger*(dc: var WxDC; brush: WxBrush): WxDCBrushChanger {.
    cdecl, constructor, importcpp: "wxDCBrushChanger(@)", header: wxh.}
proc destroywxDCBrushChanger*(this: var WxDCBrushChanger) {.cdecl,
    importcpp: "#.~wxDCBrushChanger()", header: wxh.}

type
  WxDCClipper* {.importcpp: "wxDCClipper", header: wxh.} = object
  

proc constructwxDCClipper*(dc: var WxDC; r: WxRegion): WxDCClipper {.cdecl, constructor,
    importcpp: "wxDCClipper(@)", header: wxh.}
proc constructwxDCClipper*(dc: var WxDC; r: WxRect): WxDCClipper {.cdecl, constructor,
    importcpp: "wxDCClipper(@)", header: wxh.}
proc constructwxDCClipper*(dc: var WxDC; x: WxCoord; y: WxCoord; w: WxCoord; h: WxCoord): WxDCClipper {.
    cdecl, constructor, importcpp: "wxDCClipper(@)", header: wxh.}
proc destroywxDCClipper*(this: var WxDCClipper) {.cdecl,
    importcpp: "#.~wxDCClipper()", header: wxh.}

type
  WxDCFontChanger* {.importcpp: "wxDCFontChanger", header: wxh.} = object
  

proc constructwxDCFontChanger*(dc: var WxDC): WxDCFontChanger {.cdecl, constructor,
    importcpp: "wxDCFontChanger(@)", header: wxh.}
proc constructwxDCFontChanger*(dc: var WxDC; font: WxFont): WxDCFontChanger {.cdecl,
    constructor, importcpp: "wxDCFontChanger(@)", header: wxh.}
proc set*(this: var WxDCFontChanger; font: WxFont) {.cdecl, importcpp: "Set", header: wxh.}
proc destroywxDCFontChanger*(this: var WxDCFontChanger) {.cdecl,
    importcpp: "#.~wxDCFontChanger()", header: wxh.}