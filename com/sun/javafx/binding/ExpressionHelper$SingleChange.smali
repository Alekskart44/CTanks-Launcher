.class Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;
.super Lcom/sun/javafx/binding/ExpressionHelper;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
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
.field private currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;)V

    .line 150
    iput-object p2, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    .line 151
    invoke-interface {p1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    .line 152
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

    .line 156
    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

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

    .line 166
    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    .line 177
    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    .line 178
    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    if-nez v3, :cond_20

    if-eqz v2, :cond_1e

    .line 179
    :cond_12
    :goto_12
    if-eqz v0, :cond_1d

    .line 181
    :try_start_14
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_2a

    .line 186
    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    move v0, v1

    .line 178
    goto :goto_12

    :cond_20
    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v0, v1

    goto :goto_12

    .line 182
    :catch_2a
    move-exception v0

    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 161
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method
