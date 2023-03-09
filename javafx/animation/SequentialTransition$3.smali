.class Ljavafx/animation/SequentialTransition$3;
.super Lcom/sun/javafx/collections/VetoableListDecorator;
.source "SequentialTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/SequentialTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/VetoableListDecorator",
        "<",
        "Ljavafx/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/SequentialTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/SequentialTransition;Ljavafx/collections/ObservableList;)V
    .registers 3

    .line 198
    iput-object p1, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    invoke-direct {p0, p2}, Lcom/sun/javafx/collections/VetoableListDecorator;-><init>(Ljavafx/collections/ObservableList;)V

    return-void
.end method


# virtual methods
.method protected varargs onProposedChange(Ljava/util/List;[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/animation/Animation;",
            ">;[I)V"
        }
    .end annotation

    .line 202
    const/4 v2, 0x0

    .line 203
    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_22

    .line 204
    aget v1, p2, v0

    :goto_7
    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    if-ge v1, v3, :cond_1f

    .line 205
    iget-object v3, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    iget-object v4, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v4, v4, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4, v1}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 203
    :cond_1f
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 208
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation;

    .line 209
    if-nez v0, :cond_50

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    :goto_3b
    if-eqz v0, :cond_72

    .line 224
    iget-object v1, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 225
    iget-object v1, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    iget-object v2, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    throw v0

    .line 213
    :cond_50
    iget-object v3, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to add a duplicate to the list of children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    .line 217
    :cond_62
    iget-object v3, p0, Ljavafx/animation/SequentialTransition$3;->this$0:Ljavafx/animation/SequentialTransition;

    invoke-static {v0, v3}, Ljavafx/animation/SequentialTransition;->checkCycle(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This change would create cycle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    .line 228
    :cond_72
    return-void

    :cond_73
    move-object v0, v2

    goto :goto_3b
.end method
