.class Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/MapChangeListener",
        "<TK;TV;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    .line 289
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 290
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 291
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    if-ne p0, p1, :cond_5

    .line 363
    :cond_4
    :goto_4
    return v0

    .line 342
    :cond_5
    iget-object v2, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 343
    iget-object v3, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 344
    if-eqz v2, :cond_15

    if-nez v3, :cond_17

    :cond_15
    move v0, v1

    .line 345
    goto :goto_4

    .line 348
    :cond_17
    instance-of v4, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    if-eqz v4, :cond_37

    .line 349
    check-cast p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    .line 350
    iget-object v4, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 351
    iget-object v5, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 352
    if-eqz v4, :cond_2d

    if-nez v5, :cond_2f

    :cond_2d
    move v0, v1

    .line 353
    goto :goto_4

    .line 356
    :cond_2f
    if-ne v2, v4, :cond_33

    if-eq v3, v5, :cond_4

    .line 359
    :cond_33
    if-ne v2, v5, :cond_37

    if-eq v3, v4, :cond_4

    :cond_37
    move v0, v1

    .line 363
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    .line 330
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableMap;

    .line 331
    if-nez v0, :cond_19

    move v3, v2

    .line 332
    :goto_14
    if-nez v1, :cond_1f

    move v0, v2

    .line 333
    :goto_17
    mul-int/2addr v0, v3

    return v0

    .line 331
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v3, v0

    goto :goto_14

    .line 332
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_17
.end method

.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 295
    iget-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    if-nez v0, :cond_23

    .line 296
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableMap;

    .line 297
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableMap;

    .line 298
    if-eqz v0, :cond_19

    if-nez v1, :cond_24

    .line 299
    :cond_19
    if-eqz v0, :cond_1e

    .line 300
    invoke-interface {v0, p0}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 302
    :cond_1e
    if-eqz v1, :cond_23

    .line 303
    invoke-interface {v1, p0}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 320
    :cond_23
    :goto_23
    return-void

    .line 307
    :cond_24
    const/4 v2, 0x1

    :try_start_25
    iput-boolean v2, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    .line 308
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getMap()Ljavafx/collections/ObservableMap;

    move-result-object v2

    if-ne v0, v2, :cond_4e

    .line 309
    :goto_2d
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 310
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_3a
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 313
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_50

    .line 316
    :cond_4b
    iput-boolean v3, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    goto :goto_23

    :cond_4e
    move-object v1, v0

    .line 308
    goto :goto_2d

    .line 316
    :catchall_50
    move-exception v0

    iput-boolean v3, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->updating:Z

    .line 317
    throw v0
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
