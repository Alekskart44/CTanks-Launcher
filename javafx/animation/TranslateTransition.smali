.class public final Ljavafx/animation/TranslateTransition;
.super Ljavafx/animation/Transition;
.source "TranslateTransition.java"


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

    .line 105
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 145
    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 486
    sget-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/TranslateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 487
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .registers 3

    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavafx/animation/TranslateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 480
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V
    .registers 3

    .line 466
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 467
    invoke-virtual {p0, p1}, Ljavafx/animation/TranslateTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 468
    invoke-virtual {p0, p2}, Ljavafx/animation/TranslateTransition;->setNode(Ljavafx/scene/Node;)V

    .line 469
    invoke-virtual {p0, p1}, Ljavafx/animation/TranslateTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 470
    return-void
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 506
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final byXProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 394
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 395
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byX"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    .line 397
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final byYProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 423
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 424
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byY"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    .line 426
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final byZProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 452
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 453
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byZ"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    .line 455
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

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

    .line 158
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 159
    new-instance v0, Ljavafx/animation/TranslateTransition$1;

    sget-object v1, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/TranslateTransition$1;-><init>(Ljavafx/animation/TranslateTransition;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 185
    :cond_d
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final fromXProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 213
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 214
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromX"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    .line 216
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final fromYProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 244
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 245
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromY"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    .line 247
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final fromZProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 275
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 276
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromZ"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    .line 278
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final getByX()D
    .registers 3

    .line 390
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getByY()D
    .registers 3

    .line 419
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getByZ()D
    .registers 3

    .line 448
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .registers 2

    .line 154
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getFromX()D
    .registers 3

    .line 209
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getFromY()D
    .registers 3

    .line 240
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getFromZ()D
    .registers 3

    .line 271
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getNode()Ljavafx/scene/Node;
    .registers 2

    .line 114
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_6
.end method

.method public final getToX()D
    .registers 3

    .line 301
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getToY()D
    .registers 3

    .line 331
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getToZ()D
    .registers 3

    .line 361
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public interpolate(D)V
    .registers 10

    .line 494
    iget-wide v0, p0, Ljavafx/animation/TranslateTransition;->startX:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    .line 495
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    iget-wide v2, p0, Ljavafx/animation/TranslateTransition;->startX:D

    iget-wide v4, p0, Ljavafx/animation/TranslateTransition;->deltaX:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/Node;->setTranslateX(D)V

    .line 497
    :cond_13
    iget-wide v0, p0, Ljavafx/animation/TranslateTransition;->startY:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_26

    .line 498
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    iget-wide v2, p0, Ljavafx/animation/TranslateTransition;->startY:D

    iget-wide v4, p0, Ljavafx/animation/TranslateTransition;->deltaY:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/Node;->setTranslateY(D)V

    .line 500
    :cond_26
    iget-wide v0, p0, Ljavafx/animation/TranslateTransition;->startZ:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_39

    .line 501
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    iget-wide v2, p0, Ljavafx/animation/TranslateTransition;->startZ:D

    iget-wide v4, p0, Ljavafx/animation/TranslateTransition;->deltaZ:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/Node;->setTranslateZ(D)V

    .line 503
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

    .line 118
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 119
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "node"

    sget-object v2, Ljavafx/animation/TranslateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 121
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setByX(D)V
    .registers 8

    .line 384
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 385
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->byXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 387
    :cond_1c
    return-void
.end method

.method public final setByY(D)V
    .registers 8

    .line 413
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 414
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->byYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 416
    :cond_1c
    return-void
.end method

.method public final setByZ(D)V
    .registers 8

    .line 442
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 443
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->byZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 445
    :cond_1c
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .registers 3

    .line 148
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 149
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 151
    :cond_13
    return-void
.end method

.method public final setFromX(D)V
    .registers 4

    .line 203
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 204
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->fromXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 206
    :cond_11
    return-void
.end method

.method public final setFromY(D)V
    .registers 4

    .line 234
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 235
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->fromYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 237
    :cond_11
    return-void
.end method

.method public final setFromZ(D)V
    .registers 4

    .line 265
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 266
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->fromZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 268
    :cond_11
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .registers 3

    .line 108
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 109
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 111
    :cond_d
    return-void
.end method

.method public final setToX(D)V
    .registers 4

    .line 295
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 296
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->toXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 298
    :cond_11
    return-void
.end method

.method public final setToY(D)V
    .registers 4

    .line 325
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 326
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->toYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 328
    :cond_11
    return-void
.end method

.method public final setToZ(D)V
    .registers 4

    .line 355
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 356
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition;->toZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 358
    :cond_11
    return-void
.end method

.method startable(Z)Z
    .registers 3

    .line 512
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->startable(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 513
    invoke-direct {p0}, Ljavafx/animation/TranslateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    if-nez v0, :cond_12

    if-nez p1, :cond_14

    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 512
    :goto_13
    return v0

    .line 513
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method sync(Z)V
    .registers 26

    .line 518
    invoke-super/range {p0 .. p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 519
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v2, :cond_94

    .line 520
    :cond_b
    invoke-direct/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    .line 522
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getFromX()D

    move-result-wide v2

    .line 523
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getFromY()D

    move-result-wide v6

    .line 524
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getFromZ()D

    move-result-wide v8

    .line 526
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getToX()D

    move-result-wide v10

    .line 527
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getToY()D

    move-result-wide v12

    .line 528
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getToZ()D

    move-result-wide v14

    .line 530
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getByX()D

    move-result-wide v4

    .line 531
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getByY()D

    move-result-wide v16

    .line 532
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getByZ()D

    move-result-wide v18

    .line 534
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_95

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_95

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v20, v20, v22

    if-gez v20, :cond_95

    .line 535
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->startX:D

    .line 541
    :goto_56
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v2, v2, v4

    if-gez v2, :cond_bb

    .line 542
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->startY:D

    .line 548
    :goto_75
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v2, v2, v4

    if-gez v2, :cond_e5

    .line 549
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->startZ:D

    .line 555
    :cond_94
    :goto_94
    return-void

    .line 537
    :cond_95
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-nez v20, :cond_b0

    :goto_9b
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->startX:D

    .line 538
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_b9

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/TranslateTransition;->startX:D

    sub-double v2, v10, v2

    :goto_ab
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->deltaX:D

    goto :goto_56

    .line 537
    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getTranslateX()D

    move-result-wide v2

    goto :goto_9b

    :cond_b9
    move-wide v2, v4

    .line 538
    goto :goto_ab

    .line 544
    :cond_bb
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_d7

    move-wide v2, v6

    :goto_c2
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->startY:D

    .line 545
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_e0

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/TranslateTransition;->startY:D

    sub-double v2, v12, v2

    :goto_d2
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->deltaY:D

    goto :goto_75

    .line 544
    :cond_d7
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getTranslateY()D

    move-result-wide v2

    goto :goto_c2

    .line 545
    :cond_e0
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getByY()D

    move-result-wide v2

    goto :goto_d2

    .line 551
    :cond_e5
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_101

    move-wide v2, v8

    :goto_ec
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->startZ:D

    .line 552
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_10a

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/TranslateTransition;->startZ:D

    sub-double v2, v14, v2

    :goto_fc
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/TranslateTransition;->deltaZ:D

    goto :goto_94

    .line 551
    :cond_101
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getTranslateZ()D

    move-result-wide v2

    goto :goto_ec

    .line 552
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/TranslateTransition;->getByZ()D

    move-result-wide v2

    goto :goto_fc
.end method

.method public final toXProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 305
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 306
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toX"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    .line 308
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final toYProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 335
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 336
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toY"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    .line 338
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final toZProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 365
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 366
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toZ"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    .line 368
    :cond_f
    iget-object v0, p0, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method
