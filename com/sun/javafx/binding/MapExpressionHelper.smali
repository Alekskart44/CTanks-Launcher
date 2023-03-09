.class public abstract Lcom/sun/javafx/binding/MapExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;,
        Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;,
        Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;,
        Lcom/sun/javafx/binding/MapExpressionHelper$Generic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelperBase;"
    }
.end annotation


# instance fields
.field protected final observable:Ljavafx/beans/value/ObservableMapValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/beans/value/ObservableMapValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/sun/javafx/binding/MapExpressionHelper;->observable:Ljavafx/beans/value/ObservableMapValue;

    .line 106
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 45
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :cond_a
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    .line 49
    if-nez p0, :cond_15

    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)V

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v0

    goto :goto_14
.end method

.method public static addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 60
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63
    :cond_a
    if-nez p0, :cond_12

    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)V

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v0

    goto :goto_11
.end method

.method public static addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
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

    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)V

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v0

    goto :goto_11
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 88
    if-eqz p0, :cond_5

    .line 89
    invoke-virtual {p0}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent()V

    .line 91
    :cond_5
    return-void
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener$Change;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 94
    if-eqz p0, :cond_5

    .line 95
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V

    .line 97
    :cond_5
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 53
    if-nez p1, :cond_8

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
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
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
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
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method
