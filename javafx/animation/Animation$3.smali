.class Ljavafx/animation/Animation$3;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;Ljavafx/util/Duration;)V
    .registers 3

    .line 572
    iput-object p1, p0, Ljavafx/animation/Animation$3;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 588
    iget-object v0, p0, Ljavafx/animation/Animation$3;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 593
    const-string v0, "delay"

    return-object v0
.end method

.method protected invalidated()V
    .registers 3

    .line 576
    invoke-virtual {p0}, Ljavafx/animation/Animation$3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    .line 577
    sget-object v1, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v0, v1}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 578
    invoke-virtual {p0}, Ljavafx/animation/Animation$3;->isBound()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 579
    invoke-virtual {p0}, Ljavafx/animation/Animation$3;->unbind()V

    .line 581
    :cond_17
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation$3;->set(Ljava/lang/Object;)V

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set delay to negative value. Setting to Duration.ZERO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_24
    return-void
.end method
