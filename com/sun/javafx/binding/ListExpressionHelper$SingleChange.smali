.class Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;
.super Lcom/sun/javafx/binding/ListExpressionHelper;
.source "ListExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ListExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ListExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentValue:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 194
    iput-object p2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    .line 195
    invoke-interface {p1}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    iput-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 196
    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 5
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

    .line 210
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/ListChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 5

    .line 230
    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 231
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    iput-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 232
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableList;

    if-eq v0, v1, :cond_19

    .line 233
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableList;

    invoke-interface {v0, v2, v1, v3}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    :cond_19
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableList;

    iget-object v3, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableList;

    invoke-interface {v0, v1, v2, v3}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 205
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 3
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

    .line 215
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method protected removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 225
    return-object p0
.end method
