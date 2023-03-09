.class public final Ljavafx/animation/Timeline;
.super Ljavafx/animation/Animation;
.source "Timeline.java"


# instance fields
.field final clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

.field private final keyFrames:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/KeyFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 160
    invoke-direct {p0}, Ljavafx/animation/Animation;-><init>()V

    .line 94
    new-instance v0, Ljavafx/animation/Timeline$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 161
    new-instance v0, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-direct {v0, p0}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 162
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4

    .line 152
    invoke-direct {p0, p1, p2}, Ljavafx/animation/Animation;-><init>(D)V

    .line 94
    new-instance v0, Ljavafx/animation/Timeline$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 153
    new-instance v0, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-direct {v0, p0}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 154
    return-void
.end method

.method public varargs constructor <init>(D[Ljavafx/animation/KeyFrame;)V
    .registers 5

    .line 128
    invoke-direct {p0, p1, p2}, Ljavafx/animation/Animation;-><init>(D)V

    .line 94
    new-instance v0, Ljavafx/animation/Timeline$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 129
    new-instance v0, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-direct {v0, p0}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 130
    invoke-virtual {p0}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, p3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V
    .registers 3

    .line 166
    invoke-direct {p0, p1}, Ljavafx/animation/Animation;-><init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V

    .line 94
    new-instance v0, Ljavafx/animation/Timeline$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 167
    new-instance v0, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-direct {v0, p0}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 168
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/animation/KeyFrame;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljavafx/animation/Animation;-><init>()V

    .line 94
    new-instance v0, Ljavafx/animation/Timeline$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Timeline$1;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    .line 141
    new-instance v0, Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-direct {v0, p0}, Lcom/sun/scenario/animation/shared/TimelineClipCore;-><init>(Ljavafx/animation/Timeline;)V

    iput-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    .line 142
    invoke-virtual {p0}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    .line 143
    return-void
.end method


# virtual methods
.method doJumpTo(JJZ)V
    .registers 7

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavafx/animation/Timeline;->sync(Z)V

    .line 178
    invoke-virtual {p0, p1, p2}, Ljavafx/animation/Timeline;->setCurrentTicks(J)V

    .line 179
    iget-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-virtual {v0, p1, p2, p5}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->jumpTo(JZ)V

    .line 180
    return-void
.end method

.method doPlayTo(JJ)V
    .registers 6

    .line 172
    iget-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->playTo(J)V

    .line 173
    return-void
.end method

.method doStart(Z)V
    .registers 3

    .line 190
    invoke-super {p0, p1}, Ljavafx/animation/Animation;->doStart(Z)V

    .line 191
    iget-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-virtual {v0, p1}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->start(Z)V

    .line 192
    return-void
.end method

.method public final getKeyFrames()Ljavafx/collections/ObservableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/KeyFrame;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ljavafx/animation/Timeline;->keyFrames:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method setCurrentRate(D)V
    .registers 4

    .line 184
    invoke-super {p0, p1, p2}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    .line 185
    iget-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->notifyCurrentRateChanged()V

    .line 186
    return-void
.end method

.method public stop()V
    .registers 3

    .line 199
    iget-object v0, p0, Ljavafx/animation/Timeline;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_c

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stop when embedded in another animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v0

    sget-object v1, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v0, v1, :cond_19

    .line 203
    iget-object v0, p0, Ljavafx/animation/Timeline;->clipCore:Lcom/sun/scenario/animation/shared/TimelineClipCore;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/TimelineClipCore;->abort()V

    .line 205
    :cond_19
    invoke-super {p0}, Ljavafx/animation/Animation;->stop()V

    .line 206
    return-void
.end method
