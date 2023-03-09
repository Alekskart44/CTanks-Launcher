.class Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;
.super Lcom/sun/javafx/binding/MapExpressionHelper;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
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
.field private currentValue:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 180
    iput-object p2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    .line 181
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 182
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

    .line 186
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

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

    .line 196
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

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

    .line 206
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 5

    .line 216
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 217
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 218
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    if-eq v0, v1, :cond_19

    .line 219
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v0, v2, v1, v3}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    :cond_19
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v0, v1, v2, v3}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 191
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 3
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

    .line 201
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
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

    .line 211
    return-object p0
.end method
