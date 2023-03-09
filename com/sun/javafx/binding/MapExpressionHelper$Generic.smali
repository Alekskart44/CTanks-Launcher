.class Lcom/sun/javafx/binding/MapExpressionHelper$Generic;
.super Lcom/sun/javafx/binding/MapExpressionHelper;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
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
.field private changeListeners:[Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private currentValue:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z

.field private mapChangeListeners:[Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field private mapChangeSize:I


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 325
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 326
    new-array v0, v2, [Ljavafx/beans/InvalidationListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 327
    iput v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 328
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 345
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 346
    new-array v0, v1, [Ljavafx/beans/InvalidationListener;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 347
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 348
    new-array v0, v1, [Ljavafx/beans/value/ChangeListener;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 349
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 350
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 351
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 354
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 355
    new-array v0, v1, [Ljavafx/beans/InvalidationListener;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 356
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 357
    new-array v0, v1, [Ljavafx/collections/MapChangeListener;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 358
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 359
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 360
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 331
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 332
    new-array v0, v2, [Ljavafx/beans/value/ChangeListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 333
    iput v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 334
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 335
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 363
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 364
    new-array v0, v1, [Ljavafx/beans/value/ChangeListener;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 365
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 366
    new-array v0, v1, [Ljavafx/collections/MapChangeListener;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 367
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 368
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 369
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Ljavafx/collections/MapChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 338
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 339
    new-array v0, v2, [Ljavafx/collections/MapChangeListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 340
    iput v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 341
    invoke-interface {p1}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 342
    return-void
.end method

.method private notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 572
    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 573
    iget v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 574
    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 575
    iget v5, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 576
    iget-object v6, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 577
    iget v7, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 579
    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    move v0, v1

    .line 580
    :goto_11
    if-ge v0, v3, :cond_1d

    .line 581
    aget-object v8, v2, v0

    iget-object v9, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v8, v9}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 583
    :cond_1d
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    if-ne v0, p1, :cond_23

    if-eqz p2, :cond_127

    :cond_23
    move v0, v1

    .line 584
    :goto_24
    if-ge v0, v5, :cond_32

    .line 585
    aget-object v2, v4, v0

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v8, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v2, v3, p1, v8}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 587
    :cond_32
    if-lez v7, :cond_127

    .line 588
    if-eqz p2, :cond_41

    move v0, v1

    .line 589
    :goto_37
    if-ge v0, v7, :cond_127

    .line 590
    aget-object v2, v6, v0

    invoke-interface {v2, p2}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 593
    :cond_41
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-direct {v2, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 594
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    if-nez v0, :cond_76

    .line 595
    invoke-interface {p1}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 596
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move v0, v1

    .line 597
    :goto_6c
    if-ge v0, v7, :cond_54

    .line 598
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 601
    :cond_76
    if-nez p1, :cond_a4

    .line 602
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v0}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move v0, v1

    .line 604
    :goto_9a
    if-ge v0, v7, :cond_82

    .line 605
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 609
    :cond_a4
    invoke-interface {p1}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ac
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 610
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 611
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 612
    iget-object v5, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v5, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 613
    iget-object v5, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v5, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 614
    if-nez v0, :cond_e0

    if-eqz v5, :cond_ac

    .line 615
    :goto_d2
    invoke-virtual {v2, v4, v0, v5}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move v0, v1

    .line 616
    :goto_d6
    if-ge v0, v7, :cond_ac

    .line 617
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    .line 614
    :cond_e0
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ac

    goto :goto_d2

    .line 621
    :cond_e7
    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move v0, v1

    .line 622
    :goto_eb
    if-ge v0, v7, :cond_ac

    .line 623
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 627
    :cond_f5
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v0}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 628
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 629
    invoke-interface {p1, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ff

    .line 630
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move v0, v1

    .line 631
    :goto_11d
    if-ge v0, v7, :cond_ff

    .line 632
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    :try_end_124
    .catchall {:try_start_e .. :try_end_124} :catchall_12a

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_11d

    .line 641
    :cond_127
    iput-boolean v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    .line 643
    return-void

    .line 641
    :catchall_12a
    move-exception v0

    iput-boolean v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    .line 642
    throw v0
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

    const/4 v2, 0x1

    .line 373
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v0, :cond_f

    .line 374
    new-array v0, v2, [Ljavafx/beans/InvalidationListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 375
    iput v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 390
    :goto_e
    return-object p0

    .line 377
    :cond_f
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v0, v0

    .line 378
    iget-boolean v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_36

    .line 379
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ge v1, v0, :cond_2f

    .line 380
    :goto_1a
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/InvalidationListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 388
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 379
    :cond_2f
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 381
    :cond_36
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ne v1, v0, :cond_24

    .line 382
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 383
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ne v1, v0, :cond_24

    .line 384
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 385
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/InvalidationListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_24
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 6
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

    const/4 v3, 0x1

    .line 432
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-nez v0, :cond_1d

    .line 433
    new-array v0, v3, [Ljavafx/beans/value/ChangeListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 434
    iput v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 449
    :goto_e
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_1c

    .line 450
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 452
    :cond_1c
    return-object p0

    .line 436
    :cond_1d
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v0, v0

    .line 437
    iget-boolean v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_44

    .line 438
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ge v1, v0, :cond_3d

    .line 439
    :goto_28
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/value/ChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 447
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 438
    :cond_3d
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 440
    :cond_44
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ne v1, v0, :cond_32

    .line 441
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 442
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ne v1, v0, :cond_32

    .line 443
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 444
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/value/ChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    goto :goto_32
.end method

.method protected addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x1

    .line 494
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    if-nez v0, :cond_1d

    .line 495
    new-array v0, v3, [Ljavafx/collections/MapChangeListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 496
    iput v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 511
    :goto_e
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ne v0, v3, :cond_1c

    .line 512
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 514
    :cond_1c
    return-object p0

    .line 498
    :cond_1d
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    array-length v0, v0

    .line 499
    iget-boolean v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_44

    .line 500
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ge v1, v0, :cond_3d

    .line 501
    :goto_28
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/collections/MapChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 509
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 500
    :cond_3d
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 502
    :cond_44
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ne v1, v0, :cond_32

    .line 503
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 504
    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ne v1, v0, :cond_32

    .line 505
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 506
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/collections/MapChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    goto :goto_32
.end method

.method protected fireValueChangedEvent()V
    .registers 4

    const/4 v2, 0x0

    .line 556
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v0, :cond_f

    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v0, :cond_f

    .line 557
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-direct {p0, v0, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V

    .line 563
    :goto_e
    return-void

    .line 559
    :cond_f
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 560
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 561
    invoke-direct {p0, v1, v2}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V

    goto :goto_e
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

    .line 567
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 568
    :goto_5
    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-direct {p0, v1, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V

    .line 569
    return-void

    .line 567
    :cond_b
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    iget-object v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-direct {v0, v1, p1}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_5
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v0, :cond_2e

    move v0, v1

    .line 396
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ge v0, v2, :cond_2e

    .line 397
    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 398
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ne v2, v3, :cond_49

    .line 399
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_2f

    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v0, :cond_2f

    .line 400
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v0

    .line 427
    :cond_2e
    :goto_2e
    return-object p0

    .line 401
    :cond_2f
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v0, :cond_44

    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ne v0, v3, :cond_44

    .line 402
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)V

    move-object p0, v0

    goto :goto_2e

    .line 404
    :cond_44
    iput-object v6, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 405
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    goto :goto_2e

    .line 406
    :cond_49
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v2, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v2, :cond_65

    .line 407
    new-instance v1, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v1

    goto :goto_2e

    .line 409
    :cond_65
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 410
    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 411
    iget-boolean v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_7e

    .line 412
    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/beans/InvalidationListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 413
    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    :cond_7e
    if-lez v2, :cond_87

    .line 416
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    :cond_87
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 419
    iget-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2e

    .line 420
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    aput-object v6, v0, v1

    goto :goto_2e

    .line 396
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 9
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

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-eqz v0, :cond_2e

    move v0, v1

    .line 458
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ge v0, v2, :cond_2e

    .line 459
    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 460
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ne v2, v3, :cond_49

    .line 461
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ne v0, v3, :cond_2f

    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v0, :cond_2f

    .line 462
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v0

    .line 489
    :cond_2e
    :goto_2e
    return-object p0

    .line 463
    :cond_2f
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-nez v0, :cond_44

    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ne v0, v3, :cond_44

    .line 464
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)V

    move-object p0, v0

    goto :goto_2e

    .line 466
    :cond_44
    iput-object v6, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 467
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    goto :goto_2e

    .line 468
    :cond_49
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-nez v2, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v2, :cond_65

    .line 469
    new-instance v1, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v1

    goto :goto_2e

    .line 471
    :cond_65
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 472
    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 473
    iget-boolean v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_7e

    .line 474
    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/beans/value/ChangeListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 475
    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :cond_7e
    if-lez v2, :cond_87

    .line 478
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    :cond_87
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 481
    iget-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2e

    .line 482
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    aput-object v6, v0, v1

    goto :goto_2e

    .line 458
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8
.end method

.method protected removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    if-eqz v0, :cond_2e

    move v0, v1

    .line 520
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ge v0, v2, :cond_2e

    .line 521
    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 522
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ne v2, v3, :cond_49

    .line 523
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ne v0, v3, :cond_2f

    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v0, :cond_2f

    .line 524
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v0

    .line 551
    :cond_2e
    :goto_2e
    return-object p0

    .line 525
    :cond_2f
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-nez v0, :cond_44

    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_44

    .line 526
    new-instance v0, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v0

    goto :goto_2e

    .line 528
    :cond_44
    iput-object v6, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 529
    iput v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    goto :goto_2e

    .line 530
    :cond_49
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-nez v2, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v2, :cond_65

    .line 531
    new-instance v1, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)V

    move-object p0, v1

    goto :goto_2e

    .line 533
    :cond_65
    iget v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 534
    iget-object v3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 535
    iget-boolean v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_7e

    .line 536
    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/collections/MapChangeListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 537
    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    :cond_7e
    if-lez v2, :cond_87

    .line 540
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    :cond_87
    iget v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 543
    iget-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2e

    .line 544
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    aput-object v6, v0, v1

    goto :goto_2e

    .line 520
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8
.end method
