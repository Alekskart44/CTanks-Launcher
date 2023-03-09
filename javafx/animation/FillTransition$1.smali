.class Ljavafx/animation/FillTransition$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "FillTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/FillTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/animation/FillTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/FillTransition;Ljavafx/util/Duration;)V
    .registers 3

    .line 146
    iput-object p1, p0, Ljavafx/animation/FillTransition$1;->this$0:Ljavafx/animation/FillTransition;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 163
    iget-object v0, p0, Ljavafx/animation/FillTransition$1;->this$0:Ljavafx/animation/FillTransition;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 168
    const-string v0, "duration"

    return-object v0
.end method

.method public invalidated()V
    .registers 3

    .line 151
    :try_start_0
    iget-object v0, p0, Ljavafx/animation/FillTransition$1;->this$0:Ljavafx/animation/FillTransition;

    iget-object v1, p0, Ljavafx/animation/FillTransition$1;->this$0:Ljavafx/animation/FillTransition;

    invoke-virtual {v1}, Ljavafx/animation/FillTransition;->getDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/animation/FillTransition;->setCycleDuration(Ljavafx/util/Duration;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 159
    return-void

    .line 152
    :catch_c
    move-exception v0

    .line 153
    invoke-virtual {p0}, Ljavafx/animation/FillTransition$1;->isBound()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 154
    invoke-virtual {p0}, Ljavafx/animation/FillTransition$1;->unbind()V

    .line 156
    :cond_16
    iget-object v1, p0, Ljavafx/animation/FillTransition$1;->this$0:Ljavafx/animation/FillTransition;

    invoke-virtual {v1}, Ljavafx/animation/FillTransition;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavafx/animation/FillTransition$1;->set(Ljava/lang/Object;)V

    .line 157
    throw v0
.end method
