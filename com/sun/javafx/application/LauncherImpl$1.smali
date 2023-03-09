.class Lcom/sun/javafx/application/LauncherImpl$1;
.super Ljava/lang/Object;
.source "LauncherImpl.java"

# interfaces
.implements Lcom/sun/javafx/application/PlatformImpl$FinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/application/LauncherImpl;->launchApplication1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$exitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$pShutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$pStartCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$startCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 704
    iput-object p1, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$startCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$pStartCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$pShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$exitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitCalled()V
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$exitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 721
    iget-object v0, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 722
    return-void
.end method

.method public idle(Z)V
    .registers 3

    .line 706
    if-nez p1, :cond_3

    .line 716
    :cond_2
    :goto_2
    return-void

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$startCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 712
    iget-object v0, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 713
    :cond_11
    iget-object v0, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$pStartCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/sun/javafx/application/LauncherImpl$1;->val$pShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2
.end method
