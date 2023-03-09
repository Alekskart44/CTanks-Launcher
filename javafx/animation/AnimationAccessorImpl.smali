.class final Ljavafx/animation/AnimationAccessorImpl;
.super Lcom/sun/scenario/animation/shared/AnimationAccessor;
.source "AnimationAccessorImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/sun/scenario/animation/shared/AnimationAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(Ljavafx/animation/Animation;)V
    .registers 2

    .line 49
    invoke-virtual {p1}, Ljavafx/animation/Animation;->finished()V

    .line 50
    return-void
.end method

.method public jumpTo(Ljavafx/animation/Animation;JJZ)V
    .registers 7

    .line 44
    invoke-virtual/range {p1 .. p6}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    .line 45
    return-void
.end method

.method public playTo(Ljavafx/animation/Animation;JJ)V
    .registers 6

    .line 39
    invoke-virtual {p1, p2, p3, p4, p5}, Ljavafx/animation/Animation;->doPlayTo(JJ)V

    .line 40
    return-void
.end method

.method public setCurrentRate(Ljavafx/animation/Animation;D)V
    .registers 4

    .line 34
    invoke-virtual {p1, p2, p3}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    .line 35
    return-void
.end method

.method public setCurrentTicks(Ljavafx/animation/Animation;J)V
    .registers 4

    .line 54
    invoke-virtual {p1, p2, p3}, Ljavafx/animation/Animation;->setCurrentTicks(J)V

    .line 55
    return-void
.end method
