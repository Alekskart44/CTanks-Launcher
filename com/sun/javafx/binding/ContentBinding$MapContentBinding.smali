.class Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ContentBinding;
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
.field private final mapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    .line 214
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    if-ne p0, p1, :cond_6

    move v3, v2

    .line 258
    :cond_5
    :goto_5
    return v3

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 249
    if-eqz v0, :cond_5

    .line 253
    instance-of v1, p1, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    if-eqz v1, :cond_5

    .line 254
    check-cast p1, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    .line 255
    iget-object v1, p1, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 256
    if-ne v0, v1, :cond_23

    move v0, v2

    :goto_21
    move v3, v0

    goto :goto_5

    :cond_23
    move v0, v3

    goto :goto_21
.end method

.method public hashCode()I
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 239
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_b
.end method

.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 219
    if-nez v0, :cond_12

    .line 220
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getMap()Ljavafx/collections/ObservableMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 229
    :cond_11
    :goto_11
    return-void

    .line 222
    :cond_12
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 223
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1f
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 226
    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
