.class public final Ljavafx/animation/ScaleTransition;
.super Ljavafx/animation/Transition;
.source "ScaleTransition.java"


# static fields
.field private static final DEFAULT_BY_X:D = 0.0

.field private static final DEFAULT_BY_Y:D = 0.0

.field private static final DEFAULT_BY_Z:D = 0.0

.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_X:D = NaN

.field private static final DEFAULT_FROM_Y:D = NaN

.field private static final DEFAULT_FROM_Z:D = NaN

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_TO_X:D = NaN

.field private static final DEFAULT_TO_Y:D = NaN

.field private static final DEFAULT_TO_Z:D = NaN

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private byX:Ljavafx/beans/property/DoubleProperty;

.field private byY:Ljavafx/beans/property/DoubleProperty;

.field private byZ:Ljavafx/beans/property/DoubleProperty;

.field private cachedNode:Ljavafx/scene/Node;

.field private deltaX:D

.field private deltaY:D

.field private deltaZ:D

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

.field private fromX:Ljavafx/beans/property/DoubleProperty;

.field private fromY:Ljavafx/beans/property/DoubleProperty;

.field private fromZ:Ljavafx/beans/property/DoubleProperty;

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

.field private startX:D

.field private startY:D

.field private startZ:D

.field private toX:Ljavafx/beans/property/DoubleProperty;

.field private toY:Ljavafx/beans/property/DoubleProperty;

