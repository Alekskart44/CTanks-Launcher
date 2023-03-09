.class public abstract Lcom/sun/javafx/binding/SetExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;,
        Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;,
        Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;,
        Lcom/sun/javafx/binding/SetExpressionHelper$Generic;
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
.field protected final observable:Ljavafx/beans/value/ObservableSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/beans/value/ObservableSetValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/sun/javafx/binding/SetExpressionHelper;->observable:Ljavafx/beans/value/ObservableSetValue;

    .line 105
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 45
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_a
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    .line 48
    if-nez p0, :cond_15

    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)V

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v0

    goto :goto_14
.end method

.method public static addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
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
    if-nez p0, :cond_12

    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)V

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v0

    goto :goto_11
.end method

.method public static addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 73
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 74
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_a
    if-nez p0, :cond_12

    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;

    invoke-direct {v0, p1, p2}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)V

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v0

    goto :goto_11
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;)V"
        }
    .end annotation

    .line 87
    if-eqz p0, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent()V

    .line 90
    :cond_5
    return-void
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener$Change;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 93
    if-eqz p0, :cond_5

    .line 94
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V

    .line 96
    :cond_5
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 52
    if-nez p1, :cond_8

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 66
    if-nez p1, :cond_8

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 80
    if-nez p1, :cond_8

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_8
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method
