.class public final Ljavafx/animation/PathTransition;
.super Ljavafx/animation/Transition;
.source "PathTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/animation/PathTransition$OrientationType;,
        Ljavafx/animation/PathTransition$Segment;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

.field private static final DEFAULT_PATH:Ljavafx/scene/shape/Shape;

.field private static final SMOOTH_ZONE:I = 0xa


# instance fields
.field private cachedIsNormalRequired:Z

.field private cachedNode:Ljavafx/scene/Node;

.field private duration:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/PathTransition$OrientationType;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private final segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/animation/PathTransition$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private totalLength:D


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 105
    sput-object v2, Ljavafx/animation/PathTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 146
    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    .line 200
    sput-object v2, Ljavafx/animation/PathTransition;->DEFAULT_PATH:Ljavafx/scene/shape/Shape;

    .line 250
    sget-object v0, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    sput-object v0, Ljavafx/animation/PathTransition;->DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 304
    sget-object v0, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {p0, v0, v1, v1}, Ljavafx/animation/PathTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/Node;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;)V
    .registers 4

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavafx/animation/PathTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/Node;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/Node;)V
    .registers 6

    .line 281
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavafx/animation/PathTransition;->totalLength:D

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {p0, p1}, Ljavafx/animation/PathTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 283
    invoke-virtual {p0, p2}, Ljavafx/animation/PathTransition;->setPath(Ljavafx/scene/shape/Shape;)V

    .line 284
    invoke-virtual {p0, p3}, Ljavafx/animation/PathTransition;->setNode(Ljavafx/scene/Node;)V

    .line 285
    invoke-virtual {p0, p1}, Ljavafx/animation/PathTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 286
    return-void
.end method

.method private findSegment(IID)I
    .registers 10

    .line 419
    if-ne p1, p2, :cond_19

    .line 421
    iget-object v0, p0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/PathTransition$Segment;

    iget-boolean v0, v0, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    if-eqz v0, :cond_18

    if-lez p1, :cond_18

    .line 422
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v0, v1, p3, p4}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result p1

    .line 427
    :cond_18
    :goto_18
    return p1

    .line 426
    :cond_19
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    add-int v1, p1, v0

    .line 427
    iget-object v0, p0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/PathTransition$Segment;

    iget-wide v2, v0, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    cmpl-double v0, v2, p3

    if-lez v0, :cond_33

    .line 428
    invoke-direct {p0, p1, v1, p3, p4}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result v0

    :goto_31
    move p1, v0

    .line 427
    goto :goto_18

    .line 429
    :cond_33
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result v0

    goto :goto_31
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 354
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    goto :goto_6
.end method

.method private static interpolate(DDD)D
    .registers 12

    .line 437
    sub-double v0, p2, p0

    .line 438
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L  # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1b

    .line 439
    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_24

    const-wide v0, -0x3f89800000000000L  # -360.0

    :goto_1a
    add-double/2addr p2, v0

    .line 441
    :cond_1b
    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljavafx/animation/PathTransition;->normalize(D)D

    move-result-wide v0

    return-wide v0

    .line 439
    :cond_24
    const-wide v0, 0x4076800000000000L  # 360.0

    goto :goto_1a
.end method

.method private static normalize(D)D
    .registers 8

    const-wide v4, 0x4076800000000000L  # 360.0

    .line 447
    move-wide v0, p0

    :goto_6
    cmpl-double v2, v0, v4

    if-lez v2, :cond_c

    .line 448
    sub-double/2addr v0, v4

    goto :goto_6

    .line 450
    :cond_c
    :goto_c
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_14

    .line 451
    add-double/2addr v0, v4

    goto :goto_c

    .line 453
    :cond_14
    return-wide v0
.end method

