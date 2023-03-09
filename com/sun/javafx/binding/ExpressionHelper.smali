.class public abstract Lcom/sun/javafx/binding/ExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;,
        Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/ExpressionHelper$Generic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelperBase;"
    }
.end annotation


# instance fields
.field protected final observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/sun/javafx/binding/ExpressionHelper;->observable:Ljavafx/beans/value/ObservableValue;

    .line 91
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 51
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_a
    invoke-interface {p1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    .line 54
    if-nez p0, :cond_15

    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)V

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v0

    goto :goto_14
.end method

.method public static addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 65
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_a
    if-nez p0, :cond_12

    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)V

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v0

    goto :goto_11
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;)V"
        }
    .end annotation

    .line 79
    if-eqz p0, :cond_5

    .line 80
    invoke-virtual {p0}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent()V

    .line 82
    :cond_5
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 58
    if-nez p1, :cond_8

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .line 72
    if-nez p1, :cond_8

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method