.field private toZ:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 107
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/ScaleTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 147
    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/ScaleTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 485
    sget-object v0, Ljavafx/animation/ScaleTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/ScaleTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 486
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .registers 3

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavafx/animation/ScaleTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 479
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V
    .registers 3

    .line 465
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 466
    invoke-virtual {p0, p1}, Ljavafx/animation/ScaleTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 467
    invoke-virtual {p0, p2}, Ljavafx/animation/ScaleTransition;->setNode(Ljavafx/scene/Node;)V

    .line 468
    invoke-virtual {p0, p1}, Ljavafx/animation/ScaleTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 469
    return-void
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 505
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final byXProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 393
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 394
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byX"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    .line 396
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final byYProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 422
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 423
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byY"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    .line 425
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final byZProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 451
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 452
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byZ"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    .line 454
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

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

    .line 160
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 161
    new-instance v0, Ljavafx/animation/ScaleTransition$1;

    sget-object v1, Ljavafx/animation/ScaleTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/ScaleTransition$1;-><init>(Ljavafx/animation/ScaleTransition;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 187
    :cond_d
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final fromXProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 214
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 215
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromX"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    .line 217
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final fromYProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 244
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 245
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromY"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    .line 247
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final fromZProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 274
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 275
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromZ"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    .line 277
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final getByX()D
    .registers 3

    .line 389
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getByY()D
    .registers 3

    .line 418
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getByZ()D
    .registers 3

    .line 447
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .registers 2

    .line 156
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/ScaleTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getFromX()D
    .registers 3

    .line 210
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getFromY()D
    .registers 3

    .line 240
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getFromZ()D
    .registers 3

    .line 270
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getNode()Ljavafx/scene/Node;
    .registers 2

    .line 116
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/ScaleTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_6
.end method

.method public final getToX()D
    .registers 3

    .line 300
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getToY()D
    .registers 3

    .line 330
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getToZ()D
    .registers 3

    .line 360
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public interpolate(D)V
    .registers 10

    .line 493
    iget-wide v0, p0, Ljavafx/animation/ScaleTransition;->startX:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    .line 494
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    iget-wide v2, p0, Ljavafx/animation/ScaleTransition;->startX:D

    iget-wide v4, p0, Ljavafx/animation/ScaleTransition;->deltaX:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/Node;->setScaleX(D)V

    .line 496
    :cond_13
    iget-wide v0, p0, Ljavafx/animation/ScaleTransition;->startY:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_26

    .line 497
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    iget-wide v2, p0, Ljavafx/animation/ScaleTransition;->startY:D

    iget-wide v4, p0, Ljavafx/animation/ScaleTransition;->deltaY:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/Node;->setScaleY(D)V

    .line 499
    :cond_26
    iget-wide v0, p0, Ljavafx/animation/ScaleTransition;->startZ:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_39

    .line 500
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    iget-wide v2, p0, Ljavafx/animation/ScaleTransition;->startZ:D

    iget-wide v4, p0, Ljavafx/animation/ScaleTransition;->deltaZ:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/Node;->setScaleZ(D)V

    .line 502
    :cond_39
    return-void
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

    .line 120
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 121
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "node"

    sget-object v2, Ljavafx/animation/ScaleTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 123
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->node:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setByX(D)V
    .registers 8

    .line 383
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 384
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->byXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 386
    :cond_1c
    return-void
.end method

.method public final setByY(D)V
    .registers 8

    .line 412
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 413
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->byYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 415
    :cond_1c
    return-void
.end method

.method public final setByZ(D)V
    .registers 8

    .line 441
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 442
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->byZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 444
    :cond_1c
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .registers 3

    .line 150
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/ScaleTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 151
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 153
    :cond_13
    return-void
.end method

.method public final setFromX(D)V
    .registers 4

    .line 204
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 205
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->fromXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 207
    :cond_11
    return-void
.end method

.method public final setFromY(D)V
    .registers 4

    .line 234
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 235
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->fromYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 237
    :cond_11
    return-void
.end method

.method public final setFromZ(D)V
    .registers 4

    .line 264
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 265
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->fromZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 267
    :cond_11
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .registers 3

    .line 110
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 111
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 113
    :cond_d
    return-void
.end method

.method public final setToX(D)V
    .registers 4

    .line 294
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 295
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->toXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 297
    :cond_11
    return-void
.end method

.method public final setToY(D)V
    .registers 4

    .line 324
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 325
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->toYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 327
    :cond_11
    return-void
.end method

.method public final setToZ(D)V
    .registers 4

    .line 354
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 355
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition;->toZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 357
    :cond_11
    return-void
.end method

.method startable(Z)Z
    .registers 3

    .line 511
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->startable(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 512
    invoke-direct {p0}, Ljavafx/animation/ScaleTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    if-nez v0, :cond_12

    if-nez p1, :cond_14

    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 511
    :goto_13
    return v0

    .line 512
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method sync(Z)V
    .registers 24

    .line 517
    invoke-super/range {p0 .. p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 518
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v2, :cond_94

    .line 519
    :cond_b
    invoke-direct/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    .line 521
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getFromX()D

    move-result-wide v2

    .line 522
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getFromY()D

    move-result-wide v4

    .line 523
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getFromZ()D

    move-result-wide v6

    .line 525
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getToX()D

    move-result-wide v8

    .line 526
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getToY()D

    move-result-wide v10

    .line 527
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getToZ()D

    move-result-wide v12

    .line 529
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getByX()D

    move-result-wide v14

    .line 530
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getByY()D

    move-result-wide v16

    .line 531
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getByZ()D

    move-result-wide v18

    .line 533
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_95

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_95

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v20, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v14, v14, v20

    if-gez v14, :cond_95

    .line 534
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->startX:D

    .line 540
    :goto_56
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v2, v2, v8

    if-gez v2, :cond_be

    .line 541
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->startY:D

    .line 547
    :goto_75
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v2, v2, v4

    if-gez v2, :cond_e8

    .line 548
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->startZ:D

    .line 554
    :cond_94
    :goto_94
    return-void

    .line 536
    :cond_95
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_b0

    :goto_9b
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->startX:D

    .line 537
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_b9

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/ScaleTransition;->startX:D

    sub-double v2, v8, v2

    :goto_ab
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->deltaX:D

    goto :goto_56

    .line 536
    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScaleX()D

    move-result-wide v2

    goto :goto_9b

    .line 537
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getByX()D

    move-result-wide v2

    goto :goto_ab

    .line 543
    :cond_be
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_da

    move-wide v2, v4

    :goto_c5
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->startY:D

    .line 544
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_e3

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/ScaleTransition;->startY:D

    sub-double v2, v10, v2

    :goto_d5
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->deltaY:D

    goto :goto_75

    .line 543
    :cond_da
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScaleY()D

    move-result-wide v2

    goto :goto_c5

    .line 544
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getByY()D

    move-result-wide v2

    goto :goto_d5

    .line 550
    :cond_e8
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_104

    move-wide v2, v6

    :goto_ef
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->startZ:D

    .line 551
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_10d

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/ScaleTransition;->startZ:D

    sub-double v2, v12, v2

    :goto_ff
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/ScaleTransition;->deltaZ:D

    goto :goto_94

    .line 550
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ScaleTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScaleZ()D

    move-result-wide v2

    goto :goto_ef

    .line 551
    :cond_10d
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ScaleTransition;->getByZ()D

    move-result-wide v2

    goto :goto_ff
.end method

.method public final toXProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 304
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 305
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toX"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    .line 307
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final toYProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 334
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 335
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toY"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    .line 337
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final toZProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 364
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 365
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toZ"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/ScaleTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    .line 367
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ScaleTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method
