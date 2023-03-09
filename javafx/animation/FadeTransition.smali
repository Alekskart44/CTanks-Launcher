.class public final Ljavafx/animation/FadeTransition;
.super Ljavafx/animation/Transition;
.source "FadeTransition.java"


# static fields
.field private static final DEFAULT_BY_VALUE:D = 0.0

.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_VALUE:D = NaN

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_TO_VALUE:D = NaN

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private byValue:Ljavafx/beans/property/DoubleProperty;

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

.field private fromValue:Ljavafx/beans/property/DoubleProperty;

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

.field private toValue:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 99
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 139
    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 299
    sget-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .registers 3

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V
    .registers 3

    .line 279
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 280
    invoke-virtual {p0, p1}, Ljavafx/animation/FadeTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 281
    invoke-virtual {p0, p2}, Ljavafx/animation/FadeTransition;->setNode(Ljavafx/scene/Node;)V

    .line 282
    invoke-virtual {p0, p1}, Ljavafx/animation/FadeTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 283
    return-void
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 313
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final byValueProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 265
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 266
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "byValue"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    .line 268
    :cond_f
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

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

    .line 152
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 153
    new-instance v0, Ljavafx/animation/FadeTransition$1;

    sget-object v1, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/FadeTransition$1;-><init>(Ljavafx/animation/FadeTransition;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 179
    :cond_d
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final fromValueProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 206
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 207
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "fromValue"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    .line 209
    :cond_f
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method public final getByValue()D
    .registers 3

    .line 261
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .registers 2

    .line 148
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getFromValue()D
    .registers 3

    .line 202
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getNode()Ljavafx/scene/Node;
    .registers 2

    .line 108
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_6
.end method

.method public final getToValue()D
    .registers 3

    .line 232
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method protected interpolate(D)V
    .registers 10

    .line 307
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ljavafx/animation/FadeTransition;->start:D

    iget-wide v4, p0, Ljavafx/animation/FadeTransition;->delta:D

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 308
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 307
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 309
    iget-object v2, p0, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v2, v0, v1}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 310
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

    .line 112
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 113
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "node"

    sget-object v2, Ljavafx/animation/FadeTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 115
    :cond_f
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setByValue(D)V
    .registers 8

    .line 255
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_15

    const-wide/16 v0, 0x0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 256
    :cond_15
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->byValueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 258
    :cond_1c
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .registers 3

    .line 142
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 143
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 145
    :cond_13
    return-void
.end method

.method public final setFromValue(D)V
    .registers 4

    .line 196
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 197
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->fromValueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 199
    :cond_11
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .registers 3

    .line 102
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 103
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 105
    :cond_d
    return-void
.end method

.method public final setToValue(D)V
    .registers 4

    .line 226
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 227
    :cond_a
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->toValueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 229
    :cond_11
    return-void
.end method

.method startable(Z)Z
    .registers 3

    .line 319
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->startable(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 320
    invoke-direct {p0}, Ljavafx/animation/FadeTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    if-nez v0, :cond_12

    if-nez p1, :cond_14

    iget-object v0, p0, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 319
    :goto_13
    return v0

    .line 320
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method sync(Z)V
    .registers 12

    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 325
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 326
    if-nez p1, :cond_d

    iget-object v0, p0, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v0, :cond_46

    .line 327
    :cond_d
    invoke-direct {p0}, Ljavafx/animation/FadeTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    .line 328
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->getFromValue()D

    move-result-wide v0

    .line 329
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->getToValue()D

    move-result-wide v2

    .line 330
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_47

    .line 331
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 330
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 331
    :goto_29
    iput-wide v0, p0, Ljavafx/animation/FadeTransition;->start:D

    .line 332
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-wide v0, p0, Ljavafx/animation/FadeTransition;->start:D

    sub-double v0, v2, v0

    :goto_35
    iput-wide v0, p0, Ljavafx/animation/FadeTransition;->delta:D

    .line 333
    iget-wide v0, p0, Ljavafx/animation/FadeTransition;->start:D

    iget-wide v2, p0, Ljavafx/animation/FadeTransition;->delta:D

    add-double/2addr v0, v2

    cmpl-double v0, v0, v6

    if-lez v0, :cond_53

    .line 334
    iget-wide v0, p0, Ljavafx/animation/FadeTransition;->start:D

    sub-double v0, v6, v0

    iput-wide v0, p0, Ljavafx/animation/FadeTransition;->delta:D

    .line 339
    :cond_46
    :goto_46
    return-void

    .line 331
    :cond_47
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    invoke-virtual {v0}, Ljavafx/scene/Node;->getOpacity()D

    move-result-wide v0

    goto :goto_29

    .line 332
    :cond_4e
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->getByValue()D

    move-result-wide v0

    goto :goto_35

    .line 335
    :cond_53
    iget-wide v0, p0, Ljavafx/animation/FadeTransition;->start:D

    iget-wide v2, p0, Ljavafx/animation/FadeTransition;->delta:D

    add-double/2addr v0, v2

    cmpg-double v0, v0, v8

    if-gez v0, :cond_46

    .line 336
    iget-wide v0, p0, Ljavafx/animation/FadeTransition;->start:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavafx/animation/FadeTransition;->delta:D

    goto :goto_46
.end method

.method public final toValueProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 236
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_f

    .line 237
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    const-string v1, "toValue"

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, p0, v1, v2, v3}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v0, p0, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    .line 239
    :cond_f
    iget-object v0, p0, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method
