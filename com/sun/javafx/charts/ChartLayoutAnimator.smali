.class public final Lcom/sun/javafx/charts/ChartLayoutAnimator;
.super Ljavafx/animation/AnimationTimer;
.source "ChartLayoutAnimator.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/AnimationTimer;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeTimeLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final isAxis:Z

.field private nodeToLayout:Ljavafx/scene/Parent;


# direct methods
.method public constructor <init>(Ljavafx/scene/Parent;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljavafx/animation/AnimationTimer;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->nodeToLayout:Ljavafx/scene/Parent;

    .line 52
    instance-of v0, p1, Ljavafx/scene/chart/Axis;

    iput-boolean v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->isAxis:Z

    .line 53
    return-void
.end method


# virtual methods
.method public animate(Ljavafx/animation/Animation;)Ljava/lang/Object;
    .registers 4

    .line 109
    new-instance v0, Ljavafx/animation/SequentialTransition;

    invoke-direct {v0}, Ljavafx/animation/SequentialTransition;-><init>()V

    .line 110
    invoke-virtual {v0}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1, p1}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v0, p0}, Ljavafx/animation/SequentialTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 113
    iget-object v1, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->start()V

    .line 115
    :cond_1a
    iget-object v1, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v0}, Ljavafx/animation/SequentialTransition;->play()V

    .line 118
    return-object v0
.end method

.method public varargs animate([Ljavafx/animation/KeyFrame;)Ljava/lang/Object;
    .registers 4

    .line 88
    new-instance v0, Ljavafx/animation/Timeline;

    invoke-direct {v0}, Ljavafx/animation/Timeline;-><init>()V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavafx/animation/Timeline;->setAutoReverse(Z)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 91
    invoke-virtual {v0}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1, p1}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0, p0}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 94
    iget-object v1, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->start()V

    .line 96
    :cond_22
    iget-object v1, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v0}, Ljavafx/animation/Timeline;->play()V

    .line 99
    return-object v0
.end method

.method public handle(J)V
    .registers 4

    .line 56
    iget-boolean v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->isAxis:Z

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->nodeToLayout:Ljavafx/scene/Parent;

    check-cast v0, Ljavafx/scene/chart/Axis;

    invoke-virtual {v0}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 61
    :goto_b
    return-void

    .line 59
    :cond_c
    iget-object v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->nodeToLayout:Ljavafx/scene/Parent;

    invoke-virtual {v0}, Ljavafx/scene/Parent;->requestLayout()V

    goto :goto_b
.end method

.method public handle(Ljavafx/event/ActionEvent;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-virtual {p1}, Ljavafx/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->stop()V

    .line 67
    :cond_14
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->handle(J)V

    .line 68
    return-void
.end method

.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .registers 2

    .line 45
    check-cast p1, Ljavafx/event/ActionEvent;

    invoke-virtual {p0, p1}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->handle(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method public stop(Ljava/lang/Object;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation;

    .line 77
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljavafx/animation/Animation;->stop()V

    .line 78
    :cond_d
    iget-object v0, p0, Lcom/sun/javafx/charts/ChartLayoutAnimator;->activeTimeLines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->stop()V

    .line 79
    :cond_18
    return-void
.end method
