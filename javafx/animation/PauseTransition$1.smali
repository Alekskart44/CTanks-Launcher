.class Ljavafx/animation/PauseTransition$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "PauseTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/PauseTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/animation/PauseTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/PauseTransition;Ljavafx/util/Duration;)V
    .registers 3

    .line 107
    iput-object p1, p0, Ljavafx/animation/PauseTransition$1;->this$0:Ljavafx/animation/PauseTransition;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 124
    iget-object v0, p0, Ljavafx/animation/PauseTransition$1;->this$0:Ljavafx/animation/PauseTransition;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 129
    const-string v0, "duration"

    return-object v0
.end method

.method public invalidated()V
    .registers 3

    .line 112
    :try_start_0
    iget-object v0, p0, Ljavafx/animation/PauseTransition$1;->this$0:Ljavafx/animation/PauseTransition;

    iget-object v1, p0, Ljavafx/animation/PauseTransition$1;->this$0:Ljavafx/animation/PauseTransition;

    invoke-virtual {v1}, Ljavafx/animation/PauseTransition;->getDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/animation/PauseTransition;->setCycleDuration(Ljavafx/util/Duration;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 120
    return-void

    .line 113
    :catch_c
    move-exception v0

    .line 114
    invoke-virtual {p0}, Ljavafx/animation/PauseTransition$1;->isBound()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 115
    invoke-virtual {p0}, Ljavafx/animation/PauseTransition$1;->unbind()V

    .line 117
    :cond_16
    iget-object v1, p0, Ljavafx/animation/PauseTransition$1;->this$0:Ljavafx/animation/PauseTransition;

    invoke-virtual {v1}, Ljavafx/animation/PauseTransition;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavafx/animation/PauseTransition$1;->set(Ljava/lang/Object;)V

    .line 118
    throw v0
.end method