.method private recomputeSegments()V
    .registers 11

    .line 376
    iget-object v0, p0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->getPath()Ljavafx/scene/shape/Shape;

    move-result-object v2

    .line 378
    invoke-static {}, Ljavafx/animation/PathTransition$Segment;->getZeroSegment()Ljavafx/animation/PathTransition$Segment;

    move-result-object v1

    .line 379
    invoke-static {}, Ljavafx/animation/PathTransition$Segment;->getZeroSegment()Ljavafx/animation/PathTransition$Segment;

    move-result-object v0

    .line 381
    const/4 v3, 0x6

    new-array v7, v3, [F

    .line 382
    invoke-static {v2}, Lcom/sun/javafx/scene/shape/ShapeHelper;->configShape(Ljavafx/scene/shape/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v3

    invoke-static {v2}, Lcom/sun/javafx/scene/NodeHelper;->getLeafTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v2, v4}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v8

    move-object v6, v0

    move-object v4, v1

    :goto_24
    invoke-interface {v8}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_63

    .line 383
    const/4 v5, 0x0

    .line 384
    invoke-interface {v8, v7}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v9

    .line 385
    const/4 v0, 0x0

    aget v0, v7, v0

    float-to-double v0, v0

    .line 386
    const/4 v2, 0x1

    aget v2, v7, v2

    float-to-double v2, v2

    .line 388
    packed-switch v9, :pswitch_data_6c

    :pswitch_3a  #0x2, 0x3
    move-object v0, v5

    move-object v1, v4

    .line 405
    :goto_3c
    if-eqz v0, :cond_68

    .line 406
    iget-object v2, p0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_43
    invoke-interface {v8}, Lcom/sun/javafx/geom/PathIterator;->next()V

    move-object v6, v0

    move-object v4, v1

    goto :goto_24

    .line 390
    :pswitch_49  #0x0
    iget-wide v4, v6, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    invoke-static/range {v0 .. v5}, Ljavafx/animation/PathTransition$Segment;->newMoveTo(DDD)Ljavafx/animation/PathTransition$Segment;

    move-result-object v2

    move-object v0, v2

    move-object v1, v2

    .line 392
    goto :goto_3c

    .line 394
    :pswitch_52  #0x4
    invoke-static {v6, v4}, Ljavafx/animation/PathTransition$Segment;->newClosePath(Ljavafx/animation/PathTransition$Segment;Ljavafx/animation/PathTransition$Segment;)Ljavafx/animation/PathTransition$Segment;

    move-result-object v0

    .line 395
    if-nez v0, :cond_6a

    .line 397
    invoke-virtual {v6, v4}, Ljavafx/animation/PathTransition$Segment;->convertToClosePath(Ljavafx/animation/PathTransition$Segment;)V

    move-object v1, v4

    goto :goto_3c

    .line 401
    :pswitch_5d  #0x1
    invoke-static {v6, v0, v1, v2, v3}, Ljavafx/animation/PathTransition$Segment;->newLineTo(Ljavafx/animation/PathTransition$Segment;DD)Ljavafx/animation/PathTransition$Segment;

    move-result-object v0

    move-object v1, v4

    goto :goto_3c

    .line 410
    :cond_63
    iget-wide v0, v6, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    iput-wide v0, p0, Ljavafx/animation/PathTransition;->totalLength:D

    .line 411
    return-void

    :cond_68
    move-object v0, v6

    goto :goto_43

    :cond_6a
    move-object v1, v4

    goto :goto_3c

    .line 388
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_49  #00000000
        :pswitch_5d  #00000001
        :pswitch_3a  #00000002
        :pswitch_3a  #00000003
        :pswitch_52  #00000004
    .end packed-switch
.end method


# virtual methods
.method public final durationProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 160
    new-instance v0, Ljavafx/animation/PathTransition$1;

    sget-object v1, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/PathTransition$1;-><init>(Ljavafx/animation/PathTransition;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 186
    :cond_d
    iget-object v0, p0, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .registers 2

    .line 155
    iget-object v0, p0, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getNode()Ljavafx/scene/Node;
    .registers 2

    .line 115
    iget-object v0, p0, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/PathTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_6
.end method

.method public final getOrientation()Ljavafx/animation/PathTransition$OrientationType;
    .registers 2

    .line 259
    iget-object v0, p0, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/PathTransition$OrientationType;

    goto :goto_6
.end method

.method public final getPath()Ljavafx/scene/shape/Shape;
    .registers 2

    .line 209
    iget-object v0, p0, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/PathTransition;->DEFAULT_PATH:Ljavafx/scene/shape/Shape;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/shape/Shape;

    goto :goto_6
.end method

.method public interpolate(D)V
    .registers 22

    .line 312
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/PathTransition;->totalLength:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    const-wide/16 v6, 0x0

    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double v6, v2, v4

    .line 313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Ljavafx/animation/PathTransition;->findSegment(IID)I

    move-result v2

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/PathTransition;->segments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljavafx/animation/PathTransition$Segment;

    .line 316
    iget-wide v2, v4, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    iget-wide v8, v4, Ljavafx/animation/PathTransition$Segment;->length:D

    sub-double/2addr v2, v8

    .line 318
    sub-double/2addr v6, v2

    .line 320
    iget-wide v2, v4, Ljavafx/animation/PathTransition$Segment;->length:D

    div-double v2, v6, v2

    .line 321
    iget-object v5, v4, Ljavafx/animation/PathTransition$Segment;->prevSeg:Ljavafx/animation/PathTransition$Segment;

    .line 322
    iget-wide v8, v5, Ljavafx/animation/PathTransition$Segment;->toX:D

    iget-wide v10, v4, Ljavafx/animation/PathTransition$Segment;->toX:D

    iget-wide v12, v5, Ljavafx/animation/PathTransition$Segment;->toX:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    .line 323
    iget-wide v10, v5, Ljavafx/animation/PathTransition$Segment;->toY:D

    iget-wide v12, v4, Ljavafx/animation/PathTransition$Segment;->toY:D

    iget-wide v14, v5, Ljavafx/animation/PathTransition$Segment;->toY:D

    sub-double/2addr v12, v14

    mul-double/2addr v2, v12

    add-double/2addr v10, v2

    .line 324
    iget-wide v2, v4, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    .line 327
    const-wide/high16 v12, 0x4024000000000000L  # 10.0

    iget-wide v14, v4, Ljavafx/animation/PathTransition$Segment;->length:D

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    div-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 328
    cmpg-double v14, v6, v12

    if-gez v14, :cond_a3

    iget-boolean v14, v5, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    if-nez v14, :cond_a3

    .line 330
    iget-wide v2, v5, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    iget-wide v4, v4, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    div-double/2addr v6, v12

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    div-double/2addr v6, v12

    const-wide/high16 v12, 0x3fe0000000000000L  # 0.5

    add-double/2addr v6, v12

    invoke-static/range {v2 .. v7}, Ljavafx/animation/PathTransition;->interpolate(DDD)D

    move-result-wide v2

    .line 345
    :cond_73
    :goto_73
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-static {v5}, Lcom/sun/javafx/scene/NodeHelper;->getPivotX(Ljavafx/scene/Node;)D

    move-result-wide v6

    sub-double v6, v8, v6

    invoke-virtual {v4, v6, v7}, Ljavafx/scene/Node;->setTranslateX(D)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-static {v5}, Lcom/sun/javafx/scene/NodeHelper;->getPivotY(Ljavafx/scene/Node;)D

    move-result-wide v6

    sub-double v6, v10, v6

    invoke-virtual {v4, v6, v7}, Ljavafx/scene/Node;->setTranslateY(D)V

    .line 348
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ljavafx/animation/PathTransition;->cachedIsNormalRequired:Z

    if-eqz v4, :cond_a2

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v4, v2, v3}, Ljavafx/scene/Node;->setRotate(D)V

    .line 351
    :cond_a2
    return-void

    .line 334
    :cond_a3
    iget-wide v14, v4, Ljavafx/animation/PathTransition$Segment;->length:D

    sub-double v6, v14, v6

    .line 335
    iget-object v5, v4, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    .line 336
    cmpg-double v14, v6, v12

    if-gez v14, :cond_73

    if-eqz v5, :cond_73

    .line 338
    iget-boolean v14, v5, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    if-nez v14, :cond_73

    .line 339
    iget-wide v2, v4, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    iget-wide v4, v5, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    sub-double v6, v12, v6

    div-double/2addr v6, v12

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    div-double/2addr v6, v12

    invoke-static/range {v2 .. v7}, Ljavafx/animation/PathTransition;->interpolate(DDD)D

    move-result-wide v2

    goto :goto_73
.end method

.method public final nodeProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 120
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "node"

    sget-object v2, Ljavafx/animation/PathTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 122
    :cond_f
    iget-object v0, p0, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/PathTransition$OrientationType;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 264
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "orientation"

    sget-object v2, Ljavafx/animation/PathTransition;->DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 266
    :cond_f
    iget-object v0, p0, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final pathProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 214
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "path"

    sget-object v2, Ljavafx/animation/PathTransition;->DEFAULT_PATH:Ljavafx/scene/shape/Shape;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    .line 216
    :cond_f
    iget-object v0, p0, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .registers 3

    .line 149
    iget-object v0, p0, Ljavafx/animation/PathTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/PathTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 150
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 152
    :cond_13
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .registers 3

    .line 109
    iget-object v0, p0, Ljavafx/animation/PathTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 110
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 112
    :cond_d
    return-void
.end method

.method public final setOrientation(Ljavafx/animation/PathTransition$OrientationType;)V
    .registers 3

    .line 253
    iget-object v0, p0, Ljavafx/animation/PathTransition;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/PathTransition;->DEFAULT_ORIENTATION:Ljavafx/animation/PathTransition$OrientationType;

    invoke-virtual {v0, p1}, Ljavafx/animation/PathTransition$OrientationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 254
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 256
    :cond_13
    return-void
.end method

.method public final setPath(Ljavafx/scene/shape/Shape;)V
    .registers 3

    .line 203
    iget-object v0, p0, Ljavafx/animation/PathTransition;->path:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 204
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->pathProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 206
    :cond_d
    return-void
.end method

.method startable(Z)Z
    .registers 3

    .line 360
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->startable(Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 361
    invoke-direct {p0}, Ljavafx/animation/PathTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->getPath()Ljavafx/scene/shape/Shape;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->getPath()Ljavafx/scene/shape/Shape;

    move-result-object v0

    invoke-virtual {v0}, Ljavafx/scene/shape/Shape;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v0

    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_20
    if-nez p1, :cond_28

    iget-object v0, p0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    .line 360
    :goto_27
    return v0

    .line 361
    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method sync(Z)V
    .registers 4

    .line 367
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 368
    if-nez p1, :cond_9

    iget-object v0, p0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v0, :cond_1d

    .line 369
    :cond_9
    invoke-direct {p0}, Ljavafx/animation/PathTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/PathTransition;->cachedNode:Ljavafx/scene/Node;

    .line 370
    invoke-direct {p0}, Ljavafx/animation/PathTransition;->recomputeSegments()V

    .line 371
    invoke-virtual {p0}, Ljavafx/animation/PathTransition;->getOrientation()Ljavafx/animation/PathTransition$OrientationType;

    move-result-object v0

    sget-object v1, Ljavafx/animation/PathTransition$OrientationType;->ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Ljavafx/animation/PathTransition;->cachedIsNormalRequired:Z

    .line 373
    :cond_1d
    return-void

    .line 371
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1b
.end method
