.class Ljavafx/animation/ParallelTransition$1;
.super Ljava/lang/Object;
.source "ParallelTransition.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


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
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/ParallelTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/ParallelTransition;)V
    .registers 2

    .line 124
    iput-object p1, p0, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3b

    .line 129
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 130
    iget-object v1, p0, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    .line 131
    iget-object v1, v1, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    iget-object v2, p0, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    iget-object v2, v2, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v2, v2, v0

    iget-object v4, p0, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v4}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 133
    :cond_36
    iget-object v0, p0, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    .line 135
    :cond_3b
    return-void
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 124
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Ljavafx/animation/ParallelTransition$1;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method
