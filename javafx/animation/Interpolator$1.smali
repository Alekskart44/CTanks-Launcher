.class Ljavafx/animation/Interpolator$1;
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

    .line 58
    invoke-direct {p0}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .registers 10

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 61
    sub-double v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v2, v2, v4

    if-gez v2, :cond_12

    :goto_11
    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 66
    const-string v0, "Interpolator.DISCRETE"

    return-object v0
.end method
