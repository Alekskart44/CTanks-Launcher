.class public final Ljavafx/animation/RotateTransition;
.super Ljavafx/animation/Transition;
.source "RotateTransition.java"


# static fields
.field private static final DEFAULT_AXIS:Ljavafx/geometry/Point3D;

.field private static final DEFAULT_BY_ANGLE:D = 0.0

.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_ANGLE:D = NaN

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_TO_ANGLE:D = NaN

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private axis:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation
.end field

.field private byAngle:Ljavafx/beans/property/DoubleProperty;

.field private cachedNode:Ljavafx/scene/Node;

.field private delta:D

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

.field private fromAngle:Ljavafx/beans/property/DoubleProperty;

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

.field private start:D

.field private toAngle:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 100
    sput-object v2, Ljavafx/animation/RotateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 140
    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    .line 196
    sput-object v2, Ljavafx/animation/RotateTransition;->DEFAULT_AXIS:Ljavafx/geometry/Point3D;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 333
    sget-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/RotateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .registers 3

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavafx/animation/RotateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V
    .registers 3

    .line 312
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 313
    invoke-virtual {p0, p1}, Ljavafx/animation/RotateTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 314
    invoke-virtual {p0, p2}, Ljavafx/animation/RotateTransition;->setNode(Ljavafx/scene/Node;)V

    .line 315
    invoke-virtual {p0, p1}, Ljavafx/animation/RotateTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 316
    return-void
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 345
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final axisProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 210
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "axis"

    sget-object v2, Ljavafx/animation/RotateTransition;->DEFAULT_AXIS:Ljavafx/geometry/Point3D;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    .line 212
    :cond_f
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final byAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 298
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 299
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byAngle"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    .line 301
    :cond_f
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

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

    .line 153
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 154
    new-instance v0, Ljavafx/animation/RotateTransition$1;

    sget-object v1, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/RotateTransition$1;-><init>(Ljavafx/animation/RotateTransition;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 180
    :cond_d
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final fromAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 239
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 240
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromAngle"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    .line 242
    :cond_f
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final getAxis()Ljavafx/geometry/Point3D;
    .registers 2

    .line 205
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_AXIS:Ljavafx/geometry/Point3D;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/geometry/Point3D;

    goto :goto_6
.end method

.method public final getByAngle()D
    .registers 3

    .line 294
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .registers 2

    .line 149
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getFromAngle()D
    .registers 3

    .line 235
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getNode()Ljavafx/scene/Node;
    .registers 2

    .line 109
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_6
.end method

.method public final getToAngle()D
    .registers 3

    .line 265
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method protected interpolate(D)V
    .registers 10

    .line 341
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    iget-wide v2, p0, Ljavafx/animation/RotateTransition;->start:D

    iget-wide v4, p0, Ljavafx/animation/RotateTransition;->delta:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/Node;->setRotate(D)V

    .line 342
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

    .line 113
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 114
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "node"

    sget-object v2, Ljavafx/animation/RotateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 116
    :cond_f
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setAxis(Ljavafx/geometry/Point3D;)V
    .registers 3

    .line 199
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 200
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->axisProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 202
    :cond_d
    return-void
.end method

.method public final setByAngle(D)V
    .registers 8

    .line 288
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 289
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->byAngleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 291
    :cond_1c
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .registers 3

    .line 143
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 144
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 146
    :cond_13
    return-void
.end method

.method public final setFromAngle(D)V
    .registers 4

    .line 229
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 230
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->fromAngleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 232
    :cond_11
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .registers 3

    .line 103
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 104
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 106
    :cond_d
    return-void
.end method

.method public final setToAngle(D)V
    .registers 4

    .line 259
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 260
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->toAngleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 262
    :cond_11
    return-void
.end method

.method startable(Z)Z
    .registers 3

    .line 351
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->startable(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 352
    invoke-direct {p0}, Ljavafx/animation/RotateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    if-nez v0, :cond_12

    if-nez p1, :cond_14

    iget-object v0, p0, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 351
    :goto_13
    return v0

    .line 352
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method sync(Z)V
    .registers 7

    .line 357
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 358
    if-nez p1, :cond_9

    iget-object v0, p0, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v0, :cond_3c

    .line 359
    :cond_9
    invoke-direct {p0}, Ljavafx/animation/RotateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    .line 360
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->getFromAngle()D

    move-result-wide v0

    .line 361
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->getToAngle()D

    move-result-wide v2

    .line 362
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 363
    :goto_1d
    iput-wide v0, p0, Ljavafx/animation/RotateTransition;->start:D

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_44

    iget-wide v0, p0, Ljavafx/animation/RotateTransition;->start:D

    sub-double v0, v2, v0

    :goto_29
    iput-wide v0, p0, Ljavafx/animation/RotateTransition;->delta:D

    .line 365
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_3c

    .line 367
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    invoke-virtual {v0, v1}, Ljavafx/scene/Node;->setRotationAxis(Ljavafx/geometry/Point3D;)V

    .line 370
    :cond_3c
    return-void

    .line 363
    :cond_3d
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v0}, Ljavafx/scene/Node;->getRotate()D

    move-result-wide v0

    goto :goto_1d

    .line 364
    :cond_44
    invoke-virtual {p0}, Ljavafx/animation/RotateTransition;->getByAngle()D

    move-result-wide v0

    goto :goto_29
.end method

.method public final toAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 269
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 270
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toAngle"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    .line 272
    :cond_f
    iget-object v0, p0, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method
