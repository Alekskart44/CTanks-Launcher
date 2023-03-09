.class Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;
.super Lcom/sun/javafx/binding/ListExpressionHelper;
.source "ListExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ListExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleListChange"
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

.field private final listener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 250
    iput-object p2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    .line 251
    invoke-interface {p1}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    iput-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 252
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

    .line 256
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;)V

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

    .line 266
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/ListChangeListener;)V

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

    .line 276
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 6

    const/4 v2, 0x0

    .line 286
    iget-object v3, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 287
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    iput-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 288
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    if-eq v0, v3, :cond_28

    .line 289
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    if-nez v0, :cond_29

    move v1, v2

    .line 290
    :goto_16
    if-nez v3, :cond_31

    .line 291
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v0

    .line 293
    :goto_1c
    new-instance v3, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    iget-object v4, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    .line 294
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v0, v3}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 296
    :cond_28
    return-void

    .line 289
    :cond_29
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    invoke-interface {v0}, Ljavafx/collections/ObservableList;->size()I

    move-result v0

    move v1, v0

    goto :goto_16

    .line 292
    :cond_31
    invoke-static {v3}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v0

    goto :goto_1c
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    new-instance v1, Lcom/sun/javafx/collections/SourceAdapterChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-direct {v1, v2, p1}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    invoke-interface {v0, v1}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 301
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

    .line 261
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 2
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

    .line 271
    return-object p0
.end method

.method protected removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method
