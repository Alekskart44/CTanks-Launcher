.class public abstract Lcom/sun/javafx/binding/ListExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "ListExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;,
        Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;,
        Lcom/sun/javafx/binding/ListExpressionHelper$Generic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelperBase;"
    }
.end annotation


# instance fields
.field protected final observable:Ljavafx/beans/value/ObservableListValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/beans/value/ObservableListValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/sun/javafx/binding/ListExpressionHelper;->observable:Ljavafx/beans/value/ObservableListValue;

    .line 120
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 59
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_a
    invoke-interface {p1}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    .line 63
    if-nez p0, :cond_15

    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)V

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v0

    goto :goto_14
.end method

.method public static addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 74
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_a
    if-nez p0, :cond_12

    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)V

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v0

    goto :goto_11
.end method

.method public static addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 89
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_a
    if-nez p0, :cond_12

    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)V

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v0

    goto :goto_11
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;)V"
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_5

    .line 103
    invoke-virtual {p0}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent()V

    .line 105
    :cond_5
    return-void
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener$Change;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 108
    if-eqz p0, :cond_5

    .line 109
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 111
    :cond_5
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 67
    if-nez p1, :cond_8

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 81
    if-nez p1, :cond_8

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 95
    if-nez p1, :cond_8

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 98
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method
