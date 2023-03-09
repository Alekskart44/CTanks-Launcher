.class Lcom/sun/javafx/binding/ExpressionHelper$Generic;
.super Lcom/sun/javafx/binding/ExpressionHelper;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 199
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;)V

    .line 200
    new-array v0, v2, [Ljavafx/beans/InvalidationListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 201
    iput v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 202
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;)V

    .line 213
    new-array v0, v1, [Ljavafx/beans/InvalidationListener;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 214
    iput v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 215
    new-array v0, v1, [Ljavafx/beans/value/ChangeListener;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 216
    iput v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 217
    invoke-interface {p1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 218
    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 205
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;)V

    .line 206
    new-array v0, v2, [Ljavafx/beans/value/ChangeListener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 207
    iput v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 208
    invoke-interface {p1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 209
    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper$Generic;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper$Generic",
            "<TT;>;"
        }
    .end annotation

    const/4 v2, 0x1

    .line 222
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v0, :cond_f

    .line 223
    new-array v0, v2, [Ljavafx/beans/InvalidationListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 224
    iput v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 239
    :goto_e
    return-object p0

    .line 226
    :cond_f
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v0, v0

    .line 227
    iget-boolean v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_36

    .line 228
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-ge v1, v0, :cond_2f

    .line 229
    :goto_1a
    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/InvalidationListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 237
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 228
    :cond_2f
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 230
    :cond_36
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-ne v1, v0, :cond_24

    .line 231
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 232
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-ne v1, v0, :cond_24

    .line 233
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 234
    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/InvalidationListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_24
.end method

.method protected bridge synthetic addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 3

    .line 189
    invoke-virtual {p0, p1}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    move-result-object v0

    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x1

    .line 279
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-nez v0, :cond_1b

    .line 280
    new-array v0, v3, [Ljavafx/beans/value/ChangeListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 281
    iput v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 296
    :goto_e
    iget v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_1a

    .line 297
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 299
    :cond_1a
    return-object p0

    .line 283
    :cond_1b
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v0, v0

    .line 284
    iget-boolean v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v1, :cond_42

    .line 285
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ge v1, v0, :cond_3b

    .line 286
    :goto_26
    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/value/ChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 294
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    aput-object p1, v0, v1

    goto :goto_e

    .line 285
    :cond_3b
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 287
    :cond_42
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ne v1, v0, :cond_30

    .line 288
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v2}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 289
    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ne v1, v0, :cond_30

    .line 290
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 291
    iget-object v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/value/ChangeListener;

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    goto :goto_30
.end method

.method protected fireValueChangedEvent()V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 340
    iget v5, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 341
    iget-object v6, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 342
    iget v7, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 345
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_2c

    move v3, v2

    .line 346
    :goto_e
    if-ge v3, v5, :cond_30

    .line 348
    :try_start_10
    aget-object v0, v4, v3

    iget-object v8, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v0, v8}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_1b
    .catchall {:try_start_10 .. :try_end_17} :catchall_2c

    .line 346
    :goto_17
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    .line 349
    :catch_1b
    move-exception v0

    .line 350
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_17

    .line 368
    :catchall_2c
    move-exception v0

    iput-boolean v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    .line 369
    throw v0

    .line 353
    :cond_30
    if-lez v7, :cond_74

    .line 354
    :try_start_32
    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2c

    if-nez v0, :cond_57

    if-eqz v3, :cond_55

    move v0, v1

    .line 357
    :goto_43
    if-eqz v0, :cond_74

    move v1, v2

    .line 358
    :goto_46
    if-ge v1, v7, :cond_74

    .line 360
    :try_start_48
    aget-object v0, v6, v1

    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v5, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    invoke-interface {v0, v4, v3, v5}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_63
    .catchall {:try_start_48 .. :try_end_51} :catchall_2c

    .line 358
    :goto_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_46

    :cond_55
    move v0, v2

    .line 356
    goto :goto_43

    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    goto :goto_43

    :cond_61
    move v0, v2

    goto :goto_43

    .line 361
    :catch_63
    move-exception v0

    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_2c

    goto :goto_51

    .line 368
    :cond_74
    iput-boolean v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    .line 370
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v0, :cond_2a

    move v0, v1

    .line 245
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-ge v0, v2, :cond_2a

    .line 246
    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 247
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-ne v2, v3, :cond_30

    .line 248
    iget v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ne v0, v3, :cond_2b

    .line 249
    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v0

    .line 274
    :cond_2a
    :goto_2a
    return-object p0

    .line 251
    :cond_2b
    iput-object v5, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 252
    iput v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    goto :goto_2a

    .line 253
    :cond_30
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_48

    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-nez v2, :cond_48

    .line 254
    new-instance v1, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v1

    goto :goto_2a

    .line 256
    :cond_48
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 257
    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 258
    iget-boolean v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_5f

    .line 259
    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/beans/InvalidationListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 260
    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_5f
    if-lez v2, :cond_68

    .line 263
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    :cond_68
    iget v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 266
    iget-boolean v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2a

    .line 267
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    aput-object v5, v0, v1

    goto :goto_2a

    .line 245
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-eqz v0, :cond_2a

    move v0, v1

    .line 305
    :goto_8
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ge v0, v2, :cond_2a

    .line 306
    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 307
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ne v2, v3, :cond_30

    .line 308
    iget v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-ne v0, v3, :cond_2b

    .line 309
    new-instance v0, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)V

    move-object p0, v0

    .line 334
    :cond_2a
    :goto_2a
    return-object p0

    .line 311
    :cond_2b
    iput-object v5, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 312
    iput v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    goto :goto_2a

    .line 313
    :cond_30
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_48

    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-nez v2, :cond_48

    .line 314
    new-instance v1, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)V

    move-object p0, v1

    goto :goto_2a

    .line 316
    :cond_48
    iget v2, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 317
    iget-object v3, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 318
    iget-boolean v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_5f

    .line 319
    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/beans/value/ChangeListener;

    iput-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 320
    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :cond_5f
    if-lez v2, :cond_68

    .line 323
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_68
    iget v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 326
    iget-boolean v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-nez v0, :cond_2a

    .line 327
    iget-object v0, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    iget v1, p0, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    aput-object v5, v0, v1

    goto :goto_2a

    .line 305
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method
