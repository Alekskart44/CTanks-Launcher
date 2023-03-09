.class Ljavafx/animation/Animation$1;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Lcom/sun/scenario/animation/shared/PulseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;)V
    .registers 2

    .line 195
    iput-object p1, p0, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$timePulse$0(J)Ljava/lang/Void;
    .registers 4

    .line 207
    iget-object v0, p0, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0, p1, p2}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public timePulse(J)V
    .registers 8

    .line 198
    iget-object v0, p0, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    iget-wide v0, v0, Ljavafx/animation/Animation;->startTime:J

    sub-long v0, p1, v0

    .line 199
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 210
    :goto_c
    return-void

    .line 202
    :cond_d
    iget-object v2, p0, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    iget-object v2, v2, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    if-nez v2, :cond_1b

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: AccessControlContext not captured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1b
    invoke-custom {p0, v0, v1}, call_site_781("run", (Ljavafx/animation/Animation$1;J)Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-direct@Ljavafx/animation/Animation$1;->lambda$timePulse$0(J)Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iget-object v1, p0, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    iget-object v1, v1, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    goto :goto_c
.end method
