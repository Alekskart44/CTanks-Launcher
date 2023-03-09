.class public abstract Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.super Ljava/lang/Object;
.source "AbstractNotifyListener.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final weakListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljavafx/beans/WeakInvalidationListener;

    invoke-direct {v0, p0}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v0, p0, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->weakListener:Ljavafx/beans/WeakInvalidationListener;

    return-void
.end method


# virtual methods
.method public getWeakListener()Ljavafx/beans/InvalidationListener;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->weakListener:Ljavafx/beans/WeakInvalidationListener;

    return-object v0
.end method
