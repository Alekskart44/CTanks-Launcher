.class Ljavafx/animation/Interpolator$5;
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


# static fields
.field private static final S1:D = -2.7777777777777777

.field private static final S2:D = 5.555555555555555

.field private static final S3:D = -1.7777777777777777

.field private static final S4:D = 1.1111111111111112


# direct methods
.method constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .registers 8

    .line 171
    const-wide v0, 0x3fe999999999999aL  # 0.8

    cmpl-double v0, p1, v0

    if-lez v0, :cond_22

    const-wide v0, -0x3ff9c71c71c71c72L  # -2.7777777777777777

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide v2, 0x401638e38e38e38eL  # 5.555555555555555

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    const-wide v2, -0x40038e38e38e38e4L  # -1.7777777777777777

    add-double/2addr v0, v2

    :goto_1d
    invoke-static {v0, v1}, Ljavafx/animation/Interpolator;->clamp(D)D

    move-result-wide v0

    return-wide v0

    .line 172
    :cond_22
    const-wide v0, 0x3ff1c71c71c71c72L  # 1.1111111111111112

    mul-double/2addr v0, p1

    goto :goto_1d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 177
    const-string v0, "Interpolator.EASE_OUT"

    return-object v0
.end method
