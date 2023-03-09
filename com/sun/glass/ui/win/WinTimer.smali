.class final Lcom/sun/glass/ui/win/WinTimer;
.super Lcom/sun/glass/ui/Timer;
.source "WinTimer.java"


# static fields
.field private static final maxPeriod:I

.field private static final minPeriod:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    invoke-static {}, Lcom/sun/glass/ui/win/WinTimer;->_getMinPeriod()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/win/WinTimer;->minPeriod:I

    .line 39
    invoke-static {}, Lcom/sun/glass/ui/win/WinTimer;->_getMaxPeriod()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/win/WinTimer;->maxPeriod:I

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/Timer;-><init>(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method private static native _getMaxPeriod()I
.end method

.method private static native _getMinPeriod()I
.end method

.method static getMaxPeriod_impl()I
    .registers 1

    .line 56
    sget v0, Lcom/sun/glass/ui/win/WinTimer;->maxPeriod:I

    return v0
.end method

.method static getMinPeriod_impl()I
    .registers 1

    .line 52
    sget v0, Lcom/sun/glass/ui/win/WinTimer;->minPeriod:I

    return v0
.end method


# virtual methods
.method protected _pause(J)V
    .registers 3

    .line 64
    return-void
.end method

.method protected _resume(J)V
    .registers 3

    .line 65
    return-void
.end method

.method protected _start(Ljava/lang/Runnable;)J
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "vsync timer not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected native _start(Ljava/lang/Runnable;I)J
.end method

.method protected native _stop(J)V
.end method
