.class Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;
.super Lcom/sun/javafx/binding/MapExpressionHelper;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInvalidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/MapExpressionHelper",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 129
    iput-object p2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    .line 130
    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 5
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

    .line 144
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 165
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 170
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 2
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

    .line 149
    return-object p0
.end method

.method protected removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 159
    return-object p0
.end method
