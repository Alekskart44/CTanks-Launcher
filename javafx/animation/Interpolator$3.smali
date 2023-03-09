.class Ljavafx/animation/Interpolator$3;
.super Ljavafx/animation/Interpolator;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .registers 8

    .line 115
    const-wide v0, 0x3fc999999999999aL  # 0.2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_12

    const-wide/high16 v0, 0x4009000000000000L  # 3.125

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    :goto_d
    invoke-static {v0, v1}, Ljavafx/animation/Interpolator;->clamp(D)D

    move-result-wide v0

    return-wide v0

    .line 116
    :cond_12
    const-wide v0, 0x3fe999999999999aL  # 0.8

    cmpl-double v0, p1, v0

    if-lez v0, :cond_27

    const-wide/high16 v0, -0x3ff7000000000000L  # -3.125

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4019000000000000L  # 6.25

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4001000000000000L  # 2.125

    sub-double/2addr v0, v2

    goto :goto_d

    .line 117
    :cond_27
    const-wide/high16 v0, 0x3ff4000000000000L  # 1.25

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fc0000000000000L  # 0.125

    sub-double/2addr v0, v2

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, "Interpolator.EASE_BOTH"

    return-object v0
.end method
