.class Ljavafx/animation/TranslateTransition$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TranslateTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/TranslateTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/animation/TranslateTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/TranslateTransition;Ljavafx/util/Duration;)V
    .registers 3

    .line 159
    iput-object p1, p0, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 176
    iget-object v0, p0, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 181
    const-string v0, "duration"

    return-object v0
.end method

.method public invalidated()V
    .registers 3

    .line 164
    :try_start_0
    iget-object v0, p0, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    iget-object v1, p0, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    invoke-virtual {v1}, Ljavafx/animation/TranslateTransition;->getDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/animation/TranslateTransition;->setCycleDuration(Ljavafx/util/Duration;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 172
    return-void

    .line 165
    :catch_c
    move-exception v0

    .line 166
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition$1;->isBound()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 167
    invoke-virtual {p0}, Ljavafx/animation/TranslateTransition$1;->unbind()V

    .line 169
    :cond_16
    iget-object v1, p0, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    invoke-virtual {v1}, Ljavafx/animation/TranslateTransition;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavafx/animation/TranslateTransition$1;->set(Ljava/lang/Object;)V

    .line 170
    throw v0
.end method
