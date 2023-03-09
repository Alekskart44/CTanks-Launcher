.class final Lcom/sun/glass/ui/win/WinGestureSupport;
.super Ljava/lang/Object;
.source "WinGestureSupport.java"


# static fields
.field private static final gestures:Lcom/sun/glass/ui/GestureSupport;

.field private static isDirect:Z = false

.field private static modifiers:I = 0x0

.field private static final multiplier:D = 1.0

.field private static final touches:Lcom/sun/glass/ui/TouchInputSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    .line 38
    invoke-static {}, Lcom/sun/glass/ui/win/WinGestureSupport;->_initIDs()V

    .line 44
    new-instance v0, Lcom/sun/glass/ui/GestureSupport;

    invoke-direct {v0, v2}, Lcom/sun/glass/ui/GestureSupport;-><init>(Z)V

    sput-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    .line 45
    new-instance v0, Lcom/sun/glass/ui/TouchInputSupport;

    sget-object v1, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    .line 46
    invoke-virtual {v1}, Lcom/sun/glass/ui/GestureSupport;->createTouchCountListener()Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/sun/glass/ui/TouchInputSupport;-><init>(Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;Z)V

    sput-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    .line 45
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _initIDs()V
.end method

.method private static gestureFinished(Lcom/sun/glass/ui/View;IZ)V
    .registers 14

    const/4 v10, 0x2

    const v6, 0x7fffffff

    .line 68
    sget-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p1, :cond_1d

    .line 69
    sget-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    sget v2, Lcom/sun/glass/ui/win/WinGestureSupport;->modifiers:I

    sget-boolean v4, Lcom/sun/glass/ui/win/WinGestureSupport;->isDirect:Z

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/sun/glass/ui/GestureSupport;->handleScrollingEnd(Lcom/sun/glass/ui/View;IIZZIIII)V

    .line 77
    :cond_1d
    sget-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_35

    if-ge p1, v10, :cond_35

    .line 78
    sget-object v1, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    sget v3, Lcom/sun/glass/ui/win/WinGestureSupport;->modifiers:I

    sget-boolean v4, Lcom/sun/glass/ui/win/WinGestureSupport;->isDirect:Z

    move-object v2, p0

    move v5, p2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v1 .. v9}, Lcom/sun/glass/ui/GestureSupport;->handleRotationEnd(Lcom/sun/glass/ui/View;IZZIIII)V

    .line 85
    :cond_35
    sget-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_4d

    if-ge p1, v10, :cond_4d

    .line 86
    sget-object v1, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    sget v3, Lcom/sun/glass/ui/win/WinGestureSupport;->modifiers:I

    sget-boolean v4, Lcom/sun/glass/ui/win/WinGestureSupport;->isDirect:Z

    move-object v2, p0

    move v5, p2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v1 .. v9}, Lcom/sun/glass/ui/GestureSupport;->handleZoomingEnd(Lcom/sun/glass/ui/View;IZZIIII)V

    .line 92
    :cond_4d
    return-void
.end method

.method public static gesturePerformed(Lcom/sun/glass/ui/View;IZZIIIIFFFFFFF)V
    .registers 36

    .line 105
    sput p1, Lcom/sun/glass/ui/win/WinGestureSupport;->modifiers:I

    .line 106
    sput-boolean p2, Lcom/sun/glass/ui/win/WinGestureSupport;->isDirect:Z

    .line 108
    sget-object v2, Lcom/sun/glass/ui/win/WinGestureSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    invoke-virtual {v2}, Lcom/sun/glass/ui/TouchInputSupport;->getTouchCount()I

    move-result v20

    .line 110
    const/4 v2, 0x2

    move/from16 v0, v20

    if-lt v0, v2, :cond_46

    .line 111
    sget-object v3, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    move/from16 v0, p12

    float-to-double v12, v0

    move/from16 v0, p13

    float-to-double v14, v0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v3 .. v15}, Lcom/sun/glass/ui/GestureSupport;->handleTotalZooming(Lcom/sun/glass/ui/View;IZZIIIIDD)V

    .line 115
    sget-object v3, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    move/from16 v0, p14

    float-to-double v4, v0

    .line 116
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 115
    invoke-virtual/range {v3 .. v13}, Lcom/sun/glass/ui/GestureSupport;->handleTotalRotation(Lcom/sun/glass/ui/View;IZZIIIID)V

    .line 120
    :cond_46
    sget-object v2, Lcom/sun/glass/ui/win/WinGestureSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    move/from16 v0, p10

    float-to-double v12, v0

    move/from16 v0, p11

    float-to-double v14, v0

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v20

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v2 .. v19}, Lcom/sun/glass/ui/GestureSupport;->handleTotalScrolling(Lcom/sun/glass/ui/View;IZZIIIIIDDDD)V

    .line 123
    return-void
.end method

.method public static inertiaGestureFinished(Lcom/sun/glass/ui/View;)V
    .registers 3

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sun/glass/ui/win/WinGestureSupport;->gestureFinished(Lcom/sun/glass/ui/View;IZ)V

    .line 96
    return-void
.end method

.method public static notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V
    .registers 5

    .line 53
    sget-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sun/glass/ui/TouchInputSupport;->notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V

    .line 54
    return-void
.end method

.method public static notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V
    .registers 3

    .line 62
    sget-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/TouchInputSupport;->notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V

    .line 63
    sget-object v0, Lcom/sun/glass/ui/win/WinGestureSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    invoke-virtual {v0}, Lcom/sun/glass/ui/TouchInputSupport;->getTouchCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sun/glass/ui/win/WinGestureSupport;->gestureFinished(Lcom/sun/glass/ui/View;IZ)V

    .line 64
    return-void
.end method

.method public static notifyNextTouchEvent(Lcom/sun/glass/ui/View;IJIIII)V
    .registers 18

    .line 58
    sget-object v1, Lcom/sun/glass/ui/win/WinGestureSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/sun/glass/ui/TouchInputSupport;->notifyNextTouchEvent(Lcom/sun/glass/ui/View;IJIIII)V

    .line 59
    return-void
.end method
