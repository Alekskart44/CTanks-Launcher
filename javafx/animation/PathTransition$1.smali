.class Ljavafx/animation/PathTransition$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "PathTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/PathTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/animation/PathTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/PathTransition;Ljavafx/util/Duration;)V
    .registers 3

    .line 160
    iput-object p1, p0, Ljavafx/animation/PathTransition$1;->this$0:Ljavafx/animation/PathTransition;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 177
    iget-object v0, p0, Ljavafx/animation/PathTransition$1;->this$0:Ljavafx/animation/PathTransition;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 182
    const-string v0, "duration"

    return-object v0
.end method

.method public invalidated()V
    .registers 3

    .line 165
    :try_start_0
    iget-object v0, p0, Ljavafx/animation/PathTransition$1;->this$0:Ljavafx/animation/PathTransition;

    iget-object v1, p0, Ljavafx/animation/PathTransition$1;->this$0:Ljavafx/animation/PathTransition;

    invoke-virtual {v1}, Ljavafx/animation/PathTransition;->getDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/animation/PathTransition;->setCycleDuration(Ljavafx/util/Duration;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 173
    return-void

    .line 166
    :catch_c
    move-exception v0

    .line 167
    invoke-virtual {p0}, Ljavafx/animation/PathTransition$1;->isBound()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 168
    invoke-virtual {p0}, Ljavafx/animation/PathTransition$1;->unbind()V

    .line 170
    :cond_16
    iget-object v1, p0, Ljavafx/animation/PathTransition$1;->this$0:Ljavafx/animation/PathTransition;

    invoke-virtual {v1}, Ljavafx/animation/PathTransition;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavafx/animation/PathTransition$1;->set(Ljava/lang/Object;)V

    .line 171
    throw v0
.end method
