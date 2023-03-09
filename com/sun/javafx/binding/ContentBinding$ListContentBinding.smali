.class Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TE;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final listRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    if-ne p0, p1, :cond_6

    move v3, v2

    .line 151
    :cond_5
    :goto_5
    return v3

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    if-eqz v0, :cond_5

    .line 146
    instance-of v1, p1, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    if-eqz v1, :cond_5

    .line 147
    check-cast p1, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    .line 148
    iget-object v1, p1, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 149
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

    .line 131
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_b
.end method

.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    if-nez v0, :cond_12

    .line 106
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 122
    :cond_11
    return-void

    .line 108
    :cond_12
    :goto_12
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 109
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 110
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v3

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_12

    .line 113
    :cond_45
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 114
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v2

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    :cond_5f
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 117
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_12
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

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
