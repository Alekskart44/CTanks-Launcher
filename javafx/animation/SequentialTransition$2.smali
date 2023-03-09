.class Ljavafx/animation/SequentialTransition$2;
.super Lcom/sun/javafx/collections/TrackableObservableList;
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
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/SequentialTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/SequentialTransition;)V
    .registers 2

    .line 179
    iput-object p1, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

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

    .line 182
    :cond_0
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 183
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

    .line 184
    const/4 v2, 0x0

    iput-object v2, v0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 185
    invoke-virtual {v0}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 186
    invoke-virtual {v0}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 187
    invoke-virtual {v0}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    iget-object v2, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v0, v2}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_e

    .line 189
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

    .line 190
    iget-object v2, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iput-object v2, v0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 191
    invoke-virtual {v0}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 192
    invoke-virtual {v0}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    iget-object v3, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 193
    invoke-virtual {v0}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    iget-object v2, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v0, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_47

    .line 196
    :cond_79
    iget-object v0, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Ljavafx/animation/SequentialTransition$2;->this$0:Ljavafx/animation/SequentialTransition;

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 197
    return-void
.end method
