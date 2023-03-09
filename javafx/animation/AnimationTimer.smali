.class public abstract Ljavafx/animation/AnimationTimer;
.super Ljava/lang/Object;
.source "AnimationTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
    }
.end annotation


# instance fields
.field private accessCtrlCtx:Ljava/security/AccessControlContext;

.field private active:Z

.field private final timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

.field private final timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    invoke-direct {v0, p0}, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;-><init>(Ljavafx/animation/AnimationTimer;)V

    iput-object v0, p0, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 76
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getPrimaryTimer()Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    invoke-direct {v0, p0}, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;-><init>(Ljavafx/animation/AnimationTimer;)V

    iput-object v0, p0, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 81
    iput-object p1, p0, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    .line 82
    return-void
.end method


# virtual methods
.method public abstract handle(J)V
.end method

.method public start()V
    .registers 3

    .line 104
    iget-boolean v0, p0, Ljavafx/animation/AnimationTimer;->active:Z

    if-nez v0, :cond_14

    .line 106
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 107
    iget-object v0, p0, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    iget-object v1, p0, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->addAnimationTimer(Lcom/sun/scenario/animation/shared/TimerReceiver;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/AnimationTimer;->active:Z

    .line 110
    :cond_14
    return-void
.end method

.method public stop()V
    .registers 3

    .line 117
    iget-boolean v0, p0, Ljavafx/animation/AnimationTimer;->active:Z

    if-eqz v0, :cond_e

    .line 118
    iget-object v0, p0, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    iget-object v1, p0, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->removeAnimationTimer(Lcom/sun/scenario/animation/shared/TimerReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/AnimationTimer;->active:Z

    .line 121
    :cond_e
    return-void
.end method
