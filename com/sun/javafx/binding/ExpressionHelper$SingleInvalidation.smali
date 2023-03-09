.class Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;
.super Lcom/sun/javafx/binding/ExpressionHelper;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInvalidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;)V

    .line 110
    iput-object p2, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    .line 111
    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 4

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 140
    :goto_7
    return-void

    .line 137
    :catch_8
    move-exception v0

    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 130
    return-object p0
.end method
