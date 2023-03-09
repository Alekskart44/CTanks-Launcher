.class Ljavafx/animation/Animation$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;D)V
    .registers 4

    .line 323
    iput-object p1, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0, p2, p3}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 359
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 364
    const-string v0, "rate"

    return-object v0
.end method

.method public invalidated()V
    .registers 9

    .line 327
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v2

    .line 328
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->isRunningEmbedded()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 329
    invoke-virtual {p0}, Ljavafx/animation/Animation$2;->isBound()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 330
    invoke-virtual {p0}, Ljavafx/animation/Animation$2;->unbind()V

    .line 332
    :cond_17
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-wide v0, v0, Ljavafx/animation/Animation;->oldRate:D

    invoke-virtual {p0, v0, v1}, Ljavafx/animation/Animation$2;->set(D)V

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set rate of embedded animation while running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_26
    invoke-static {v2, v3}, Ljavafx/animation/Animation;->isNearZero(D)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 336
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 337
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-object v1, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v4

    iget-object v1, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-wide v6, v1, Ljavafx/animation/Animation;->oldRate:D

    invoke-static {v4, v5, v6, v7}, Ljavafx/animation/Animation;->areNearEqual(DD)Z

    move-result v1

    iput-boolean v1, v0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 339
    :cond_46
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    .line 340
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->pauseReceiver()V

    .line 354
    :goto_52
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0, v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 355
    return-void

    .line 342
    :cond_5a
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 343
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v0

    .line 344
    invoke-static {v0, v1}, Ljavafx/animation/Animation;->isNearZero(D)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 345
    iget-object v4, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-boolean v0, v0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    if-eqz v0, :cond_84

    move-wide v0, v2

    :goto_77
    invoke-virtual {v4, v0, v1}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    .line 346
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->resumeReceiver()V

    .line 352
    :cond_7f
    :goto_7f
    iget-object v0, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iput-wide v2, v0, Ljavafx/animation/Animation;->oldRate:D

    goto :goto_52

    .line 345
    :cond_84
    neg-double v0, v2

    goto :goto_77

    .line 348
    :cond_86
    iget-object v4, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-wide v4, v4, Ljavafx/animation/Animation;->oldRate:D

    invoke-static {v0, v1, v4, v5}, Ljavafx/animation/Animation;->areNearEqual(DD)Z

    move-result v0

    .line 349
    iget-object v4, p0, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    if-eqz v0, :cond_97

    move-wide v0, v2

    :goto_93
    invoke-virtual {v4, v0, v1}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    goto :goto_7f

    :cond_97
    neg-double v0, v2

    goto :goto_93
.end method
