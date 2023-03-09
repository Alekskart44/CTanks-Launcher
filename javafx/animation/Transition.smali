.class public abstract Ljavafx/animation/Transition;
.super Ljavafx/animation/Animation;
.source "Transition.java"


# static fields
.field private static final DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;


# instance fields
.field private cachedInterpolator:Ljavafx/animation/Interpolator;

.field private interpolator:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    sget-object v0, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    sput-object v0, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljavafx/animation/Animation;-><init>()V

    .line 148
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4

    .line 141
    invoke-direct {p0, p1, p2}, Ljavafx/animation/Animation;-><init>(D)V

    .line 142
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V
    .registers 2

    .line 152
    invoke-direct {p0, p1}, Ljavafx/animation/Animation;-><init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V

    .line 153
    return-void
.end method

.method private calculateFraction(JJ)D
    .registers 14

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 193
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_12

    move-wide v6, v4

    .line 194
    :goto_9
    iget-object v1, p0, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Ljavafx/animation/Interpolator;->interpolate(DDD)D

    move-result-wide v0

    return-wide v0

    .line 193
    :cond_12
    long-to-double v0, p1

    long-to-double v2, p3

    div-double v6, v0, v2

    goto :goto_9
.end method


# virtual methods
.method doJumpTo(JJZ)V
    .registers 9

    .line 219
    invoke-virtual {p0, p1, p2}, Ljavafx/animation/Transition;->setCurrentTicks(J)V

    .line 220
    invoke-virtual {p0}, Ljavafx/animation/Transition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v0

    sget-object v1, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v0, v1, :cond_d

    if-eqz p5, :cond_18

    .line 221
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavafx/animation/Transition;->sync(Z)V

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Ljavafx/animation/Transition;->calculateFraction(JJ)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljavafx/animation/Transition;->interpolate(D)V

    .line 224
    :cond_18
    return-void
.end method

.method doPlayTo(JJ)V
    .registers 8

    .line 213
    invoke-virtual {p0, p1, p2}, Ljavafx/animation/Transition;->setCurrentTicks(J)V

    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Ljavafx/animation/Transition;->calculateFraction(JJ)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljavafx/animation/Transition;->interpolate(D)V

    .line 215
    return-void
.end method

.method protected getCachedInterpolator()Ljavafx/animation/Interpolator;
    .registers 2

    .line 129
    iget-object v0, p0, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    return-object v0
.end method

.method public final getInterpolator()Ljavafx/animation/Interpolator;
    .registers 2

    .line 102
    iget-object v0, p0, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Interpolator;

    goto :goto_6
.end method

.method protected getParentTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 169
    iget-object v0, p0, Ljavafx/animation/Transition;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljavafx/animation/Transition;->parent:Ljavafx/animation/Animation;

    instance-of v0, v0, Ljavafx/animation/Transition;

    if-eqz v0, :cond_13

    .line 170
    iget-object v0, p0, Ljavafx/animation/Transition;->parent:Ljavafx/animation/Animation;

    check-cast v0, Ljavafx/animation/Transition;

    invoke-virtual {v0}, Ljavafx/animation/Transition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 169
    :goto_12
    return-object v0

    .line 170
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected abstract interpolate(D)V
.end method

.method public final interpolatorProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 107
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "interpolator"

    sget-object v2, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    .line 111
    :cond_f
    iget-object v0, p0, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setInterpolator(Ljavafx/animation/Interpolator;)V
    .registers 3

    .line 96
    iget-object v0, p0, Ljavafx/animation/Transition;->interpolator:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/Transition;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 97
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Transition;->interpolatorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 99
    :cond_13
    return-void
.end method

.method startable(Z)Z
    .registers 3

    .line 199
    invoke-super {p0, p1}, Ljavafx/animation/Animation;->startable(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 200
    invoke-virtual {p0}, Ljavafx/animation/Transition;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v0

    if-nez v0, :cond_12

    if-nez p1, :cond_14

    iget-object v0, p0, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 199
    :goto_13
    return v0

    .line 200
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method sync(Z)V
    .registers 3

    .line 205
    invoke-super {p0, p1}, Ljavafx/animation/Animation;->sync(Z)V

    .line 206
    if-nez p1, :cond_9

    iget-object v0, p0, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    if-nez v0, :cond_f

    .line 207
    :cond_9
    invoke-virtual {p0}, Ljavafx/animation/Transition;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Transition;->cachedInterpolator:Ljavafx/animation/Interpolator;

    .line 209
    :cond_f
    return-void
.end method
