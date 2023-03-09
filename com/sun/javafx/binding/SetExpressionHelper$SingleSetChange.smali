.class Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;
.super Lcom/sun/javafx/binding/SetExpressionHelper;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleSetChange"
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
.field private currentValue:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 235
    iput-object p2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    .line 236
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 237
    return-void
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

    .line 241
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 5
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

    .line 251
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/SetChangeListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 6

    .line 271
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 272
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 273
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    if-eq v0, v1, :cond_8f

    .line 274
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-direct {v0, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 275
    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    if-nez v2, :cond_33

    .line 276
    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-virtual {v0, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v2

    invoke-interface {v3, v2}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    goto :goto_1f

    .line 279
    :cond_33
    if-nez v1, :cond_4f

    .line 280
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 281
    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-virtual {v0, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v2

    invoke-interface {v3, v2}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    goto :goto_3b

    .line 284
    :cond_4f
    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 285
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v4, v3}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 286
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-virtual {v0, v3}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v3

    invoke-interface {v4, v3}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    goto :goto_53

    .line 289
    :cond_6f
    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_75
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 290
    invoke-interface {v1, v3}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 291
    iget-object v4, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-virtual {v0, v3}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v3

    invoke-interface {v4, v3}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    goto :goto_75

    .line 296
    :cond_8f
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    new-instance v1, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-direct {v1, v2, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V

    invoke-interface {v0, v1}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 301
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 246
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 2
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

    .line 256
    return-object p0
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method
