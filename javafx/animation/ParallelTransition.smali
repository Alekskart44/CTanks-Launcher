.class public final Ljavafx/animation/ParallelTransition;
.super Ljavafx/animation/Transition;
.source "ParallelTransition.java"


# static fields
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

.field private cycleTime:J

.field private delays:[J

.field private durations:[J

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

.field private offsetTicks:[J

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

.field private toggledRate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Ljavafx/animation/Animation;

    sput-object v0, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    .line 150
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/ParallelTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 296
    const/4 v0, 0x0

    check-cast v0, Ljavafx/scene/Node;

    invoke-direct {p0, v0}, Ljavafx/animation/ParallelTransition;-><init>(Ljavafx/scene/Node;)V

    .line 297
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V
    .registers 4

    .line 301
    invoke-direct {p0, p1}, Ljavafx/animation/Transition;-><init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V

    .line 106
    sget-object v0, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 117
    invoke-custom {p0}, call_site_1414("invalidated", (Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;, (Ljavafx/beans/Observable;)V, invoke-direct@Ljavafx/animation/ParallelTransition;->lambda$new$0(Ljavafx/beans/Observable;)V, (Ljavafx/beans/Observable;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 124
    new-instance v0, Ljavafx/animation/ParallelTransition$1;

    invoke-direct {v0, p0}, Ljavafx/animation/ParallelTransition$1;-><init>(Ljavafx/animation/ParallelTransition;)V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->childrenSet:Ljava/util/Set;

    .line 171
    new-instance v0, Ljavafx/animation/ParallelTransition$3;

    new-instance v1, Ljavafx/animation/ParallelTransition$2;

    invoke-direct {v1, p0}, Ljavafx/animation/ParallelTransition$2;-><init>(Ljavafx/animation/ParallelTransition;)V

    invoke-direct {v0, p0, v1}, Ljavafx/animation/ParallelTransition$3;-><init>(Ljavafx/animation/ParallelTransition;Ljavafx/collections/ObservableList;)V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    .line 302
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {p0, v0}, Ljavafx/animation/ParallelTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .registers 4

    .line 287
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 106
    sget-object v0, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 117
    invoke-custom {p0}, call_site_1415("invalidated", (Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;, (Ljavafx/beans/Observable;)V, invoke-direct@Ljavafx/animation/ParallelTransition;->lambda$new$0(Ljavafx/beans/Observable;)V, (Ljavafx/beans/Observable;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 124
    new-instance v0, Ljavafx/animation/ParallelTransition$1;

    invoke-direct {v0, p0}, Ljavafx/animation/ParallelTransition$1;-><init>(Ljavafx/animation/ParallelTransition;)V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->childrenSet:Ljava/util/Set;

    .line 171
    new-instance v0, Ljavafx/animation/ParallelTransition$3;

    new-instance v1, Ljavafx/animation/ParallelTransition$2;

    invoke-direct {v1, p0}, Ljavafx/animation/ParallelTransition$2;-><init>(Ljavafx/animation/ParallelTransition;)V

    invoke-direct {v0, p0, v1}, Ljavafx/animation/ParallelTransition$3;-><init>(Ljavafx/animation/ParallelTransition;Ljavafx/collections/ObservableList;)V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    .line 288
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {p0, v0}, Ljavafx/animation/ParallelTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 289
    invoke-virtual {p0, p1}, Ljavafx/animation/ParallelTransition;->setNode(Ljavafx/scene/Node;)V

    .line 290
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V
    .registers 5

    .line 262
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 106
    sget-object v0, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 117
    invoke-custom {p0}, call_site_1416("invalidated", (Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;, (Ljavafx/beans/Observable;)V, invoke-direct@Ljavafx/animation/ParallelTransition;->lambda$new$0(Ljavafx/beans/Observable;)V, (Ljavafx/beans/Observable;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 124
    new-instance v0, Ljavafx/animation/ParallelTransition$1;

    invoke-direct {v0, p0}, Ljavafx/animation/ParallelTransition$1;-><init>(Ljavafx/animation/ParallelTransition;)V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->childrenSet:Ljava/util/Set;

    .line 171
    new-instance v0, Ljavafx/animation/ParallelTransition$3;

    new-instance v1, Ljavafx/animation/ParallelTransition$2;

    invoke-direct {v1, p0}, Ljavafx/animation/ParallelTransition$2;-><init>(Ljavafx/animation/ParallelTransition;)V

    invoke-direct {v0, p0, v1}, Ljavafx/animation/ParallelTransition$3;-><init>(Ljavafx/animation/ParallelTransition;Ljavafx/collections/ObservableList;)V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    .line 263
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {p0, v0}, Ljavafx/animation/ParallelTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 264
    invoke-virtual {p0, p1}, Ljavafx/animation/ParallelTransition;->setNode(Ljavafx/scene/Node;)V

    .line 265
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, p2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/animation/Animation;)V
    .registers 3

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljavafx/animation/ParallelTransition;-><init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V

    .line 277
    return-void
.end method

.method private calculateFraction(JJ)D
    .registers 14

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-wide/16 v0, 0x0

    .line 334
    long-to-double v4, p1

    long-to-double v6, p3

    div-double/2addr v4, v6

    .line 335
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

    .line 225
    .line 226
    :goto_0
    if-eq p1, p0, :cond_b

    .line 227
    iget-object v0, p1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_9

    .line 228
    iget-object p1, p1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    goto :goto_0

    .line 230
    :cond_9
    const/4 v0, 0x0

    .line 233
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private computeCycleDuration()Ljavafx/util/Duration;
    .registers 9

    .line 316
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    .line 317
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation;

    .line 318
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 319
    const-wide v6, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v2, v4, v6

    if-gez v2, :cond_3d

    .line 320
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v2

    .line 321
    :goto_2c
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavafx/util/Duration;->add(Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 323
    sget-object v1, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    .line 330
    :cond_3c
    return-object v1

    .line 320
    :cond_3d
    invoke-virtual {v0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljavafx/util/Duration;->divide(D)Ljavafx/util/Duration;

    move-result-object v2

    goto :goto_2c

    .line 325
    :cond_46
    invoke-virtual {v0, v1}, Ljavafx/util/Duration;->greaterThan(Ljavafx/util/Duration;)Z

    move-result v2

    if-eqz v2, :cond_4e

    :goto_4c
    move-object v1, v0

    .line 329
    goto :goto_b

    :cond_4e
    move-object v0, v1

    goto :goto_4c
.end method

.method private jumpToEnd()V
    .registers 8

    const/4 v6, 0x1

    .line 570
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 571
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_14

    .line 573
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Ljavafx/animation/Animation;->sync(Z)V

    .line 575
    :cond_14
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v4, v4, v0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 577
    :cond_26
    return-void
.end method

.method private jumpToStart()V
    .registers 8

    const/4 v6, 0x1

    .line 580
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_25

    .line 581
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_15

    .line 582
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Ljavafx/animation/Animation;->sync(Z)V

    .line 584
    :cond_15
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v4, v4, v0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    .line 580
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 586
    :cond_25
    return-void
.end method

.method private synthetic lambda$new$0(Ljavafx/beans/Observable;)V
    .registers 4

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 119
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v0

    sget-object v1, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v0, v1, :cond_12

    .line 120
    invoke-direct {p0}, Ljavafx/animation/ParallelTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavafx/animation/ParallelTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 122
    :cond_12
    return-void
.end method

.method private startChild(Ljavafx/animation/Animation;I)Z
    .registers 11

    const/4 v0, 0x0

    .line 339
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    aget-boolean v1, v1, p2

    .line 340
    invoke-virtual {p1, v1}, Ljavafx/animation/Animation;->startable(Z)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 341
    iget-object v2, p1, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    iget-object v3, p0, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v4, v3, p2

    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 342
    invoke-virtual {p1, v1}, Ljavafx/animation/Animation;->doStart(Z)V

    .line 343
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    aput-boolean v0, v1, p2

    .line 344
    const/4 v0, 0x1

    .line 346
    :cond_25
    return v0
.end method


# virtual methods
.method doJumpTo(JJZ)V
    .registers 25

    .line 515
    invoke-virtual/range {p0 .. p2}, Ljavafx/animation/ParallelTransition;->setCurrentTicks(J)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v2, v3, :cond_e

    if-nez p5, :cond_e

    .line 559
    :goto_d
    return-void

    .line 519
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavafx/animation/ParallelTransition;->sync(Z)V

    .line 520
    invoke-direct/range {p0 .. p4}, Ljavafx/animation/ParallelTransition;->calculateFraction(JJ)D

    move-result-wide v8

    .line 521
    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v2

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 522
    const/4 v3, 0x0

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v13, v12

    const/4 v2, 0x0

    move v9, v3

    :goto_38
    if-ge v2, v13, :cond_17f

    aget-object v3, v12, v2

    .line 524
    invoke-virtual {v3}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v4

    .line 525
    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v6, v5, v9

    cmp-long v5, v10, v6

    if-gtz v5, :cond_81

    .line 526
    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v9

    .line 527
    sget-object v5, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v4, v5, :cond_66

    .line 528
    iget-object v4, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 529
    invoke-virtual {v3}, Ljavafx/animation/Animation;->doStop()V

    .line 556
    :cond_60
    :goto_60
    add-int/lit8 v3, v9, 0x1

    .line 523
    add-int/lit8 v2, v2, 0x1

    move v9, v3

    goto :goto_38

    .line 530
    :cond_66
    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_60

    .line 531
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v6, v6, v9

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    goto :goto_60

    .line 533
    :cond_81
    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v6, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v14, v5, v9

    invoke-static {v6, v7, v14, v15}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v6

    cmp-long v5, v10, v6

    if-ltz v5, :cond_df

    .line 534
    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v9

    .line 535
    sget-object v5, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v4, v5, :cond_bc

    .line 536
    iget-object v4, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v6, v5, v9

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v14, v5, v9

    mul-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 537
    invoke-virtual {v3}, Ljavafx/animation/Animation;->doStop()V

    goto :goto_60

    .line 538
    :cond_bc
    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v6, v6, v9

    cmp-long v4, v4, v6

    if-eqz v4, :cond_60

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v4, v4, v9

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v6, v6, v9

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->doJumpTo(JJZ)V

    goto :goto_60

    .line 542
    :cond_df
    sget-object v5, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v4, v5, :cond_13a

    .line 543
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Ljavafx/animation/ParallelTransition;->startChild(Ljavafx/animation/Animation;I)Z

    .line 544
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v4

    sget-object v5, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v4, v5, :cond_f3

    .line 545
    invoke-virtual {v3}, Ljavafx/animation/Animation;->doPause()V

    .line 548
    :cond_f3
    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmpl-double v4, v4, v14

    if-lez v4, :cond_128

    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v4, v4, v9

    sub-long v4, v10, v4

    :goto_109
    aput-wide v4, v6, v9

    .line 554
    :goto_10b
    iget-object v3, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v4, v4, v9

    invoke-static {v10, v11, v4, v5}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v6, v6, v9

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    goto/16 :goto_60

    .line 548
    :cond_128
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v4, v4, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v14, v7, v9

    invoke-static {v4, v5, v14, v15}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    goto :goto_109

    .line 549
    :cond_13a
    sget-object v5, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v4, v5, :cond_15f

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    aget-wide v6, v4, v9

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    sub-long v14, v10, v14

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->getCurrentRate()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->signum(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    double-to-long v6, v6

    aput-wide v6, v4, v9

    goto :goto_10b

    .line 552
    :cond_15f
    move-object/from16 v0, p0

    iget-object v6, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    aget-wide v14, v6, v9

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmpl-double v4, v4, v16

    if-lez v4, :cond_179

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    sub-long v4, v10, v4

    :goto_175
    add-long/2addr v4, v14

    aput-wide v4, v6, v9

    goto :goto_10b

    :cond_179
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    sub-long/2addr v4, v10

    goto :goto_175

    .line 558
    :cond_17f
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    goto/16 :goto_d
.end method

.method doPause()V
    .registers 7

    .line 384
    invoke-super {p0}, Ljavafx/animation/Transition;->doPause()V

    .line 385
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 386
    invoke-virtual {v3}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v4

    sget-object v5, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v4, v5, :cond_16

    .line 387
    invoke-virtual {v3}, Ljavafx/animation/Animation;->doPause()V

    .line 385
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 390
    :cond_19
    return-void
.end method

.method doPlayTo(JJ)V
    .registers 24

    .line 441
    invoke-virtual/range {p0 .. p2}, Ljavafx/animation/ParallelTransition;->setCurrentTicks(J)V

    .line 442
    invoke-direct/range {p0 .. p4}, Ljavafx/animation/ParallelTransition;->calculateFraction(JJ)D

    move-result-wide v8

    .line 443
    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v2

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 444
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    if-eqz v2, :cond_70

    .line 445
    const/4 v2, 0x0

    :goto_26
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v3, v3

    if-ge v2, v3, :cond_6b

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v4, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v3, v4, :cond_68

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    aget-wide v4, v3, v2

    long-to-double v4, v4

    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v10, v10, v2

    const-wide/16 v12, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v2

    sub-long v14, v14, v16

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    long-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    double-to-long v4, v4

    aput-wide v4, v3, v2

    .line 445
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 450
    :cond_6b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    .line 452
    :cond_70
    invoke-virtual/range {p0 .. p0}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_14d

    .line 453
    const/4 v3, 0x0

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v8, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_82
    if-ge v4, v8, :cond_239

    aget-object v9, v5, v4

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v10, v2, v3

    cmp-long v2, v6, v10

    if-ltz v2, :cond_d8

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v12, v2, v3

    cmp-long v2, v10, v12

    if-lez v2, :cond_ba

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v12, v2, v3

    .line 456
    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v10

    cmp-long v2, v6, v10

    if-gez v2, :cond_d8

    invoke-virtual {v9}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v10, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v2, v10, :cond_d8

    .line 457
    :cond_ba
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v12, v2, v3

    cmp-long v2, v10, v12

    if-gtz v2, :cond_116

    const/4 v2, 0x1

    .line 458
    :goto_c9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Ljavafx/animation/ParallelTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v10

    if-eqz v10, :cond_118

    .line 459
    iget-object v2, v9, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v10, v11}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 470
    :cond_d8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v12, v2, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v10

    cmp-long v2, v6, v10

    if-ltz v2, :cond_12d

    .line 471
    invoke-virtual {v9}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v10, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v2, v10, :cond_10f

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    aget-wide v12, v2, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    const-wide/16 v10, 0x0

    aput-wide v10, v2, v3

    .line 478
    :cond_10f
    :goto_10f
    add-int/lit8 v2, v3, 0x1

    .line 454
    :goto_111
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto/16 :goto_82

    .line 457
    :cond_116
    const/4 v2, 0x0

    goto :goto_c9

    .line 461
    :cond_118
    if-eqz v2, :cond_240

    .line 462
    invoke-virtual {v9}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_12b

    .line 464
    new-instance v9, Ljavafx/event/ActionEvent;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v9}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    :cond_12b
    move v2, v3

    .line 466
    goto :goto_111

    .line 475
    :cond_12d
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v10, v2, v3

    cmp-long v2, v6, v10

    if-lez v2, :cond_10f

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v10, v2, v3

    sub-long v10, v6, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    aget-wide v12, v2, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/animation/Animation;->doTimePulse(J)V

    goto :goto_10f

    .line 481
    :cond_14d
    const/4 v3, 0x0

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v8, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_155
    if-ge v4, v8, :cond_239

    aget-object v9, v5, v4

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v12, v2, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v10

    cmp-long v2, v6, v10

    if-gez v2, :cond_1fc

    .line 484
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v14, v2, v3

    invoke-static {v12, v13, v14, v15}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-gez v2, :cond_197

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v10, v2, v3

    cmp-long v2, v6, v10

    if-ltz v2, :cond_1cf

    invoke-virtual {v9}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v10, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v2, v10, :cond_1cf

    .line 485
    :cond_197
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v14, v2, v3

    invoke-static {v12, v13, v14, v15}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-ltz v2, :cond_203

    const/4 v2, 0x1

    .line 486
    :goto_1b0
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Ljavafx/animation/ParallelTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v10

    if-eqz v10, :cond_205

    .line 487
    iget-object v2, v9, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v10, v10, v3

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v12, v12, v3

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 498
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v10, v2, v3

    cmp-long v2, v6, v10

    if-gtz v2, :cond_21a

    .line 499
    invoke-virtual {v9}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v10, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v2, v10, :cond_1fc

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    aget-wide v12, v2, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/animation/Animation;->doTimePulse(J)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    const-wide/16 v10, 0x0

    aput-wide v10, v2, v3

    .line 507
    :cond_1fc
    :goto_1fc
    add-int/lit8 v2, v3, 0x1

    .line 482
    :goto_1fe
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto/16 :goto_155

    .line 485
    :cond_203
    const/4 v2, 0x0

    goto :goto_1b0

    .line 489
    :cond_205
    if-eqz v2, :cond_23e

    .line 490
    invoke-virtual {v9}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v2

    .line 491
    if-eqz v2, :cond_218

    .line 492
    new-instance v9, Ljavafx/event/ActionEvent;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v2, v9}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    :cond_218
    move v2, v3

    .line 494
    goto :goto_1fe

    .line 504
    :cond_21a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v12, v2, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v10

    sub-long/2addr v10, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    aget-wide v12, v2, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljavafx/animation/Animation;->doTimePulse(J)V

    goto :goto_1fc

    .line 510
    :cond_239
    move-object/from16 v0, p0

    iput-wide v6, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    .line 511
    return-void

    :cond_23e
    move v2, v3

    goto :goto_1fe

    :cond_240
    move v2, v3

    goto/16 :goto_111
.end method

.method doResume()V
    .registers 11

    const/4 v1, 0x0

    .line 394
    invoke-super {p0}, Ljavafx/animation/Transition;->doResume()V

    .line 396
    iget-object v3, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_9
    if-ge v0, v4, :cond_30

    aget-object v1, v3, v0

    .line 397
    invoke-virtual {v1}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v5

    sget-object v6, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v5, v6, :cond_2a

    .line 398
    invoke-virtual {v1}, Ljavafx/animation/Animation;->doResume()V

    .line 399
    iget-object v1, v1, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    iget-object v5, p0, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v6, v5, v2

    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 401
    :cond_2a
    add-int/lit8 v1, v2, 0x1

    .line 396
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_9

    .line 403
    :cond_30
    return-void
.end method

.method doStart(Z)V
    .registers 9

    const/4 v6, 0x0

    .line 407
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->doStart(Z)V

    .line 408
    iput-boolean v6, p0, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    .line 409
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v0, v1}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 410
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v0

    .line 411
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v2

    .line 412
    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_31

    .line 413
    invoke-direct {p0}, Ljavafx/animation/ParallelTransition;->jumpToEnd()V

    .line 414
    iget-wide v0, p0, Ljavafx/animation/ParallelTransition;->cycleTime:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_30

    .line 415
    iget-wide v4, p0, Ljavafx/animation/ParallelTransition;->cycleTime:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/ParallelTransition;->doJumpTo(JJZ)V

    .line 423
    :cond_30
    :goto_30
    return-void

    .line 418
    :cond_31
    invoke-direct {p0}, Ljavafx/animation/ParallelTransition;->jumpToStart()V

    .line 419
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_30

    .line 420
    iget-wide v4, p0, Ljavafx/animation/ParallelTransition;->cycleTime:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljavafx/animation/ParallelTransition;->doJumpTo(JJZ)V

    goto :goto_30
.end method

.method doStop()V
    .registers 7

    .line 427
    invoke-super {p0}, Ljavafx/animation/Transition;->doStop()V

    .line 428
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 429
    invoke-virtual {v3}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v4

    sget-object v5, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v4, v5, :cond_16

    .line 430
    invoke-virtual {v3}, Ljavafx/animation/Animation;->doStop()V

    .line 428
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 433
    :cond_19
    iget-boolean v0, p0, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    if-eqz v0, :cond_24

    .line 434
    invoke-direct {p0}, Ljavafx/animation/ParallelTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavafx/animation/ParallelTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 436
    :cond_24
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v0, v1}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 437
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

    .line 248
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .registers 2

    .line 159
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/ParallelTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_6
.end method

.method protected getParentTargetNode()Ljavafx/scene/Node;
    .registers 2

    .line 310
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->parent:Ljavafx/animation/Animation;

    instance-of v0, v0, Ljavafx/animation/Transition;

    if-eqz v0, :cond_1a

    .line 312
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->parent:Ljavafx/animation/Animation;

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

    .line 567
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

    .line 163
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_f

    .line 164
    new-instance v0, Ljavafx/beans/property/SimpleObjectProperty;

    const-string v1, "node"

    sget-object v2, Ljavafx/animation/ParallelTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 166
    :cond_f
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .registers 3

    .line 153
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 154
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 156
    :cond_d
    return-void
.end method

.method sync(Z)V
    .registers 15

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 351
    invoke-super {p0, p1}, Ljavafx/animation/Transition;->sync(Z)V

    .line 352
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    if-nez v0, :cond_f

    :cond_b
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->durations:[J

    if-nez v0, :cond_9c

    .line 353
    :cond_f
    invoke-virtual {p0}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v0

    sget-object v2, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    invoke-interface {v0, v2}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/animation/Animation;

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 354
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v0, v0

    .line 355
    new-array v2, v0, [J

    iput-object v2, p0, Ljavafx/animation/ParallelTransition;->durations:[J

    .line 356
    new-array v2, v0, [J

    iput-object v2, p0, Ljavafx/animation/ParallelTransition;->delays:[J

    .line 357
    new-array v2, v0, [D

    iput-object v2, p0, Ljavafx/animation/ParallelTransition;->rates:[D

    .line 358
    new-array v2, v0, [J

    iput-object v2, p0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    .line 359
    new-array v0, v0, [Z

    iput-object v0, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    .line 360
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavafx/animation/ParallelTransition;->cycleTime:J

    .line 362
    iget-object v3, p0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_3d
    if-ge v0, v4, :cond_99

    aget-object v5, v3, v0

    .line 363
    iget-object v6, p0, Ljavafx/animation/ParallelTransition;->rates:[D

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 364
    iget-object v6, p0, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v6, v6, v2

    const-wide v8, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v6, v6, v8

    if-gez v6, :cond_60

    .line 365
    iget-object v6, p0, Ljavafx/animation/ParallelTransition;->rates:[D

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    aput-wide v8, v6, v2

    .line 367
    :cond_60
    iget-object v6, p0, Ljavafx/animation/ParallelTransition;->durations:[J

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v7

    iget-object v8, p0, Ljavafx/animation/ParallelTransition;->rates:[D

    aget-wide v8, v8, v2

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;D)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 368
    iget-object v6, p0, Ljavafx/animation/ParallelTransition;->delays:[J

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 369
    iget-wide v6, p0, Ljavafx/animation/ParallelTransition;->cycleTime:J

    iget-object v5, p0, Ljavafx/animation/ParallelTransition;->durations:[J

    aget-wide v8, v5, v2

    iget-object v5, p0, Ljavafx/animation/ParallelTransition;->delays:[J

    aget-wide v10, v5, v2

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Ljavafx/animation/ParallelTransition;->cycleTime:J

    .line 370
    iget-object v5, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    aput-boolean v12, v5, v2

    .line 371
    add-int/lit8 v2, v2, 0x1

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 373
    :cond_99
    iput-boolean v1, p0, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 380
    :cond_9b
    return-void

    .line 374
    :cond_9c
    if-eqz p1, :cond_9b

    .line 375
    iget-object v0, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    array-length v2, v0

    move v0, v1

    .line 376
    :goto_a2
    if-ge v0, v2, :cond_9b

    .line 377
    iget-object v1, p0, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    aput-boolean v12, v1, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2
.end method
