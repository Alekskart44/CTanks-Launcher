.class Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalContentBinding;
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
.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    .line 109
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    if-ne p0, p1, :cond_5

    .line 190
    :cond_4
    :goto_4
    return v0

    .line 169
    :cond_5
    iget-object v2, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 171
    if-eqz v2, :cond_15

    if-nez v3, :cond_17

    :cond_15
    move v0, v1

    .line 172
    goto :goto_4

    .line 175
    :cond_17
    instance-of v4, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    if-eqz v4, :cond_37

    .line 176
    check-cast p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    .line 177
    iget-object v4, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 178
    iget-object v5, p1, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 179
    if-eqz v4, :cond_2d

    if-nez v5, :cond_2f

    :cond_2d
    move v0, v1

    .line 180
    goto :goto_4

    .line 183
    :cond_2f
    if-ne v2, v4, :cond_33

    if-eq v3, v5, :cond_4

    .line 186
    :cond_33
    if-ne v2, v5, :cond_37

    if-eq v3, v4, :cond_4

    :cond_37
    move v0, v1

    .line 190
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    .line 157
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    .line 158
    if-nez v0, :cond_19

    move v3, v2

    .line 159
    :goto_14
    if-nez v1, :cond_1f

    move v0, v2

    .line 160
    :goto_17
    mul-int/2addr v0, v3

    return v0

    .line 158
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v3, v0

    goto :goto_14

    .line 159
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_17
.end method

.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    if-nez v0, :cond_23

    .line 116
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    .line 117
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    .line 118
    if-eqz v0, :cond_19

    if-nez v1, :cond_24

    .line 119
    :cond_19
    if-eqz v0, :cond_1e

    .line 120
    invoke-interface {v0, p0}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 122
    :cond_1e
    if-eqz v1, :cond_23

    .line 123
    invoke-interface {v1, p0}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 147
    :cond_23
    :goto_23
    return-void

    .line 127
    :cond_24
    const/4 v2, 0x1

    :try_start_25
    iput-boolean v2, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    .line 128
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-ne v0, v2, :cond_60

    .line 129
    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 130
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 131
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v0

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 132
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v0

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v3

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_5c

    goto :goto_2d

    .line 143
    :catchall_5c
    move-exception v0

    iput-boolean v5, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    .line 144
    throw v0

    :cond_60
    move-object v1, v0

    .line 128
    goto :goto_2d

    .line 134
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 135
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v0

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v2

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v1, v0, v2}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 137
    :cond_78
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 138
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v0

    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z
    :try_end_89
    .catchall {:try_start_62 .. :try_end_89} :catchall_5c

    goto :goto_2d

    .line 143
    :cond_8a
    iput-boolean v5, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    goto :goto_23
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

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
