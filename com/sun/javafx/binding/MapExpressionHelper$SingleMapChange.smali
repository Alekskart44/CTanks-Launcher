.class Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;
.super Lcom/sun/javafx/binding/MapExpressionHelper;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleMapChange"
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

.field private final listener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 236
    iput-object p2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    .line 237
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 238
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

    .line 242
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;)V

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

    .line 252
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;)V

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

    .line 262
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Ljavafx/collections/MapChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 8

    .line 272
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 273
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 274
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    if-eq v0, v1, :cond_e2

    .line 275
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-direct {v2, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 276
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    if-nez v0, :cond_41

    .line 277
    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_23

    .line 280
    :cond_41
    if-nez v1, :cond_6b

    .line 281
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v0}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_4d

    .line 285
    :cond_6b
    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 288
    iget-object v5, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v5, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 289
    iget-object v5, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v5, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 290
    if-nez v0, :cond_a3

    if-eqz v5, :cond_73

    .line 291
    :goto_99
    iget-object v6, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-virtual {v2, v4, v0, v5}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v0

    invoke-interface {v6, v0}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_73

    .line 290
    :cond_a3
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    goto :goto_99

    .line 294
    :cond_aa
    iget-object v5, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_73

    .line 297
    :cond_b4
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v0}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_be
    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 299
    invoke-interface {v1, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_be

    .line 300
    iget-object v5, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v0

    invoke-interface {v5, v0}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_be

    .line 305
    :cond_e2
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    new-instance v1, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-direct {v1, v2, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V

    invoke-interface {v0, v1}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 310
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

    .line 247
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

    .line 257
    return-object p0
.end method

.method protected removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method
