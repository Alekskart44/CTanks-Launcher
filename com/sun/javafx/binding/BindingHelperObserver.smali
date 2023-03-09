.class public Lcom/sun/javafx/binding/BindingHelperObserver;
.super Ljava/lang/Object;
.source "BindingHelperObserver.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;
.implements Ljavafx/beans/WeakListener;


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/binding/Binding",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/beans/binding/Binding;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/binding/Binding",
            "<*>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_d

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Binding has to be specified."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BindingHelperObserver;->ref:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/sun/javafx/binding/BindingHelperObserver;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/binding/Binding;

    .line 49
    if-nez v0, :cond_e

    .line 50
    invoke-interface {p1, p0}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 54
    :goto_d
    return-void

    .line 52
    :cond_e
    invoke-interface {v0}, Ljavafx/beans/binding/Binding;->invalidate()V

    goto :goto_d
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/sun/javafx/binding/BindingHelperObserver;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
