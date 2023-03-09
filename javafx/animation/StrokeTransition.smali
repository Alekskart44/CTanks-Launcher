.class public final Ljavafx/animation/StrokeTransition;
.super Ljavafx/animation/Transition;
.source "StrokeTransition.java"


# static fields
.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

.field private static final DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

.field private static final DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;


# instance fields
.field private cachedShape:Ljavafx/scene/shape/Shape;

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

.field private end:Ljavafx/scene/paint/Color;

.field private fromValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private shape:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private start:Ljavafx/scene/paint/Color;

.field private toValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 93
    sput-object v2, Ljavafx/animation/StrokeTransition;->DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

    .line 133
    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/StrokeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    .line 187
    sput-object v2, Ljavafx/animation/StrokeTransition;->DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

    .line 217
    sput-object v2, Ljavafx/animation/StrokeTransition;->DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 288
    sget-object v0, Ljavafx/animation/StrokeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/StrokeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .registers 3

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavafx/animation/StrokeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
    .registers 5

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljavafx/animation/StrokeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;)V
    .registers 4

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, p2, v0, v0}, Ljavafx/animation/StrokeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    .line 272
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
    .registers 5

    .line 244
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 245
    invoke-virtual {p0, p1}, Ljavafx/animation/StrokeTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 246
    invoke-virtual {p0, p2}, Ljavafx/animation/StrokeTransition;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 247
    invoke-virtual {p0, p3}, Ljavafx/animation/StrokeTransition;->setFromValue(Ljavafx/scene/paint/Color;)V

    .line 248
    invoke-virtual {p0, p4}, Ljavafx/animation/StrokeTransition;->setToValue(Ljavafx/scene/paint/Color;)V

    .line 249
    invoke-virtual {p0, p1}, Ljavafx/animation/StrokeTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 250
    return-void
.end method

.method private getTargetShape()Ljavafx/scene/shape/Shape;
    .registers 4

    .line 301
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v1

    .line 302
    if-nez v1, :cond_11

    .line 303
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 304
    instance-of v2, v0, Ljavafx/scene/shape/Shape;

    if-eqz v2, :cond_11

    .line 305
    check-cast v0, Ljavafx/scene/shape/Shape;

    .line 308
    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
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

    .line 146
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 147
    new-instance v0, Ljavafx/animation/StrokeTransition$1;

    sget-object v1, Ljavafx/animation/StrokeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/StrokeTransition$1;-><init>(Ljavafx/animation/StrokeTransition;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/StrokeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 173
    :cond_d
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final fromValueProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 201
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "fromValue"

    sget-object v2, Ljavafx/animation/StrokeTransition;->DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/StrokeTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    .line 203
    :cond_f
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .registers 2

    .line 142
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/StrokeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getFromValue()Ljavafx/scene/paint/Color;
    .registers 2

    .line 196
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/StrokeTransition;->DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/paint/Color;

    goto :goto_6
.end method

.method public final getShape()Ljavafx/scene/shape/Shape;
    .registers 2

    .line 102
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/StrokeTransition;->DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/shape/Shape;

    goto :goto_6
.end method

.method public final getToValue()Ljavafx/scene/paint/Color;
    .registers 2

    .line 226
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/StrokeTransition;->DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/paint/Color;

    goto :goto_6
.end method

.method protected interpolate(D)V
    .registers 6

    .line 296
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->start:Ljavafx/scene/paint/Color;

    iget-object v1, p0, Ljavafx/animation/StrokeTransition;->end:Ljavafx/scene/paint/Color;

    invoke-virtual {v0, v1, p1, p2}, Ljavafx/scene/paint/Color;->interpolate(Ljavafx/scene/paint/Color;D)Ljavafx/scene/paint/Color;

    move-result-object v0

    .line 297
    iget-object v1, p0, Ljavafx/animation/StrokeTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    invoke-virtual {v1, v0}, Ljavafx/scene/shape/Shape;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 298
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .registers 3

    .line 136
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/StrokeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 137
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 139
    :cond_13
    return-void
.end method

.method public final setFromValue(Ljavafx/scene/paint/Color;)V
    .registers 3

    .line 190
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 191
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->fromValueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 193
    :cond_d
    return-void
.end method

.method public final setShape(Ljavafx/scene/shape/Shape;)V
    .registers 3

    .line 96
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 97
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->shapeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 99
    :cond_d
    return-void
.end method

.method public final setToValue(Ljavafx/scene/paint/Color;)V
    .registers 3

    .line 220
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 221
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->toValueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 223
    :cond_d
    return-void
.end method

.method public final shapeProperty()Ljavafx/beans/property/ObjectProperty;
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

    .line 106
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 107
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "shape"

    sget-object v2, Ljavafx/animation/StrokeTransition;->DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/StrokeTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    .line 109
    :cond_f
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method startable(Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->startable(Z)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 323
    :cond_9
    :goto_9
    return v0

    .line 317
    :cond_a
    if-nez p1, :cond_10

    iget-object v2, p0, Ljavafx/animation/StrokeTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    if-nez v2, :cond_9

    .line 322
    :cond_10
    invoke-direct {p0}, Ljavafx/animation/StrokeTransition;->getTargetShape()Ljavafx/scene/shape/Shape;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_2a

    .line 324
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->getFromValue()Ljavafx/scene/paint/Color;

    move-result-object v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v2

    instance-of v2, v2, Ljavafx/scene/paint/Color;

    if-eqz v2, :cond_2a

    .line 332
    :cond_24
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->getToValue()Ljavafx/scene/paint/Color;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_2a
    move v0, v1

    goto :goto_9
.end method

.method sync(Z)V
    .registers 3

    .line 337
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 338
    if-nez p1, :cond_9

    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    if-nez v0, :cond_1d

    .line 339
    :cond_9
    invoke-direct {p0}, Ljavafx/animation/StrokeTransition;->getTargetShape()Ljavafx/scene/shape/Shape;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/StrokeTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    .line 340
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->getFromValue()Ljavafx/scene/paint/Color;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_1e

    .line 342
    :goto_15
    iput-object v0, p0, Ljavafx/animation/StrokeTransition;->start:Ljavafx/scene/paint/Color;

    .line 343
    invoke-virtual {p0}, Ljavafx/animation/StrokeTransition;->getToValue()Ljavafx/scene/paint/Color;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/StrokeTransition;->end:Ljavafx/scene/paint/Color;

    .line 345
    :cond_1d
    return-void

    .line 341
    :cond_1e
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    .line 342
    invoke-virtual {v0}, Ljavafx/scene/shape/Shape;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v0

    check-cast v0, Ljavafx/scene/paint/Color;

    goto :goto_15
.end method

.method public final toValueProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 231
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "toValue"

    sget-object v2, Ljavafx/animation/StrokeTransition;->DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/StrokeTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    .line 233
    :cond_f
    iget-object v0, p0, Ljavafx/animation/StrokeTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method
