.class Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"

# interfaces
.implements Ljavafx/collections/SetChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ContentBinding;
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
.field private final setRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    if-ne p0, p1, :cond_6

    move v3, v2

    .line 204
    :cond_5
    :goto_5
    return v3

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 195
    if-eqz v0, :cond_5

    .line 199
    instance-of v1, p1, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    if-eqz v1, :cond_5

    .line 200
    check-cast p1, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    .line 201
    iget-object v1, p1, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 202
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

    .line 184
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 185
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    goto :goto_b
.end method

.method public onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 166
    if-nez v0, :cond_12

    .line 167
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->getSet()Ljavafx/collections/ObservableSet;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 175
    :goto_11
    return-void

    .line 169
    :cond_12
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 170
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 172
    :cond_20
    invoke-virtual {p1}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

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
