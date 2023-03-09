.class public final Lcom/sun/glass/ui/InvokeLaterDispatcher;
.super Ljava/lang/Thread;
.source "InvokeLaterDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;,
        Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
    }
.end annotation


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final deque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

.field private volatile leavingNestedEventLoop:Z

.field private nestedEventLoopEntered:Z


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;)V
    .registers 5

    const/4 v2, 0x0

    .line 71
    const-string v0, "InvokeLaterDispatcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InvokeLaterLock"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    .line 52
    iput-boolean v2, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    .line 55
    iput-boolean v2, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->setDaemon(Z)V

    .line 74
    iput-object p1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

    .line 75
    return-void
.end method


# virtual methods
.method public invokeAndWait(Ljava/lang/Runnable;)V
    .registers 5

    .line 143
    new-instance v0, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;

    invoke-direct {v0, p0, p1}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;-><init>(Lcom/sun/glass/ui/InvokeLaterDispatcher;Ljava/lang/Runnable;)V

    .line 144
    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

    invoke-interface {v1, v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;->submitForLaterInvocation(Ljava/lang/Runnable;)V

    .line 145
    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :goto_d
    :try_start_d
    invoke-virtual {v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 148
    iget-object v2, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_1c

    goto :goto_d

    .line 150
    :catch_19
    move-exception v0

    .line 152
    :cond_1a
    :try_start_1a
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public invokeLater(Ljava/lang/Runnable;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public notifyEnteringNestedEventLoop()V
    .registers 3

    .line 172
    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    .line 174
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 175
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notifyLeavingNestedEventLoop()V
    .registers 3

    .line 182
    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    .line 184
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notifyLeftNestedEventLoop()V
    .registers 3

    .line 192
    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    .line 194
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 4

    .line 109
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 111
    iget-boolean v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    if-eqz v1, :cond_25

    .line 114
    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_21

    .line 116
    :goto_14
    :try_start_14
    iget-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    if-eqz v0, :cond_23

    .line 117
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_14

    .line 119
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_21} :catch_21

    .line 137
    :catch_21
    move-exception v0

    .line 140
    return-void

    .line 119
    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1e

    goto :goto_0

    .line 122
    :cond_25
    :try_start_25
    new-instance v1, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;

    invoke-direct {v1, p0, v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;-><init>(Lcom/sun/glass/ui/InvokeLaterDispatcher;Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

    invoke-interface {v0, v1}, Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;->submitForLaterInvocation(Ljava/lang/Runnable;)V

    .line 124
    iget-object v2, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_32} :catch_21

    .line 126
    :goto_32
    :try_start_32
    invoke-virtual {v1}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    if-nez v0, :cond_4a

    .line 127
    iget-object v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_42

    goto :goto_32

    .line 132
    :catchall_42
    move-exception v0

    const/4 v1, 0x0

    :try_start_44
    iput-boolean v1, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    .line 133
    throw v0

    .line 134
    :catchall_47
    move-exception v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_47

    :try_start_49
    throw v0
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4a} :catch_21

    .line 132
    :cond_4a
    const/4 v0, 0x0

    :try_start_4b
    iput-boolean v0, p0, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    .line 134
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_47

    goto :goto_0
.end method
