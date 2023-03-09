.class Ljavafx/animation/Interpolator$2;
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

    .line 75
    invoke-direct {p0}, Ljavafx/animation/Interpolator;-><init>()V

    return-void
.end method


# virtual methods
.method protected curve(D)D
    .registers 4

    .line 78
    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 83
    const-string v0, "Interpolator.LINEAR"

    return-object v0
.end method
