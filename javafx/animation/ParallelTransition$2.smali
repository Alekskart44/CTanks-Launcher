.class Ljavafx/animation/ParallelTransition$2;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "ParallelTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/ParallelTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/ParallelTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/ParallelTransition;)V
    .registers 2

    .line 171
    iput-object p1, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-direct {p0}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/animation/Animation;",
            ">;)V"
        }
    .end annotation

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 175
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation;

    .line 176
    const/4 v2, 0x0

    iput-object v2, v0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 177
    invoke-virtual {v0}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 178
    invoke-virtual {v0}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 179
    invoke-virtual {v0}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    iget-object v2, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v2, v2, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v0, v2}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_e

    .line 181
    :cond_3f
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation;

    .line 182
    iget-object v2, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iput-object v2, v0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 183
    invoke-virtual {v0}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 184
    invoke-virtual {v0}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 185
    invoke-virtual {v0}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    iget-object v2, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v2, v2, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v0, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_47

    .line 188
    :cond_79
    iget-object v0, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Ljavafx/animation/ParallelTransition$2;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 189
    return-void
.end method
