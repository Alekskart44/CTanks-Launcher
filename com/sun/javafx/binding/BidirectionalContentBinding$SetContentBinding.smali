.class Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"

# interfaces
.implements Ljavafx/collections/SetChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/SetChangeListener",
        "<TE;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 205
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    if-ne p0, p1, :cond_5

    .line 276
    :cond_4
    :goto_4
    return v0

    .line 255
    :cond_5
    iget-object v2, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 257
    if-eqz v2, :cond_15

    if-nez v3, :cond_17

    :cond_15
    move v0, v1

    .line 258
    goto :goto_4

    .line 261
    :cond_17
    instance-of v4, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    if-eqz v4, :cond_37

    .line 262
    check-cast p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    .line 263
    iget-object v4, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 264
    iget-object v5, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 265
    if-eqz v4, :cond_2d

    if-nez v5, :cond_2f

    :cond_2d
    move v0, v1

    .line 266
    goto :goto_4

    .line 269
    :cond_2f
    if-ne v2, v4, :cond_33

    if-eq v3, v5, :cond_4

    .line 272
    :cond_33
    if-ne v2, v5, :cond_37

    if-eq v3, v4, :cond_4

    :cond_37
    move v0, v1

    .line 276
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    .line 243
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableSet;

    .line 244
    if-nez v0, :cond_19

    move v3, v2

    .line 245
    :goto_14
    if-nez v1, :cond_1f

    move v0, v2

    .line 246
    :goto_17
    mul-int/2addr v0, v3

    return v0

    .line 244
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v3, v0

    goto :goto_14

    .line 245
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_17
.end method

.method public onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 209
    iget-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    if-nez v0, :cond_23

    .line 210
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    .line 211
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableSet;

    .line 212
    if-eqz v0, :cond_19

    if-nez v1, :cond_24

    .line 213
    :cond_19
    if-eqz v0, :cond_1e

    .line 214
    invoke-interface {v0, p0}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 216
    :cond_1e
    if-eqz v1, :cond_23

    .line 217
    invoke-interface {v1, p0}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 233
    :cond_23
    :goto_23
    return-void

    .line 221
    :cond_24
    const/4 v2, 0x1

    :try_start_25
    iput-boolean v2, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    .line 222
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->getSet()Ljavafx/collections/ObservableSet;

    move-result-object v2

    if-ne v0, v2, :cond_3d

    .line 223
    :goto_2d
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->wasRemoved()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 224
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_47

    .line 229
    :goto_3a
    iput-boolean v3, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    goto :goto_23

    :cond_3d
    move-object v1, v0

    .line 222
    goto :goto_2d

    .line 226
    :cond_3f
    :try_start_3f
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_47

    goto :goto_3a

    .line 229
    :catchall_47
    move-exception v0

    iput-boolean v3, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    .line 230
    throw v0
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

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
