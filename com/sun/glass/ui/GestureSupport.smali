.class public final Lcom/sun/glass/ui/GestureSupport;
.super Ljava/lang/Object;
.source "GestureSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/GestureSupport$GestureState;
    }
.end annotation


# static fields
.field private static final THRESHOLD_EXPANSION:D = 0.01

.field private static final THRESHOLD_ROTATE:D

.field private static final THRESHOLD_SCALE:D = 0.01

.field private static final THRESHOLD_SCROLL:D = 1.0


# instance fields
.field private multiplierX:D

.field private multiplierY:D

.field private final rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

.field private final scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

.field private final swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

.field private totalExpansion:D

.field private totalRotation:D

.field private totalScale:D

.field private totalScrollX:D

.field private totalScrollY:D

.field private zoomWithExpansion:Z

.field private final zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 73
    const-wide v0, 0x3f91df46a2529d39L  # 0.017453292519943295

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sun/glass/ui/GestureSupport;->THRESHOLD_ROTATE:D

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 8

    const-wide/high16 v4, 0x7ff8000000000000L  # Double.NaN

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-direct {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 76
    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-direct {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 77
    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-direct {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 78
    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-direct {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    .line 80
    iput-wide v4, p0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 81
    iput-wide v4, p0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 82
    iput-wide v2, p0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 83
    iput-wide v4, p0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 85
    iput-wide v2, p0, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    .line 86
    iput-wide v2, p0, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    .line 91
    iput-boolean p1, p0, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    .line 92
    return-void
.end method

.method public static handleScrollingPerformed(Lcom/sun/glass/ui/View;IZZIIIIIDDDD)V
    .registers 40

    .line 368
    const/4 v1, 0x2

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p9

    move-wide/from16 v16, p11

    move-wide/from16 v18, p13

    move-wide/from16 v20, p15

    invoke-virtual/range {v0 .. v21}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    .line 371
    return-void
.end method

.method public static handleSwipePerformed(Lcom/sun/glass/ui/View;IZZIIIIII)V
    .registers 21

    .line 356
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/sun/glass/ui/View;->notifySwipeGestureEvent(IIZZIIIIII)V

    .line 359
    return-void
.end method

.method private synthetic lambda$createTouchCountListener$0(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V
    .registers 15

    const/4 v5, 0x0

    const v6, 0x7fffffff

    .line 376
    .line 378
    invoke-virtual {p0}, Lcom/sun/glass/ui/GestureSupport;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 379
    invoke-virtual {p1}, Lcom/sun/glass/ui/TouchInputSupport;->getTouchCount()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v4, p4

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/sun/glass/ui/GestureSupport;->handleScrollingEnd(Lcom/sun/glass/ui/View;IIZZIIII)V

    .line 387
    :cond_18
    invoke-virtual {p0}, Lcom/sun/glass/ui/GestureSupport;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, v6

    move v8, v6

    move v9, v6

    .line 388
    invoke-virtual/range {v1 .. v9}, Lcom/sun/glass/ui/GestureSupport;->handleRotationEnd(Lcom/sun/glass/ui/View;IZZIIII)V

    .line 395
    :cond_28
    invoke-virtual {p0}, Lcom/sun/glass/ui/GestureSupport;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, v6

    move v8, v6

    move v9, v6

    .line 396
    invoke-virtual/range {v1 .. v9}, Lcom/sun/glass/ui/GestureSupport;->handleZoomingEnd(Lcom/sun/glass/ui/View;IZZIIII)V

    .line 402
    :cond_38
    return-void
.end method

.method private static multiplicativeDelta(DD)D
    .registers 6

    .line 95
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_9

    .line 96
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    .line 98
    :goto_8
    return-wide v0

    :cond_9
    div-double v0, p2, p0

    goto :goto_8
.end method

.method private setRotating(Z)I
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v0

    return v0
.end method

.method private setScrolling(Z)I
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v0

    return v0
.end method

.method private setSwiping(Z)I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v0

    return v0
.end method

.method private setZooming(Z)I
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->updateProgress(Z)I

    move-result v0

    return v0
.end method


# virtual methods
.method public createTouchCountListener()Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;
    .registers 2

    .line 374
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 375
    invoke-custom {p0}, call_site_1901("touchCountChanged", (Lcom/sun/glass/ui/GestureSupport;)Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;, (Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V, invoke-direct@Lcom/sun/glass/ui/GestureSupport;->lambda$createTouchCountListener$0(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V, (Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method

.method public handleDeltaRotation(Lcom/sun/glass/ui/View;IZZIIIID)V
    .registers 28

    .line 306
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 308
    const-wide/16 v2, 0x0

    .line 311
    :cond_12
    add-double v2, v2, p9

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 312
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sun/glass/ui/GestureSupport;->setRotating(Z)I

    move-result v4

    .line 314
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v15}, Lcom/sun/glass/ui/View;->notifyRotateGestureEvent(IIZZIIIIDD)V

    .line 316
    return-void
.end method

.method public handleDeltaScrolling(Lcom/sun/glass/ui/View;IZZIIIIIDDDD)V
    .registers 44

    .line 323
    move-wide/from16 v0, p14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    .line 324
    move-wide/from16 v0, p16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    .line 326
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 327
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 328
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 329
    const-wide/16 v6, 0x0

    .line 330
    const-wide/16 v4, 0x0

    .line 333
    :cond_24
    add-double v6, v6, p10

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 334
    add-double v4, v4, p12

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 336
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sun/glass/ui/GestureSupport;->setScrolling(Z)I

    move-result v5

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    move-wide/from16 v20, v0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    move-wide/from16 v22, p14

    move-wide/from16 v24, p16

    invoke-virtual/range {v4 .. v25}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    .line 342
    return-void
.end method

.method public handleDeltaZooming(Lcom/sun/glass/ui/View;IZZIIIIDD)V
    .registers 34

    .line 274
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 275
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 276
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 277
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 278
    const-wide/16 v2, 0x0

    move-wide v6, v4

    .line 287
    :goto_19
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    add-double v4, v4, p9

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 288
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    if-eqz v4, :cond_60

    .line 289
    add-double v2, v2, p11

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 294
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sun/glass/ui/GestureSupport;->setZooming(Z)I

    move-result v4

    .line 296
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 298
    invoke-static {v6, v7, v2, v3}, Lcom/sun/glass/ui/GestureSupport;->multiplicativeDelta(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    move-wide/from16 v18, v0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v14, p11

    .line 296
    invoke-virtual/range {v3 .. v19}, Lcom/sun/glass/ui/View;->notifyZoomGestureEvent(IIZZIIIIDDDD)V

    .line 300
    return-void

    .line 291
    :cond_60
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    goto :goto_2e

    :cond_67
    move-wide v6, v4

    goto :goto_19
.end method

.method public handleRotationEnd(Lcom/sun/glass/ui/View;IZZIIII)V
    .registers 23

    .line 150
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 151
    if-eqz p4, :cond_8

    .line 157
    :goto_7
    return-void

    .line 154
    :cond_8
    const/4 v2, 0x3

    const-wide/16 v10, 0x0

    iget-wide v12, p0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v13}, Lcom/sun/glass/ui/View;->notifyRotateGestureEvent(IIZZIIIIDD)V

    goto :goto_7
.end method

.method public handleScrollingEnd(Lcom/sun/glass/ui/View;IIZZIIII)V
    .registers 34

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v2}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 137
    if-eqz p5, :cond_a

    .line 145
    :goto_9
    return-void

    .line 140
    :cond_a
    const/4 v3, 0x3

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    move-wide/from16 v22, v0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v23}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    goto :goto_9
.end method

.method public handleSwipe(Lcom/sun/glass/ui/View;IZZIIIIII)V
    .registers 22

    .line 347
    invoke-direct {p0, p4}, Lcom/sun/glass/ui/GestureSupport;->setSwiping(Z)I

    move-result v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 348
    invoke-virtual/range {v0 .. v10}, Lcom/sun/glass/ui/View;->notifySwipeGestureEvent(IIZZIIIIII)V

    .line 350
    return-void
.end method

.method public handleSwipeEnd(Lcom/sun/glass/ui/View;IZZIIII)V
    .registers 20

    .line 175
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 176
    if-eqz p4, :cond_8

    .line 182
    :goto_7
    return-void

    .line 179
    :cond_8
    const/4 v1, 0x3

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/sun/glass/ui/View;->notifySwipeGestureEvent(IIZZIIIIII)V

    goto :goto_7
.end method

.method public handleTotalRotation(Lcom/sun/glass/ui/View;IZZIIIID)V
    .registers 30

    .line 222
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 224
    const-wide/16 v4, 0x0

    .line 227
    :cond_12
    sub-double v6, p9, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sget-wide v8, Lcom/sun/glass/ui/GestureSupport;->THRESHOLD_ROTATE:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1f

    .line 237
    :goto_1e
    return-void

    .line 231
    :cond_1f
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalRotation:D

    .line 232
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sun/glass/ui/GestureSupport;->setRotating(Z)I

    move-result v6

    .line 234
    sub-double v14, p9, v4

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v16, p9

    invoke-virtual/range {v5 .. v17}, Lcom/sun/glass/ui/View;->notifyRotateGestureEvent(IIZZIIIIDD)V

    goto :goto_1e
.end method

.method public handleTotalScrolling(Lcom/sun/glass/ui/View;IZZIIIIIDDDD)V
    .registers 44

    .line 244
    move-wide/from16 v0, p14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierX:D

    .line 245
    move-wide/from16 v0, p16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->multiplierY:D

    .line 247
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 248
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 250
    const-wide/16 v8, 0x0

    .line 251
    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 254
    :goto_25
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    sub-double v4, p10, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    cmpg-double v4, v4, v10

    if-gez v4, :cond_46

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    sub-double v4, p12, v4

    .line 255
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    cmpg-double v4, v4, v10

    if-gez v4, :cond_46

    .line 268
    :goto_45
    return-void

    .line 259
    :cond_46
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScrollX:D

    .line 260
    move-wide/from16 v0, p12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScrollY:D

    .line 261
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sun/glass/ui/GestureSupport;->setScrolling(Z)I

    move-result v5

    .line 263
    sub-double v14, p10, v8

    sub-double v16, p12, v6

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-wide/from16 v18, p10

    move-wide/from16 v20, p12

    move-wide/from16 v22, p14

    move-wide/from16 v24, p16

    invoke-virtual/range {v4 .. v25}, Lcom/sun/glass/ui/View;->notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V

    goto :goto_45

    :cond_7c
    move-wide v6, v4

    goto :goto_25
.end method

.method public handleTotalZooming(Lcom/sun/glass/ui/View;IZZIIIIDD)V
    .registers 36

    .line 188
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 189
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 190
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 191
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 192
    const-wide/16 v4, 0x0

    move-wide v8, v6

    .line 195
    :goto_19
    sub-double v6, p9, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v6, v6, v10

    if-gez v6, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    if-eqz v6, :cond_3d

    sub-double v6, p11, v4

    .line 197
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v6, v6, v10

    if-gez v6, :cond_3e

    .line 216
    :cond_3d
    :goto_3d
    return-void

    .line 201
    :cond_3e
    const-wide/high16 v16, 0x7ff8000000000000L  # Double.NaN

    .line 202
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sun/glass/ui/GestureSupport;->zoomWithExpansion:Z

    if-eqz v6, :cond_7c

    .line 203
    sub-double v16, p11, v4

    move-wide/from16 v20, p11

    .line 208
    :goto_4a
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 209
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    .line 210
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sun/glass/ui/GestureSupport;->setZooming(Z)I

    move-result v6

    .line 212
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    .line 214
    invoke-static {v8, v9, v4, v5}, Lcom/sun/glass/ui/GestureSupport;->multiplicativeDelta(DD)D

    move-result-wide v14

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v18, p9

    .line 212
    invoke-virtual/range {v5 .. v21}, Lcom/sun/glass/ui/View;->notifyZoomGestureEvent(IIZZIIIIDDDD)V

    goto :goto_3d

    .line 205
    :cond_7c
    const-wide/high16 v20, 0x7ff8000000000000L  # Double.NaN

    goto :goto_4a

    :cond_7f
    move-wide v8, v6

    goto :goto_19
.end method

.method public handleZoomingEnd(Lcom/sun/glass/ui/View;IZZIIII)V
    .registers 29

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v2}, Lcom/sun/glass/ui/GestureSupport$GestureState;->setIdle()V

    .line 163
    if-eqz p4, :cond_a

    .line 170
    :goto_9
    return-void

    .line 166
    :cond_a
    const/4 v4, 0x3

    const-wide/high16 v12, 0x7ff8000000000000L  # Double.NaN

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalScale:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/glass/ui/GestureSupport;->totalExpansion:D

    move-wide/from16 v18, v0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v19}, Lcom/sun/glass/ui/View;->notifyZoomGestureEvent(IIZZIIIIDDDD)V

    goto :goto_9
.end method

.method public isRotating()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->rotating:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isScrolling()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->scrolling:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSwiping()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->swiping:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isZooming()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport;->zooming:Lcom/sun/glass/ui/GestureSupport$GestureState;

    invoke-virtual {v0}, Lcom/sun/glass/ui/GestureSupport$GestureState;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
