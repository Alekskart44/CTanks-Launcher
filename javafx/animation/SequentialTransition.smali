.class public final Ljavafx/animation/SequentialTransition;
.super Ljavafx/animation/Transition;
.source "SequentialTransition.java"


# static fields
.field private static final BEFORE:I = -0x1

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private cachedChildren:[Ljavafx/animation/Animation;

.field private final children:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private childrenChanged:Z

.field private final childrenListener:Ljavafx/beans/InvalidationListener;

.field private final childrenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private curIndex:I

.field private delays:[J

.field private durations:[J

.field private end:I

.field private forceChildSync:[Z

.field private node:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private offsetTicks:J

.field private oldTicks:J

.field private final rateListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private rates:[D

.field private startTimes:[J

.field private toggledRate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Ljavafx/animation/Animation;

    sput-object v0, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    .line 158
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/SequentialTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 303
    const/4 v0, 0x0

    check-cast v0, Ljavafx/scene/Node;

    invoke-direct {p0, v0}, Ljavafx/animation/SequentialTransition;-><init>(Ljavafx/scene/Node;)V

    .line 304
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V
    .registers 4

    .line 308
    invoke-direct {p0, p1}, Ljavafx/animation/Transition;-><init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V

    .line 111
    sget-object v0, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 124
    invoke-custom {p0}, call_site_1171("invalidated", (Ljavafx/animation/SequentialTransition;)Ljavafx/beans/InvalidationListener;, (Ljavafx/beans/Observable;)V, invoke-direct@Ljavafx/animation/SequentialTransition;->lambda$new$0(Ljavafx/beans/Observable;)V, (Ljavafx/beans/Observable;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 131
    new-instance v0, Ljavafx/animation/SequentialTransition$1;

    invoke-direct {v0, p0}, Ljavafx/animation/SequentialTransition$1;-><init>(Ljavafx/animation/SequentialTransition;)V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    .line 179
    new-instance v0, Ljavafx/animation/SequentialTransition$3;

    new-instance v1, Ljavafx/animation/SequentialTransition$2;

    invoke-direct {v1, p0}, Ljavafx/animation/SequentialTransition$2;-><init>(Ljavafx/animation/SequentialTransition;)V

    invoke-direct {v0, p0, v1}, Ljavafx/animation/SequentialTransition$3;-><init>(Ljavafx/animation/SequentialTransition;Ljavafx/collections/ObservableList;)V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    .line 309
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {p0, v0}, Ljavafx/animation/SequentialTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .registers 4

    .line 294
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 111
    sget-object v0, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 124
    invoke-custom {p0}, call_site_1170("invalidated", (Ljavafx/animation/SequentialTransition;)Ljavafx/beans/InvalidationListener;, (Ljavafx/beans/Observable;)V, invoke-direct@Ljavafx/animation/SequentialTransition;->lambda$new$0(Ljavafx/beans/Observable;)V, (Ljavafx/beans/Observable;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 131
    new-instance v0, Ljavafx/animation/SequentialTransition$1;

    invoke-direct {v0, p0}, Ljavafx/animation/SequentialTransition$1;-><init>(Ljavafx/animation/SequentialTransition;)V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    .line 179
    new-instance v0, Ljavafx/animation/SequentialTransition$3;

    new-instance v1, Ljavafx/animation/SequentialTransition$2;

    invoke-direct {v1, p0}, Ljavafx/animation/SequentialTransition$2;-><init>(Ljavafx/animation/SequentialTransition;)V

    invoke-direct {v0, p0, v1}, Ljavafx/animation/SequentialTransition$3;-><init>(Ljavafx/animation/SequentialTransition;Ljavafx/collections/ObservableList;)V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    .line 295
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {p0, v0}, Ljavafx/animation/SequentialTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 296
    invoke-virtual {p0, p1}, Ljavafx/animation/SequentialTransition;->setNode(Ljavafx/scene/Node;)V

    .line 297
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V
    .registers 5

    .line 269
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 111
    sget-object v0, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 124
    invoke-custom {p0}, call_site_1169("invalidated", (Ljavafx/animation/SequentialTransition;)Ljavafx/beans/InvalidationListener;, (Ljavafx/beans/Observable;)V, invoke-direct@Ljavafx/animation/SequentialTransition;->lambda$new$0(Ljavafx/beans/Observable;)V, (Ljavafx/beans/Observable;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 131
    new-instance v0, Ljavafx/animation/SequentialTransition$1;

    invoke-direct {v0, p0}, Ljavafx/animation/SequentialTransition$1;-><init>(Ljavafx/animation/SequentialTransition;)V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    .line 179
    new-instance v0, Ljavafx/animation/SequentialTransition$3;

    new-instance v1, Ljavafx/animation/SequentialTransition$2;

    invoke-direct {v1, p0}, Ljavafx/animation/SequentialTransition$2;-><init>(Ljavafx/animation/SequentialTransition;)V

    invoke-direct {v0, p0, v1}, Ljavafx/animation/SequentialTransition$3;-><init>(Ljavafx/animation/SequentialTransition;Ljavafx/collections/ObservableList;)V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    .line 270
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {p0, v0}, Ljavafx/animation/SequentialTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 271
    invoke-virtual {p0, p1}, Ljavafx/animation/SequentialTransition;->setNode(Ljavafx/scene/Node;)V

    .line 272
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, p2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/animation/Animation;)V
    .registers 3

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljavafx/animation/SequentialTransition;-><init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V

    .line 284
    return-void
.end method

.method private calculateFraction(JJ)D
    .registers 14

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-wide/16 v0, 0x0

    .line 338
    long-to-double v4, p1

    long-to-double v6, p3

    div-double/2addr v4, v6

    .line 339
    cmpg-double v6, v4, v0

    if-gtz v6, :cond_c

    :goto_b
    return-wide v0

    :cond_c
    cmpl-double v0, v4, v2

    if-ltz v0, :cond_12

    move-wide v0, v2

    goto :goto_b

    :cond_12
    move-wide v0, v4

    goto :goto_b
.end method

.method private static checkCycle(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z
    .registers 3

    .line 233
    .line 234
    :goto_0
    if-eq p1, p0, :cond_b

    .line 235
    iget-object v0, p1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_9

    .line 236
    iget-object p1, p1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    goto :goto_0

    .line 238
    :cond_9
    const/4 v0, 0x0

    .line 241
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private computeCycleDuration()Ljavafx/util/Duration;
    .registers 9

    .line 323
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    .line 325
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation;

    .line 326
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavafx/util/Duration;->add(Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v1

    .line 327
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 328
    const-wide v6, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3f

    .line 329
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v0

    .line 328
    :goto_34
    invoke-virtual {v1, v0}, Ljavafx/util/Duration;->add(Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 334
    :goto_3e
    return-object v0

    .line 329
    :cond_3f
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljavafx/util/Duration;->divide(D)Ljavafx/util/Duration;

    move-result-object v0

    goto :goto_34

    :cond_48
    move-object v1, v0

    .line 333
    goto :goto_b

    :cond_4a
    move-object v0, v1

    goto :goto_3e
.end method

.method private findNewIndex(J)I
    .registers 10

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 343
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-eq v0, v4, :cond_25

    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    iget v2, p0, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    iget v2, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v2, v0, v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_25

    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    iget v2, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_25

    .line 347
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 354
    :goto_24
    return v0

    .line 350
    :cond_25
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-eq v0, v4, :cond_2f

    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    iget v2, p0, Ljavafx/animation/SequentialTransition;->end:I

    if-ne v0, v2, :cond_50

    :cond_2f
    const/4 v0, 0x1

    move v3, v0

    .line 351
    :goto_31
    if-nez v3, :cond_39

    iget-wide v4, p0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_52

    :cond_39
    move v2, v1

    .line 352
    :goto_3a
    if-nez v3, :cond_42

    iget-wide v4, p0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v0, v4, p1

    if-gez v0, :cond_58

    :cond_42
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    .line 353
    :goto_44
    iget-object v3, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    invoke-static {v3, v2, v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 354
    if-gez v0, :cond_5b

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_24

    :cond_50
    move v3, v1

    .line 350
    goto :goto_31

    .line 351
    :cond_52
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_3a

    .line 352
    :cond_58
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto :goto_44

    .line 354
    :cond_5b
    if-lez v0, :cond_60

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_60
    move v0, v1

    goto :goto_24
.end method

.method private jumpToBefore()V
    .registers 8

    const/4 v6, 0x1

    .line 741
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_24

    .line 742
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_14

    .line 743
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Ljavafx/animation/Animation;->sync(Z)V

    .line 747
    :cond_14
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v4, v4, v0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    .line 741
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 749
    :cond_24
    return-void
.end method

.method private jumpToEnd()V
    .registers 8

    const/4 v6, 0x1

    .line 718
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    if-ge v0, v1, :cond_25

    .line 719
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_13

    .line 720
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Ljavafx/animation/Animation;->sync(Z)V

    .line 735
    :cond_13
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v4, v4, v0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 738
    :cond_25
    return-void
.end method

.method private synthetic lambda$new$0(Ljavafx/beans/Observable;)V
    .registers 4

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 126
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v0

    sget-object v1, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v0, v1, :cond_12

    .line 127
    invoke-direct {p0}, Ljavafx/animation/SequentialTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavafx/animation/SequentialTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 129
    :cond_12
    return-void
.end method

.method private startChild(Ljavafx/animation/Animation;I)Z
    .registers 11

    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    aget-boolean v1, v1, p2

    .line 460
    invoke-virtual {p1, v1}, Ljavafx/animation/Animation;->startable(Z)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 461
    iget-object v2, p1, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    iget-object v3, p0, Ljavafx/animation/SequentialTransition;->rates:[D

    aget-wide v4, v3, p2

    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 462
    invoke-virtual {p1, v1}, Ljavafx/animation/Animation;->doStart(Z)V

    .line 463
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    aput-boolean v0, v1, p2

    .line 464
    const/4 v0, 0x1

    .line 466
    :cond_25
    return v0
.end method


# virtual methods
.method doJumpTo(JJZ)V
    .registers 25

    .line 656
    invoke-virtual/range {p0 .. p2}, Ljavafx/animation/SequentialTransition;->setCurrentTicks(J)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/SequentialTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v10

    .line 659
    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v10, v2, :cond_e

    if-nez p5, :cond_e

    .line 715
    :goto_d
    return-void

    .line 663
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavafx/animation/SequentialTransition;->sync(Z)V

    .line 664
    invoke-direct/range {p0 .. p4}, Ljavafx/animation/SequentialTransition;->calculateFraction(JJ)D

    move-result-wide v8

    .line 665
    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/SequentialTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v2

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 666
    move-object/from16 v0, p0

    iget v9, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 667
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljavafx/animation/SequentialTransition;->findNewIndex(J)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v11, v2, v3

    .line 669
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v14

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v5, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v4, v4, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v16

    .line 671
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-eq v2, v9, :cond_f6

    .line 672
    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v10, v2, :cond_f6

    .line 673
    const/4 v2, -0x1

    if-eq v9, v2, :cond_8e

    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v9, v2, :cond_8e

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v2, v2, v9

    .line 675
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v2, v3, :cond_8e

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljavafx/animation/Animation;->doStop()V

    .line 679
    :cond_8e
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-ge v2, v9, :cond_bd

    .line 680
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->end:I

    if-ne v9, v2, :cond_bb

    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->end:I

    add-int/lit8 v2, v2, -0x1

    :goto_a0
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-le v2, v3, :cond_e2

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v3, v3, v2

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v6, v6, v2

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    .line 680
    add-int/lit8 v2, v2, -0x1

    goto :goto_a0

    :cond_bb
    move v2, v9

    goto :goto_a0

    .line 684
    :cond_bd
    const/4 v2, -0x1

    if-ne v9, v2, :cond_e0

    const/4 v2, 0x0

    :goto_c1
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-ge v2, v3, :cond_e2

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v3, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v4, v4, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v6, v6, v2

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    .line 684
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :cond_e0
    move v2, v9

    goto :goto_c1

    .line 688
    :cond_e2
    cmp-long v2, v12, v16

    if-ltz v2, :cond_f6

    .line 689
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    .line 690
    sget-object v2, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v10, v2, :cond_f6

    .line 691
    invoke-virtual {v11}, Ljavafx/animation/Animation;->doPause()V

    .line 696
    :cond_f6
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-ne v9, v2, :cond_15e

    .line 697
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_142

    .line 698
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    sub-long v4, v12, v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/SequentialTransition;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v6}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->getCurrentRate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 713
    :goto_121
    iget-object v2, v11, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 714
    move-object/from16 v0, p0

    iput-wide v12, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    goto/16 :goto_d

    .line 700
    :cond_142
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_158

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    sub-long v2, v12, v2

    :goto_152
    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto :goto_121

    :cond_158
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    sub-long/2addr v2, v12

    goto :goto_152

    .line 703
    :cond_15e
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_19a

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v2}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->getCurrentRate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_17f

    .line 705
    const-wide/16 v2, 0x0

    sub-long v4, v12, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto :goto_121

    .line 707
    :cond_17f
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v5, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v4, v4, v5

    add-long/2addr v2, v4

    sub-long/2addr v2, v12

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto :goto_121

    .line 710
    :cond_19a
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_1ae

    const-wide/16 v2, 0x0

    sub-long v4, v12, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_1a8
    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto/16 :goto_121

    :cond_1ae
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    sub-long/2addr v2, v12

    goto :goto_1a8
.end method

.method doPause()V
    .registers 4

    .line 422
    invoke-super {p0}, Ljavafx/animation/Transition;->doPause()V

    .line 423
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v0, v1, :cond_1f

    .line 424
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    iget v1, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v0, v0, v1

    .line 425
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v1, v2, :cond_1f

    .line 426
    invoke-virtual {v0}, Ljavafx/animation/Animation;->doPause()V

    .line 429
    :cond_1f
    return-void
.end method

.method doPlayTo(JJ)V
    .registers 26

    .line 470
    invoke-virtual/range {p0 .. p2}, Ljavafx/animation/SequentialTransition;->setCurrentTicks(J)V

    .line 471
    invoke-direct/range {p0 .. p4}, Ljavafx/animation/SequentialTransition;->calculateFraction(JJ)D

    move-result-wide v8

    .line 472
    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/SequentialTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v2

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Ljavafx/animation/SequentialTransition;->findNewIndex(J)I

    move-result v6

    .line 474
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->end:I

    if-ne v2, v3, :cond_100

    :cond_36
    const/4 v2, 0x0

    .line 475
    :goto_37
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljavafx/animation/SequentialTransition;->toggledRate:Z

    if-eqz v3, :cond_8e

    .line 476
    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v7, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v3, v7, :cond_89

    .line 477
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    long-to-double v8, v8

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->signum(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v12, v3, v7

    const-wide/16 v14, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v18, v3, v7

    sub-long v16, v16, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v18, v3, v7

    sub-long v16, v16, v18

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-double v12, v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-long v8, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 479
    :cond_89
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljavafx/animation/SequentialTransition;->toggledRate:Z

    .line 481
    :cond_8e
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-ne v3, v6, :cond_22b

    .line 482
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_152

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v8

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v6

    .line 484
    cmp-long v3, v4, v6

    if-ltz v3, :cond_13f

    .line 485
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_ca

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v8, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v3, v8, :cond_10e

    .line 486
    :cond_ca
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v3, v8, v6

    if-gtz v3, :cond_10c

    const/4 v3, 0x1

    .line 487
    :goto_d3
    if-eqz v3, :cond_dc

    .line 488
    iget-object v8, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 490
    :cond_dc
    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v8

    if-nez v8, :cond_10e

    .line 491
    if-eqz v3, :cond_fb

    .line 492
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 493
    if-eqz v2, :cond_fb

    .line 494
    new-instance v3, Ljavafx/event/ActionEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v3}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 497
    :cond_fb
    move-object/from16 v0, p0

    iput-wide v4, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 653
    :goto_ff
    return-void

    .line 474
    :cond_100
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v2, v2, v3

    goto/16 :goto_37

    .line 486
    :cond_10c
    const/4 v3, 0x0

    goto :goto_d3

    .line 501
    :cond_10e
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v3, v8

    cmp-long v3, v4, v8

    if-ltz v3, :cond_144

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 503
    cmp-long v2, v4, p3

    if-nez v2, :cond_13f

    .line 504
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->end:I

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 652
    :cond_13f
    :goto_13f
    move-object/from16 v0, p0

    iput-wide v4, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    goto :goto_ff

    .line 507
    :cond_144
    sub-long v6, v4, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v6

    .line 508
    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    goto :goto_13f

    .line 512
    :cond_152
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v8

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v6

    .line 513
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v10, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v10, v10, 0x1

    aget-wide v10, v3, v10

    cmp-long v3, v8, v10

    if-gez v3, :cond_18e

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1eb

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v8, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v3, v8, :cond_1eb

    .line 514
    :cond_18e
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v10, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v10, v10, 0x1

    aget-wide v10, v3, v10

    cmp-long v3, v8, v10

    if-ltz v3, :cond_1e9

    const/4 v3, 0x1

    .line 515
    :goto_1a3
    if-eqz v3, :cond_1c4

    .line 516
    iget-object v8, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v0, p0

    iget-object v9, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v10, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v10, v9, v10

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v0, p0

    iget v12, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v12, v9, v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 518
    :cond_1c4
    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v8

    if-nez v8, :cond_1eb

    .line 519
    if-eqz v3, :cond_1e3

    .line 520
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_1e3

    .line 522
    new-instance v3, Ljavafx/event/ActionEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v3}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 525
    :cond_1e3
    move-object/from16 v0, p0

    iput-wide v4, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    goto/16 :goto_ff

    .line 514
    :cond_1e9
    const/4 v3, 0x0

    goto :goto_1a3

    .line 529
    :cond_1eb
    cmp-long v3, v4, v6

    if-gtz v3, :cond_211

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 531
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_13f

    .line 532
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto/16 :goto_13f

    .line 535
    :cond_211
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v3, v6

    sub-long/2addr v6, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v6

    .line 536
    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    goto/16 :goto_13f

    .line 540
    :cond_22b
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-ge v3, v6, :cond_3b9

    .line 541
    if-eqz v2, :cond_2cd

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v7

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v10, v3, v7

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v8

    .line 543
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v3, v10, v8

    if-lez v3, :cond_26f

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v7, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v3, v7, :cond_2a0

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v3, v7

    cmp-long v3, v10, v12

    if-eqz v3, :cond_2a0

    .line 544
    :cond_26f
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v3, v10, v8

    if-gtz v3, :cond_328

    const/4 v3, 0x1

    .line 545
    :goto_278
    if-eqz v3, :cond_281

    .line 546
    iget-object v7, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 548
    :cond_281
    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v7

    if-nez v7, :cond_2a0

    .line 549
    if-eqz v3, :cond_2a0

    .line 550
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v3

    .line 551
    if-eqz v3, :cond_2a0

    .line 552
    new-instance v7, Ljavafx/event/ActionEvent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v3, v7}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 557
    :cond_2a0
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v7, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v3, v7, :cond_2bd

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v7

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 560
    :cond_2bd
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 562
    :cond_2cd
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 563
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 564
    :goto_2dd
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-ge v2, v6, :cond_33d

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v2, v2, v3

    .line 566
    iget-object v3, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 567
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v3

    if-eqz v3, :cond_32b

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v7

    invoke-virtual {v2, v8, v9}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 575
    :cond_30d
    :goto_30d
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 564
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto :goto_2dd

    .line 544
    :cond_328
    const/4 v3, 0x0

    goto/16 :goto_278

    .line 570
    :cond_32b
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_30d

    .line 572
    new-instance v3, Ljavafx/event/ActionEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v3}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto :goto_30d

    .line 577
    :cond_33d
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v2, v2, v3

    .line 578
    iget-object v3, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 579
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v3

    if-eqz v3, :cond_3a6

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v3, v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_385

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 582
    cmp-long v2, v4, p3

    if-nez v2, :cond_13f

    .line 583
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->end:I

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto/16 :goto_13f

    .line 586
    :cond_385
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v8

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v6

    .line 587
    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    goto/16 :goto_13f

    .line 590
    :cond_3a6
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 591
    if-eqz v2, :cond_13f

    .line 592
    new-instance v3, Ljavafx/event/ActionEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v3}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto/16 :goto_13f

    .line 596
    :cond_3b9
    if-eqz v2, :cond_477

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v7

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v10, v3, v7

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v8

    .line 598
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v3, v7

    cmp-long v3, v10, v12

    if-gez v3, :cond_3f7

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v3, v10, v8

    if-lez v3, :cond_44c

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v7, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v3, v7, :cond_44c

    .line 599
    :cond_3f7
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v7, v7, 0x1

    aget-wide v10, v3, v7

    cmp-long v3, v8, v10

    if-ltz v3, :cond_4e8

    const/4 v3, 0x1

    .line 600
    :goto_40c
    if-eqz v3, :cond_42d

    .line 601
    iget-object v7, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v9, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v8, v9

    long-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v0, p0

    iget v11, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 603
    :cond_42d
    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v7

    if-nez v7, :cond_44c

    .line 604
    if-eqz v3, :cond_44c

    .line 605
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v3

    .line 606
    if-eqz v3, :cond_44c

    .line 607
    new-instance v7, Ljavafx/event/ActionEvent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v3, v7}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 612
    :cond_44c
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v7, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v3, v7, :cond_469

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v7

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 615
    :cond_469
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 617
    :cond_477
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 618
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 619
    :goto_487
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    if-le v2, v6, :cond_4fd

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v2, v2, v3

    .line 621
    iget-object v3, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v7, v8

    long-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v0, p0

    iget v10, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v10, v7, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 622
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v3

    if-eqz v3, :cond_4eb

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v7

    invoke-virtual {v2, v8, v9}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 630
    :cond_4cf
    :goto_4cf
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 619
    move-object/from16 v0, p0

    iget v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto :goto_487

    .line 599
    :cond_4e8
    const/4 v3, 0x0

    goto/16 :goto_40c

    .line 625
    :cond_4eb
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 626
    if-eqz v2, :cond_4cf

    .line 627
    new-instance v3, Ljavafx/event/ActionEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v3}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto :goto_4cf

    .line 632
    :cond_4fd
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v2, v2, v3

    .line 633
    iget-object v3, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v7, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v6, v7

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v0, p0

    iget v9, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 634
    move-object/from16 v0, p0

    iget v3, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v3

    if-eqz v3, :cond_57d

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v0, p0

    iget v8, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v3, v8

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_568

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v6, v3, v6

    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 637
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_13f

    .line 638
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto/16 :goto_13f

    .line 641
    :cond_568
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v0, p0

    iget v6, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v3, v6

    invoke-static {v6, v7, v4, v5}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v6

    .line 642
    invoke-virtual {v2, v6, v7}, Ljavafx/animation/Animation;->doTimePulse(J)V

    goto/16 :goto_13f

    .line 645
    :cond_57d
    invoke-virtual {v2}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 646
    if-eqz v2, :cond_13f

    .line 647
    new-instance v3, Ljavafx/event/ActionEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v3}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto/16 :goto_13f
.end method

.method doResume()V
    .registers 7

    .line 433
    invoke-super {p0}, Ljavafx/animation/Transition;->doResume()V

    .line 434
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v0, v1, :cond_33

    .line 435
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    iget v1, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v0, v0, v1

    .line 436
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v1, v2, :cond_33

    .line 437
    invoke-virtual {v0}, Ljavafx/animation/Animation;->doResume()V

    .line 438
    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->rates:[D

    iget v2, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v2, v1, v2

    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 441
    :cond_33
    return-void
.end method

.method doStart(Z)V
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 399
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->doStart(Z)V

    .line 400
    iput-boolean v6, p0, Ljavafx/animation/SequentialTransition;->toggledRate:Z

    .line 401
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v0, v1}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 402
    iput-wide v8, p0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 403
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v0

    .line 404
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v2

    .line 405
    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_41

    .line 406
    invoke-direct {p0}, Ljavafx/animation/SequentialTransition;->jumpToEnd()V

    .line 407
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    iput v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 408
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    aget-wide v0, v0, v1

    cmp-long v0, v2, v0

    if-gez v0, :cond_40

    .line 409
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    aget-wide v4, v0, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/SequentialTransition;->doJumpTo(JJZ)V

    .line 418
    :cond_40
    :goto_40
    return-void

    .line 412
    :cond_41
    invoke-direct {p0}, Ljavafx/animation/SequentialTransition;->jumpToBefore()V

    .line 413
    const/4 v0, -0x1

    iput v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 414
    cmp-long v0, v2, v8

    if-lez v0, :cond_40

    .line 415
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    aget-wide v4, v0, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/SequentialTransition;->doJumpTo(JJZ)V

    goto :goto_40
.end method

.method doStop()V
    .registers 4

    .line 445
    invoke-super {p0}, Ljavafx/animation/Transition;->doStop()V

    .line 446
    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v0, v1, :cond_1f

    .line 447
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    iget v1, p0, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v0, v0, v1

    .line 448
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v1, v2, :cond_1f

    .line 449
    invoke-virtual {v0}, Ljavafx/animation/Animation;->doStop()V

    .line 452
    :cond_1f
    iget-boolean v0, p0, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    if-eqz v0, :cond_2a

    .line 453
    invoke-direct {p0}, Ljavafx/animation/SequentialTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavafx/animation/SequentialTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 455
    :cond_2a
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v0, v1}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 456
    return-void
.end method

.method public final getChildren()Ljavafx/collections/ObservableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .registers 2

    .line 167
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/SequentialTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_6
.end method

.method protected getParentTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 317
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->parent:Ljavafx/animation/Animation;

    instance-of v0, v0, Ljavafx/animation/Transition;

    if-eqz v0, :cond_1a

    .line 319
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->parent:Ljavafx/animation/Animation;

    check-cast v0, Ljavafx/animation/Transition;

    invoke-virtual {v0}, Ljavafx/animation/Transition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v0

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected interpolate(D)V
    .registers 3

    .line 757
    return-void
.end method

.method public final nodeProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 172
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "node"

    sget-object v2, Ljavafx/animation/SequentialTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 174
    :cond_f
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .registers 3

    .line 161
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 162
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 164
    :cond_d
    return-void
.end method

.method sync(Z)V
    .registers 14

    .line 359
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 361
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    if-nez v0, :cond_d

    :cond_9
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    if-nez v0, :cond_da

    .line 362
    :cond_d
    invoke-virtual {p0}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v0

    sget-object v1, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 363
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v0, v0

    iput v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    .line 364
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    .line 365
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    new-array v0, v0, [J

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->durations:[J

    .line 366
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    new-array v0, v0, [J

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->delays:[J

    .line 367
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    new-array v0, v0, [D

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->rates:[D

    .line 368
    iget v0, p0, Ljavafx/animation/SequentialTransition;->end:I

    new-array v0, v0, [Z

    iput-object v0, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    .line 369
    const-wide/16 v4, 0x0

    .line 370
    const/4 v1, 0x0

    .line 371
    iget-object v6, p0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v7, v6

    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_49
    if-ge v2, v7, :cond_d0

    aget-object v0, v6, v2

    .line 372
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    aput-wide v4, v1, v3

    .line 373
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->rates:[D

    invoke-virtual {v0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    aput-wide v8, v1, v3

    .line 374
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->rates:[D

    aget-wide v8, v1, v3

    const-wide v10, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v1, v8, v10

    if-gez v1, :cond_70

    .line 375
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->rates:[D

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    aput-wide v8, v1, v3

    .line 377
    :cond_70
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->durations:[J

    invoke-virtual {v0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v8

    iget-object v9, p0, Ljavafx/animation/SequentialTransition;->rates:[D

    aget-wide v10, v9, v3

    invoke-static {v8, v10, v11}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;D)J

    move-result-wide v8

    aput-wide v8, v1, v3

    .line 378
    iget-object v1, p0, Ljavafx/animation/SequentialTransition;->delays:[J

    invoke-virtual {v0}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v8

    aput-wide v8, v1, v3

    .line 379
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v0, v0, v3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v0, v8

    if-eqz v0, :cond_af

    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->delays:[J

    aget-wide v0, v0, v3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v0, v8

    if-eqz v0, :cond_af

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-nez v0, :cond_bf

    .line 380
    :cond_af
    const-wide v0, 0x7fffffffffffffffL

    .line 384
    :goto_b4
    iget-object v4, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 385
    add-int/lit8 v3, v3, 0x1

    .line 371
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v0

    goto :goto_49

    .line 382
    :cond_bf
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->durations:[J

    aget-wide v0, v0, v3

    iget-object v8, p0, Ljavafx/animation/SequentialTransition;->delays:[J

    aget-wide v8, v8, v3

    invoke-static {v0, v1, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v0

    goto :goto_b4

    .line 387
    :cond_d0
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    iget v1, p0, Ljavafx/animation/SequentialTransition;->end:I

    aput-wide v4, v0, v1

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 395
    :cond_d9
    return-void

    .line 389
    :cond_da
    if-eqz p1, :cond_d9

    .line 390
    iget-object v0, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    array-length v1, v0

    .line 391
    const/4 v0, 0x0

    :goto_e0
    if-ge v0, v1, :cond_d9

    .line 392
    iget-object v2, p0, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_e0
.end method
