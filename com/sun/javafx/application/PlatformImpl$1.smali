.class Lcom/sun/javafx/application/PlatformImpl$1;
.super Ljava/lang/Object;
.source "PlatformImpl.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/application/PlatformImpl;->startup(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedTopLevelWindows(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/tk/TKStage;",
            ">;)V"
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 280
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 281
    return-void
.end method

.method public exitedLastNestedLoop()V
    .registers 2

    .line 285
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 286
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->allNestedLoopsExitedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 288
    :cond_d
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 289
    return-void
.end method
