.class Ljavafx/animation/ScaleTransition$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ScaleTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/ScaleTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/animation/ScaleTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/ScaleTransition;Ljavafx/util/Duration;)V
    .registers 3

    .line 161
    iput-object p1, p0, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 178
    iget-object v0, p0, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 183
    const-string v0, "duration"

    return-object v0
.end method

.method public invalidated()V
    .registers 3

    .line 166
    :try_start_0
    iget-object v0, p0, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    iget-object v1, p0, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    invoke-virtual {v1}, Ljavafx/animation/ScaleTransition;->getDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/animation/ScaleTransition;->setCycleDuration(Ljavafx/util/Duration;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 174
    return-void

    .line 167
    :catch_c
    move-exception v0

    .line 168
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition$1;->isBound()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 169
    invoke-virtual {p0}, Ljavafx/animation/ScaleTransition$1;->unbind()V

    .line 171
    :cond_16
    iget-object v1, p0, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    invoke-virtual {v1}, Ljavafx/animation/ScaleTransition;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavafx/animation/ScaleTransition$1;->set(Ljava/lang/Object;)V

    .line 172
    throw v0
.end method
