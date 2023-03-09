.class Ljavafx/animation/Timeline$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/animation/KeyFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Timeline;


# direct methods
.method constructor <init>(Ljavafx/animation/Timeline;)V
    .registers 2

    .line 94
    iput-object p1, p0, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

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
            "Ljavafx/animation/KeyFrame;",
            ">;)V"
        }
    .end annotation

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 98
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/KeyFrame;

    .line 100
    invoke-virtual {v0}, Ljavafx/animation/KeyFrame;->getName()Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_14

    .line 102
    iget-object v2, p0, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getCuePoints()Ljavafx/collections/ObservableMap;

    move-result-object v2

    invoke-interface {v2, v0}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 105
    :cond_30
    invoke-virtual {p1}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/KeyFrame;

    .line 106
    invoke-virtual {v0}, Ljavafx/animation/KeyFrame;->getName()Ljava/lang/String;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_38

    .line 108
    iget-object v3, p0, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->getCuePoints()Ljavafx/collections/ObservableMap;

    move-result-object v3

    invoke-virtual {v0}, Ljavafx/animation/KeyFrame;->getTime()Ljavafx/util/Duration;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 111
    :cond_58
    iget-object v0, p0, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    iget-object v0, v0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    iget-object v1, p0, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->setKeyFrames(Ljava/util/Collection;)Ljavafx/util/Duration;

    move-result-object v0

    .line 112
    iget-object v1, p0, Ljavafx/animation/Timeline$1;->this$0:Ljavafx/animation/Timeline;

    invoke-virtual {v1, v0}, Ljavafx/animation/Timeline;->setCycleDuration(Ljavafx/util/Duration;)V

    goto :goto_0

    .line 115
    :cond_6c
    return-void
.end method
