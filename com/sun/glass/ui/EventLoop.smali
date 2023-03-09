.class public final Lcom/sun/glass/ui/EventLoop;
.super Ljava/lang/Object;
.source "EventLoop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/EventLoop$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/glass/ui/EventLoop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private returnValue:Ljava/lang/Object;

.field private state:Lcom/sun/glass/ui/EventLoop$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/sun/glass/ui/EventLoop;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    return-void

    .line 33
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 61
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 62
    return-void
.end method

.method private static synthetic lambda$enter$0()V
    .registers 3

    .line 120
    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/EventLoop;

    .line 122
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v2, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 123
    invoke-static {v0}, Lcom/sun/glass/ui/Application;->leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 125
    :cond_17
    return-void
.end method


# virtual methods
.method public enter()Ljava/lang/Object;
    .registers 4

    const/4 v2, 0x0

    .line 99
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 100
    iget-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v1, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The event loop object isn\'t idle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_16
    sget-object v0, Lcom/sun/glass/ui/EventLoop$State;->ACTIVE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 105
    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 107
    :try_start_1f
    invoke-static {}, Lcom/sun/glass/ui/Application;->enterNestedEventLoop()Ljava/lang/Object;

    move-result-object v0

    .line 108
    sget-boolean v1, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    if-nez v1, :cond_60

    if-eq v0, p0, :cond_60

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal inconsistency - wrong EventLoop"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_31

    .line 114
    :catchall_31
    move-exception v0

    move-object v1, v0

    iput-object v2, p0, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 116
    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/EventLoop;

    iget-object v0, v0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v2, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v0, v2}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 119
    invoke-custom {}, call_site_690("run", ()Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/glass/ui/EventLoop;->lambda$enter$0()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 127
    :cond_5f
    throw v1

    .line 109
    :cond_60
    :try_start_60
    sget-boolean v0, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_74

    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_74

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal inconsistency - corrupted event loops stack"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 110
    :cond_74
    sget-boolean v0, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v1, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The event loop isn\'t leaving"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 112
    :cond_8a
    iget-object v1, p0, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_60 .. :try_end_8c} :catchall_31

    .line 114
    iput-object v2, p0, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 116
    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/EventLoop;

    iget-object v0, v0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v2, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v0, v2}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 119
    invoke-custom {}, call_site_691("run", ()Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/glass/ui/EventLoop;->lambda$enter$0()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 112
    :cond_b8
    return-object v1
.end method

.method public getState()Lcom/sun/glass/ui/EventLoop$State;
    .registers 2

    .line 70
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 71
    iget-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    return-object v0
.end method

.method public leave(Ljava/lang/Object;)V
    .registers 4

    .line 157
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 158
    iget-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v1, Lcom/sun/glass/ui/EventLoop$State;->ACTIVE:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The event loop object isn\'t active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_15
    sget-object v0, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v0, p0, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 163
    iput-object p1, p0, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_26

    .line 166
    invoke-static {p0}, Lcom/sun/glass/ui/Application;->leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 168
    :cond_26
    return-void
.end method
