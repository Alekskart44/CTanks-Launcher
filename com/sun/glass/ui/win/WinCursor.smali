.class final Lcom/sun/glass/ui/win/WinCursor;
.super Lcom/sun/glass/ui/Cursor;
.source "WinCursor.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/sun/glass/ui/win/WinCursor;->_initIDs()V

    .line 39
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/Cursor;-><init>(I)V

    .line 43
    return-void
.end method

.method protected constructor <init>(IILcom/sun/glass/ui/Pixels;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/glass/ui/Cursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    .line 47
    return-void
.end method

.method private static native _getBestSize(II)Lcom/sun/glass/ui/Size;
.end method

.method private static native _initIDs()V
.end method

.method private static native _setVisible(Z)V
.end method

.method static getBestSize_impl(II)Lcom/sun/glass/ui/Size;
    .registers 3

    .line 59
    invoke-static {p0, p1}, Lcom/sun/glass/ui/win/WinCursor;->_getBestSize(II)Lcom/sun/glass/ui/Size;

    move-result-object v0

    return-object v0
.end method

.method static setVisible_impl(Z)V
    .registers 1

    .line 55
    invoke-static {p0}, Lcom/sun/glass/ui/win/WinCursor;->_setVisible(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method protected native _createCursor(IILcom/sun/glass/ui/Pixels;)J
.end method
