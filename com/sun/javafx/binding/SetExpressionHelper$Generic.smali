.class Lcom/sun/javafx/binding/SetExpressionHelper$Generic;
.super Lcom/sun/javafx/binding/SetExpressionHelper;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/SetExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private currentValue:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z

.field private setChangeListeners:[Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private setChangeSize:I


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 316
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 317
    new-array v0, v2, [Ljavafx/beans/InvalidationListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 318
    iput v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 319
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 337
    new-array v0, v1, [Ljavafx/beans/InvalidationListener;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 338
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 339
    new-array v0, v1, [Ljavafx/beans/value/ChangeListener;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 340
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 341
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 342
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 345
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 346
    new-array v0, v1, [Ljavafx/beans/InvalidationListener;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 347
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 348
    new-array v0, v1, [Ljavafx/collections/SetChangeListener;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 349
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 350
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 351
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 322
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 323
    new-array v0, v2, [Ljavafx/beans/value/ChangeListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 324
    iput v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 325
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 326
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/SetChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 354
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 355
    new-array v0, v1, [Ljavafx/beans/value/ChangeListener;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 356
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 357
    new-array v0, v1, [Ljavafx/collections/SetChangeListener;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 358
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 359
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 360
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 329
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 330
    new-array v0, v2, [Ljavafx/collections/SetChangeListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 331
    iput v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 332
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 333
    return-void
.end method

.method private notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 563
    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 564
    iget v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 565
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 566
    iget v5, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 567
    iget-object v6, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 568
    iget v7, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 570
    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    move v0, v1

    .line 571
    :goto_11
    if-ge v0, v3, :cond_1d

    .line 572
    aget-object v8, v2, v0

    iget-object v9, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v8, v9}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 574
    :cond_1d
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    if-ne v0, p1, :cond_23

    if-eqz p2, :cond_d0

    :cond_23
    move v0, v1

    .line 575
    :goto_24
    if-ge v0, v5, :cond_32

    .line 576
    aget-object v2, v4, v0

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v8, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v2, v3, p1, v8}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 578
    :cond_32
    if-lez v7, :cond_d0

    .line 579
    if-eqz p2, :cond_41

    move v0, v1

    .line 580
    :goto_37
    if-ge v0, v7, :cond_d0

    .line 581
    aget-object v2, v6, v0

    invoke-interface {v2, p2}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 584
    :cond_41
    new-instance v2, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-direct {v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 585
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    if-nez v0, :cond_68

    .line 586
    invoke-interface {p1}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 587
    invoke-virtual {v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move v0, v1

    .line 588
    :goto_5e
    if-ge v0, v7, :cond_50

    .line 589
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 592
    :cond_68
    if-nez p1, :cond_88

    .line 593
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v0}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 594
    invoke-virtual {v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move v0, v1

    .line 595
    :goto_7e
    if-ge v0, v7, :cond_70

    .line 596
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 600
    :cond_88
    invoke-interface {p1}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 601
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v4, v0}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 602
    invoke-virtual {v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move v0, v1

    .line 603
    :goto_a2
    if-ge v0, v7, :cond_8c

    .line 604
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    .line 608
    :cond_ac
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v0}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 609
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b2

    .line 610
    invoke-virtual {v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move v0, v1

    .line 611
    :goto_c6
    if-ge v0, v7, :cond_b2

    .line 612
    aget-object v4, v6, v0

    invoke-interface {v4, v2}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    :try_end_cd
    .catchall {:try_start_e .. :try_end_cd} :catchall_d3

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 622
    :cond_d0
    iput-boolean v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    .line 624
    return-void

    .line 622
    :catchall_d3
    move-exception v0

    iput-boolean v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    .line 623
    throw v0
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x1

    .line 364
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v0, :cond_f

    .line 365
    new-array v0, v2, [Ljavafx/beans/InvalidationListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 366
    iput v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 381
    :goto_e
    return-object p0

    .line 368
    :cond_f
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v0, v0

    .line 369
    iget-boolean v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_36

    .line 370
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ge v1, v0, :cond_2f

    .line 371
    :goto_1a
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/InvalidationListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 379
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 370
    :cond_2f
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 372
    :cond_36
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ne v1, v0, :cond_24

    .line 373
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 374
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ne v1, v0, :cond_24

    .line 375
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 376
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/InvalidationListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_24
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 6
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

    const/4 v3, 0x1

    .line 423
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-nez v0, :cond_1d

    .line 424
    new-array v0, v3, [Ljavafx/beans/value/ChangeListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 425
    iput v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 440
    :goto_e
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_1c

    .line 441
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 443
    :cond_1c
    return-object p0

    .line 427
    :cond_1d
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v0, v0

    .line 428
    iget-boolean v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_44

    .line 429
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ge v1, v0, :cond_3d

    .line 430
    :goto_28
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/value/ChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 438
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 429
    :cond_3d
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 431
    :cond_44
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ne v1, v0, :cond_32

    .line 432
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 433
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ne v1, v0, :cond_32

    .line 434
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 435
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/value/ChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    goto :goto_32
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    const/4 v3, 0x1

    .line 485
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    if-nez v0, :cond_1d

    .line 486
    new-array v0, v3, [Ljavafx/collections/SetChangeListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 487
    iput v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 502
    :goto_e
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ne v0, v3, :cond_1c

    .line 503
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 505
    :cond_1c
    return-object p0

    .line 489
    :cond_1d
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    array-length v0, v0

    .line 490
    iget-boolean v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_44

    .line 491
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ge v1, v0, :cond_3d

    .line 492
    :goto_28
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/collections/SetChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 500
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 491
    :cond_3d
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 493
    :cond_44
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ne v1, v0, :cond_32

    .line 494
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 495
    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ne v1, v0, :cond_32

    .line 496
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 497
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/collections/SetChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    goto :goto_32
.end method

.method protected fireValueChangedEvent()V
    .registers 4

    const/4 v2, 0x0

    .line 547
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v0, :cond_f

    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v0, :cond_f

    .line 548
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-direct {p0, v0, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V

    .line 554
    :goto_e
    return-void

    .line 550
    :cond_f
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 551
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 552
    invoke-direct {p0, v1, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V

    goto :goto_e
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 558
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 559
    :goto_5
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-direct {p0, v1, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V

    .line 560
    return-void

    .line 558
    :cond_b
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-direct {v0, v1, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V

    goto :goto_5
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v0, :cond_2e

    move v0, v1

    .line 387
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ge v0, v2, :cond_2e

    .line 388
    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 389
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ne v2, v3, :cond_49

    .line 390
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_2f

    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v0, :cond_2f

    .line 391
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v0

    .line 418
    :cond_2e
    :goto_2e
    return-object p0

    .line 392
    :cond_2f
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v0, :cond_44

    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ne v0, v3, :cond_44

    .line 393
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)V

    move-object p0, v0

    goto :goto_2e

    .line 395
    :cond_44
    iput-object v6, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 396
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    goto :goto_2e

    .line 397
    :cond_49
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v2, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v2, :cond_65

    .line 398
    new-instance v1, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v1

    goto :goto_2e

    .line 400
    :cond_65
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 401
    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 402
    iget-boolean v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_7e

    .line 403
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/beans/InvalidationListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 404
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    :cond_7e
    if-lez v2, :cond_87

    .line 407
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    :cond_87
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 410
    iget-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2e

    .line 411
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    aput-object v6, v0, v1

    goto :goto_2e

    .line 387
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 9
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

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-eqz v0, :cond_2e

    move v0, v1

    .line 449
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ge v0, v2, :cond_2e

    .line 450
    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 451
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ne v2, v3, :cond_49

    .line 452
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ne v0, v3, :cond_2f

    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v0, :cond_2f

    .line 453
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v0

    .line 480
    :cond_2e
    :goto_2e
    return-object p0

    .line 454
    :cond_2f
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-nez v0, :cond_44

    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ne v0, v3, :cond_44

    .line 455
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)V

    move-object p0, v0

    goto :goto_2e

    .line 457
    :cond_44
    iput-object v6, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 458
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    goto :goto_2e

    .line 459
    :cond_49
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-nez v2, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v2, :cond_65

    .line 460
    new-instance v1, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v1

    goto :goto_2e

    .line 462
    :cond_65
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 463
    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 464
    iget-boolean v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_7e

    .line 465
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/beans/value/ChangeListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 466
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    :cond_7e
    if-lez v2, :cond_87

    .line 469
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    :cond_87
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 472
    iget-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2e

    .line 473
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    aput-object v6, v0, v1

    goto :goto_2e

    .line 449
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    if-eqz v0, :cond_2e

    move v0, v1

    .line 511
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ge v0, v2, :cond_2e

    .line 512
    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 513
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ne v2, v3, :cond_49

    .line 514
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ne v0, v3, :cond_2f

    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v0, :cond_2f

    .line 515
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v0

    .line 542
    :cond_2e
    :goto_2e
    return-object p0

    .line 516
    :cond_2f
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-nez v0, :cond_44

    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_44

    .line 517
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v0

    goto :goto_2e

    .line 519
    :cond_44
    iput-object v6, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 520
    iput v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    goto :goto_2e

    .line 521
    :cond_49
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-nez v2, :cond_65

    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v2, :cond_65

    .line 522
    new-instance v1, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)V

    move-object p0, v1

    goto :goto_2e

    .line 524
    :cond_65
    iget v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 525
    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 526
    iget-boolean v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_7e

    .line 527
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/collections/SetChangeListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 528
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    :cond_7e
    if-lez v2, :cond_87

    .line 531
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    :cond_87
    iget v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 534
    iget-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2e

    .line 535
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    aput-object v6, v0, v1

    goto :goto_2e

    .line 511
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8
.end method
