.class Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
.super Ljava/lang/Object;
.source "AnimationTimer.java"

# interfaces
.implements Lcom/sun/scenario/animation/shared/TimerReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/AnimationTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTimerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/AnimationTimer;


# direct methods
.method private constructor <init>(Ljavafx/animation/AnimationTimer;)V
    .registers 2

    .line 50
    iput-object p1, p0, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$handle$0(J)Ljava/lang/Void;
    .registers 4

    .line 58
    iget-object v0, p0, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    invoke-virtual {v0, p1, p2}, Ljavafx/animation/AnimationTimer;->handle(J)V

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public handle(J)V
    .registers 6

    .line 53
    iget-object v0, p0, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    iget-object v0, v0, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: AccessControlContext not captured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_e
    invoke-custom {p0, p1, p2}, call_site_1819("run", (Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;J)Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-direct@Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->lambda$handle$0(J)Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iget-object v1, p0, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    iget-object v1, v1, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 61
    return-void
.end method
