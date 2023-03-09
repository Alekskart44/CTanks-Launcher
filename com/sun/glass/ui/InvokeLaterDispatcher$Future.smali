.class Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
.super Ljava/lang/Object;
.source "InvokeLaterDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/InvokeLaterDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Future"
.end annotation


# instance fields
.field private done:Z

.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/InvokeLaterDispatcher;Ljava/lang/Runnable;)V
    .registers 4

    .line 81
    iput-object p1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    .line 82
    iput-object p2, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->runnable:Ljava/lang/Runnable;

    .line 83
    return-void
.end method


# virtual methods
.method public isDone()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    return v0
.end method

.method public run()V
    .registers 4

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_19

    .line 98
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    iget-object v1, v0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    .line 100
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    iget-object v0, v0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit v1

    .line 103
    return-void

    .line 101
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v0

    .line 98
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    iget-object v1, v1, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    const/4 v2, 0x1

    :try_start_20
    iput-boolean v2, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    .line 100
    iget-object v2, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    iget-object v2, v2, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2b

    .line 102
    throw v0

    .line 101
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
