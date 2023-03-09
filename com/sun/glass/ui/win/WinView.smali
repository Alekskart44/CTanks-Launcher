.class final Lcom/sun/glass/ui/win/WinView;
.super Lcom/sun/glass/ui/View;
.source "WinView.java"


# static fields
.field private static final multiClickMaxX:I

.field private static final multiClickMaxY:I

.field private static final multiClickTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    invoke-static {}, Lcom/sun/glass/ui/win/WinView;->_initIDs()V

    .line 44
    invoke-static {}, Lcom/sun/glass/ui/win/WinView;->_getMultiClickTime_impl()J

    move-result-wide v0

    sput-wide v0, Lcom/sun/glass/ui/win/WinView;->multiClickTime:J

    .line 45
    invoke-static {}, Lcom/sun/glass/ui/win/WinView;->_getMultiClickMaxX_impl()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/win/WinView;->multiClickMaxX:I

    .line 46
    invoke-static {}, Lcom/sun/glass/ui/win/WinView;->_getMultiClickMaxY_impl()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/win/WinView;->multiClickMaxY:I

    .line 47
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/sun/glass/ui/View;-><init>()V

    .line 55
    return-void
.end method

.method private static native _getMultiClickMaxX_impl()I
.end method

.method private static native _getMultiClickMaxY_impl()I
.end method

.method private static native _getMultiClickTime_impl()J
.end method

.method private static native _initIDs()V
.end method

.method static getMultiClickMaxX_impl()I
    .registers 1

    .line 66
    sget v0, Lcom/sun/glass/ui/win/WinView;->multiClickMaxX:I

    return v0
.end method

.method static getMultiClickMaxY_impl()I
    .registers 1

    .line 70
    sget v0, Lcom/sun/glass/ui/win/WinView;->multiClickMaxY:I

    return v0
.end method

.method static getMultiClickTime_impl()J
    .registers 2

    .line 62
    sget-wide v0, Lcom/sun/glass/ui/win/WinView;->multiClickTime:J

    return-wide v0
.end method


# virtual methods
.method protected native _begin(J)V
.end method

.method protected native _close(J)Z
.end method

.method protected native _create(Ljava/util/Map;)J
.end method

.method protected native _enableInputMethodEvents(JZ)V
.end method

.method protected native _end(J)V
.end method

.method protected native _enterFullscreen(JZZZ)Z
.end method

.method protected native _exitFullscreen(JZ)V
.end method

.method protected native _finishInputMethodComposition(J)V
.end method

.method protected _getNativeFrameBuffer(J)I
    .registers 4

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected native _getNativeView(J)J
.end method

.method protected native _getX(J)I
.end method

.method protected native _getY(J)I
.end method

.method protected native _scheduleRepaint(J)V
.end method

.method protected native _setParent(JJ)V
.end method

.method protected native _uploadPixels(JLcom/sun/glass/ui/Pixels;)V
.end method

.method protected notifyResize(II)V
    .registers 3

    .line 96
    invoke-super {p0, p1, p2}, Lcom/sun/glass/ui/View;->notifyResize(II)V

    .line 101
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinView;->updateLocation()V

    .line 102
    return-void
.end method
