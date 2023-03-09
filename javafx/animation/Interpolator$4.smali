.class Ljavafx/animation/Interpolator$4;
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
.field private static final S1:D = 2.7777777777777777

.field private static final S3:D = 1.1111111111111112

.field private static final S4:D = 0.1111111111111111


# direct methods
.method constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .registers 8

    .line 143
    const-wide v0, 0x3fc999999999999aL  # 0.2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_15

    const-wide v0, 0x400638e38e38e38eL  # 2.7777777777777777

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    :goto_10
    invoke-static {v0, v1}, Ljavafx/animation/Interpolator;->clamp(D)D

    move-result-wide v0

    return-wide v0

    :cond_15
    const-wide v0, 0x3ff1c71c71c71c72L  # 1.1111111111111112

    mul-double/2addr v0, p1

    const-wide v2, 0x3fbc71c71c71c71cL  # 0.1111111111111111

    sub-double/2addr v0, v2

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 148
    const-string v0, "Interpolator.EASE_IN"

    return-object v0
.end method
