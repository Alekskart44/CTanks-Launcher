.class public abstract Ljavafx/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/animation/Animation$CurrentRateProperty;,
        Ljavafx/animation/Animation$AnimationReadOnlyProperty;,
        Ljavafx/animation/Animation$CurrentTimeProperty;,
        Ljavafx/animation/Animation$Status;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_REVERSE:Z = false

.field private static final DEFAULT_CURRENT_RATE:D = 0.0

.field private static final DEFAULT_CYCLE_COUNT:I = 0x1

.field private static final DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_DELAY:Ljavafx/util/Duration;

.field private static final DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_RATE:D = 1.0

.field private static final DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

.field private static final DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

.field private static final EPSILON:D = 1.0E-12

.field public static final INDEFINITE:I = -0x1


# instance fields
.field private accessCtrlCtx:Ljava/security/AccessControlContext;

.field private autoReverse:Ljavafx/beans/property/BooleanProperty;

.field clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

.field private cuePoints:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

.field private currentTicks:J

.field private currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

.field private cycleCount:Ljavafx/beans/property/IntegerProperty;

.field private cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private delay:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private lastPlayedFinished:Z

.field private lastPlayedForward:Z

.field private lastPulse:J

.field private oldRate:D

.field private onFinished:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field parent:Ljavafx/animation/Animation;

.field private pauseTime:J

.field private paused:Z

.field final pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

.field private rate:Ljavafx/beans/property/DoubleProperty;

.field private final resolution:I

.field private startTime:J

.field private status:Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/animation/Animation$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final targetFramerate:D

.field private final timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

.field private totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Ljavafx/animation/AnimationAccessorImpl;

    invoke-direct {v0}, Ljavafx/animation/AnimationAccessorImpl;-><init>()V

    sput-object v0, Ljavafx/animation/AnimationAccessorImpl;->DEFAULT:Lcom/sun/scenario/animation/shared/AnimationAccessor;

    .line 439
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    .line 474
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    .line 558
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    .line 701
    sget-object v0, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

    .line 738
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    .line 156
    iput-object v1, p0, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 195
    new-instance v0, Ljavafx/animation/Animation$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 275
    iput-object v1, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 285
    iput-boolean v2, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 287
    iput-boolean v2, p0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 378
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    iput-wide v0, p0, Ljavafx/animation/Animation;->oldRate:D

    .line 1146
    iput v2, p0, Ljavafx/animation/Animation;->resolution:I

    .line 1147
    const/16 v0, 0x1770

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->getPrimaryTimer()Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->getDefaultResolution()I

    move-result v1

    div-int/2addr v0, v1

    int-to-double v0, v0

    iput-wide v0, p0, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1148
    invoke-static {p0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1149
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getPrimaryTimer()Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    .line 1150
    return-void
.end method

.method protected constructor <init>(D)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    .line 156
    iput-object v2, p0, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 195
    new-instance v0, Ljavafx/animation/Animation$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 275
    iput-object v2, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 285
    iput-boolean v1, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 287
    iput-boolean v1, p0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 378
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    iput-wide v0, p0, Ljavafx/animation/Animation;->oldRate:D

    .line 1136
    iput-wide p1, p0, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1137
    const-wide/16 v0, 0x1

    const-wide v2, 0x40b7700000000000L  # 6000.0

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljavafx/animation/Animation;->resolution:I

    .line 1138
    invoke-static {p0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1139
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getPrimaryTimer()Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    .line 1140
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    .line 156
    iput-object v1, p0, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 195
    new-instance v0, Ljavafx/animation/Animation$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 275
    iput-object v1, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 285
    iput-boolean v2, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 287
    iput-boolean v2, p0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 378
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    iput-wide v0, p0, Ljavafx/animation/Animation;->oldRate:D

    .line 1154
    iput v2, p0, Ljavafx/animation/Animation;->resolution:I

    .line 1155
    const/16 v0, 0x1770

    invoke-virtual {p1}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->getDefaultResolution()I

    move-result v1

    div-int/2addr v0, v1

    int-to-double v0, v0

    iput-wide v0, p0, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1156
    invoke-static {p0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1157
    iput-object p1, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    .line 1158
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractPrimaryTimer;Lcom/sun/scenario/animation/shared/ClipEnvelope;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    .line 156
    iput-object v2, p0, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 195
    new-instance v0, Ljavafx/animation/Animation$1;

    invoke-direct {v0, p0}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 275
    iput-object v2, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 285
    iput-boolean v1, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 287
    iput-boolean v1, p0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 378
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    iput-wide v0, p0, Ljavafx/animation/Animation;->oldRate:D

    .line 1162
    iput p3, p0, Ljavafx/animation/Animation;->resolution:I

    .line 1163
    const/16 v0, 0x1770

    div-int/2addr v0, p3

    int-to-double v0, v0

    iput-wide v0, p0, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1164
    iput-object p2, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1165
    iput-object p1, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    .line 1166
    return-void
.end method

.method private addPulseReceiver()V
    .registers 3

    .line 166
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 168
    iget-object v0, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    iget-object v1, p0, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->addPulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V

    .line 169
    return-void
.end method

.method private static areNearEqual(DD)Z
    .registers 6

    .line 140
    sub-double v0, p2, p0

    invoke-static {v0, v1}, Ljavafx/animation/Animation;->isNearZero(D)Z

    move-result v0

    return v0
.end method

.method private doSetCurrentRate(D)V
    .registers 6

    .line 425
    iget-object v0, p0, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    if-nez v0, :cond_c

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljavafx/animation/Animation;->areNearEqual(DD)Z

    move-result v0

    if-nez v0, :cond_15

    .line 426
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Animation;->currentRateProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation$CurrentRateProperty;

    invoke-virtual {v0, p1, p2}, Ljavafx/animation/Animation$CurrentRateProperty;->set(D)V

    .line 428
    :cond_15
    return-void
.end method

.method static final isNearZero(D)Z
    .registers 6

    .line 131
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isRunningEmbedded()Z
    .registers 3

    const/4 v0, 0x0

    .line 372
    iget-object v1, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-nez v1, :cond_6

    .line 375
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    invoke-virtual {v1}, Ljavafx/animation/Animation;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    invoke-direct {v1}, Ljavafx/animation/Animation;->isRunningEmbedded()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_16
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private now()J
    .registers 3

    .line 160
    iget-object v0, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->nanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/javafx/animation/TickCalculation;->fromNano(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private syncClipEnvelope()V
    .registers 3

    .line 1179
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v0

    .line 1181
    if-gtz v0, :cond_a

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    .line 1182
    :cond_a
    iget-object v1, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v1, v0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setCycleCount(I)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1183
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setCycleDuration(Ljavafx/util/Duration;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1184
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {p0}, Ljavafx/animation/Animation;->isAutoReverse()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setAutoReverse(Z)V

    .line 1185
    return-void
.end method

.method private updateTotalDuration()V
    .registers 5

    .line 490
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v1

    .line 491
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v0

    .line 493
    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v2, v0}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v1, v0

    .line 497
    :goto_13
    iget-object v0, p0, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_1f

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, v1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 498
    :cond_1f
    invoke-virtual {p0}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    invoke-virtual {v0, v1}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->set(Ljava/lang/Object;)V

    .line 500
    :cond_28
    invoke-virtual {p0}, Ljavafx/animation/Animation;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 501
    invoke-direct {p0}, Ljavafx/animation/Animation;->syncClipEnvelope()V

    .line 502
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 503
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-static {v1}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 506
    :cond_44
    return-void

    .line 494
    :cond_45
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4c

    sget-object v0, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    move-object v1, v0

    goto :goto_13

    .line 495
    :cond_4c
    const/4 v2, 0x1

    if-gt v1, v2, :cond_51

    move-object v1, v0

    goto :goto_13

    .line 496
    :cond_51
    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljavafx/util/Duration;->multiply(D)Ljavafx/util/Duration;

    move-result-object v0

    move-object v1, v0

    goto :goto_13
.end method


# virtual methods
.method public final autoReverseProperty()Ljavafx/beans/property/BooleanProperty;
    .registers 3

    .line 677
    iget-object v0, p0, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    if-nez v0, :cond_c

    .line 678
    new-instance v0, Ljavafx/animation/Animation$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavafx/animation/Animation$5;-><init>(Ljavafx/animation/Animation;Z)V

    iput-object v0, p0, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    .line 691
    :cond_c
    iget-object v0, p0, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    return-object v0
.end method

.method public final currentRateProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .registers 2

    .line 398
    iget-object v0, p0, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    if-nez v0, :cond_b

    .line 399
    new-instance v0, Ljavafx/animation/Animation$CurrentRateProperty;

    invoke-direct {v0, p0}, Ljavafx/animation/Animation$CurrentRateProperty;-><init>(Ljavafx/animation/Animation;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    .line 401
    :cond_b
    iget-object v0, p0, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    return-object v0
.end method

.method public final currentTimeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    if-nez v0, :cond_b

    .line 545
    new-instance v0, Ljavafx/animation/Animation$CurrentTimeProperty;

    invoke-direct {v0, p0}, Ljavafx/animation/Animation$CurrentTimeProperty;-><init>(Ljavafx/animation/Animation;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    .line 547
    :cond_b
    iget-object v0, p0, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    return-object v0
.end method

.method public final cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
    .registers 3

    .line 626
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v0, :cond_c

    .line 627
    new-instance v0, Ljavafx/animation/Animation$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavafx/animation/Animation$4;-><init>(Ljavafx/animation/Animation;I)V

    iput-object v0, p0, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    .line 645
    :cond_c
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    return-object v0
.end method

.method public final cycleDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_f

    .line 457
    new-instance v0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    const-string v1, "cycleDuration"

    sget-object v2, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;-><init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    .line 459
    :cond_f
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    return-object v0
.end method

.method public final delayProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 572
    new-instance v0, Ljavafx/animation/Animation$3;

    sget-object v1, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/Animation$3;-><init>(Ljavafx/animation/Animation;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    .line 597
    :cond_d
    iget-object v0, p0, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method abstract doJumpTo(JJZ)V
.end method

.method doPause()V
    .registers 5

    .line 1085
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v0

    .line 1086
    invoke-static {v0, v1}, Ljavafx/animation/Animation;->isNearZero(D)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1087
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v0

    invoke-virtual {p0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljavafx/animation/Animation;->areNearEqual(DD)Z

    move-result v0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 1089
    :cond_18
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    .line 1090
    sget-object v0, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1091
    return-void
.end method

.method abstract doPlayTo(JJ)V
.end method

.method doResume()V
    .registers 3

    .line 1027
    sget-object v0, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1028
    iget-boolean v0, p0, Ljavafx/animation/Animation;->lastPlayedForward:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v0

    :goto_d
    invoke-direct {p0, v0, v1}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    .line 1029
    return-void

    .line 1028
    :cond_11
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_d
.end method

.method doStart(Z)V
    .registers 4

    .line 1019
    invoke-virtual {p0, p1}, Ljavafx/animation/Animation;->sync(Z)V

    .line 1020
    sget-object v0, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1021
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->start()V

    .line 1022
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->getCurrentRate()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    .line 1023
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavafx/animation/Animation;->lastPulse:J

    .line 1024
    return-void
.end method

.method doStop()V
    .registers 3

    .line 1055
    iget-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    if-nez v0, :cond_b

    .line 1056
    iget-object v0, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    iget-object v1, p0, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->removePulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V

    .line 1058
    :cond_b
    sget-object v0, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1059
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    .line 1060
    return-void
.end method

.method doTimePulse(J)V
    .registers 8

    .line 1188
    iget v0, p0, Ljavafx/animation/Animation;->resolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1189
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0, p1, p2}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->timePulse(J)V

    .line 1194
    :cond_a
    :goto_a
    return-void

    .line 1190
    :cond_b
    iget-wide v0, p0, Ljavafx/animation/Animation;->lastPulse:J

    sub-long v0, p1, v0

    iget v2, p0, Ljavafx/animation/Animation;->resolution:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 1191
    iget v0, p0, Ljavafx/animation/Animation;->resolution:I

    int-to-long v0, v0

    div-long v0, p1, v0

    iget v2, p0, Ljavafx/animation/Animation;->resolution:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Ljavafx/animation/Animation;->lastPulse:J

    .line 1192
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0, p1, p2}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->timePulse(J)V

    goto :goto_a
.end method

.method final finished()V
    .registers 2

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 1095
    invoke-virtual {p0}, Ljavafx/animation/Animation;->doStop()V

    .line 1096
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->runHandler(Ljavafx/event/EventHandler;)V

    .line 1097
    return-void
.end method

.method public final getCuePoints()Ljavafx/collections/ObservableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    if-nez v0, :cond_a

    .line 789
    invoke-static {}, Ljavafx/collections/FXCollections;->observableHashMap()Ljavafx/collections/ObservableMap;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    .line 791
    :cond_a
    iget-object v0, p0, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    return-object v0
.end method

.method public final getCurrentRate()D
    .registers 3

    .line 394
    iget-object v0, p0, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getCurrentTime()Ljavafx/util/Duration;
    .registers 3

    .line 540
    iget-wide v0, p0, Ljavafx/animation/Animation;->currentTicks:J

    invoke-static {v0, v1}, Lcom/sun/javafx/animation/TickCalculation;->toDuration(J)Ljavafx/util/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getCycleCount()I
    .registers 2

    .line 622
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v0

    goto :goto_5
.end method

.method public final getCycleDuration()Ljavafx/util/Duration;
    .registers 2

    .line 452
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getDelay()Ljavafx/util/Duration;
    .registers 2

    .line 567
    iget-object v0, p0, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final getOnFinished()Ljavafx/event/EventHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/event/EventHandler;

    goto :goto_6
.end method

.method public final getRate()D
    .registers 3

    .line 318
    iget-object v0, p0, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v0

    goto :goto_6
.end method

.method public final getStatus()Ljavafx/animation/Animation$Status;
    .registers 2

    .line 710
    iget-object v0, p0, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation$Status;

    goto :goto_6
.end method

.method public final getTargetFramerate()D
    .registers 3

    .line 1123
    iget-wide v0, p0, Ljavafx/animation/Animation;->targetFramerate:D

    return-wide v0
.end method

.method public final getTotalDuration()Ljavafx/util/Duration;
    .registers 2

    .line 477
    iget-object v0, p0, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public final isAutoReverse()Z
    .registers 2

    .line 673
    iget-object v0, p0, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v0

    goto :goto_5
.end method

.method isPaused()Z
    .registers 3

    .line 725
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v0

    sget-object v1, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isRunning()Z
    .registers 3

    .line 729
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v0

    sget-object v1, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isStopped()Z
    .registers 3

    .line 721
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v0

    sget-object v1, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public jumpTo(Ljava/lang/String;)V
    .registers 3

    .line 858
    const-string v0, "CuePoint needs to be specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 859
    const-string v0, "start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 860
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 869
    :cond_12
    :goto_12
    return-void

    .line 861
    :cond_13
    const-string v0, "end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 862
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    goto :goto_12

    .line 864
    :cond_23
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCuePoints()Ljavafx/collections/ObservableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    .line 865
    if-eqz v0, :cond_12

    .line 866
    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    goto :goto_12
.end method

.method public jumpTo(Ljavafx/util/Duration;)V
    .registers 8

    .line 812
    const-string v0, "Time needs to be specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 813
    invoke-virtual {p1}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The time is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_13
    iget-object v0, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_1f

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot jump when embedded in another animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 822
    invoke-virtual {p1}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v0

    .line 824
    :goto_30
    invoke-static {v0, v1}, Lcom/sun/javafx/animation/TickCalculation;->fromMillis(D)J

    move-result-wide v0

    .line 826
    invoke-virtual {p0}, Ljavafx/animation/Animation;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 827
    invoke-direct {p0}, Ljavafx/animation/Animation;->syncClipEnvelope()V

    .line 829
    :cond_3d
    iget-object v2, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v2, v0, v1}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 830
    return-void

    .line 823
    :cond_43
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v2

    invoke-virtual {p0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v0

    goto :goto_30
.end method

.method public final onFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 752
    new-instance v0, Ljavafx/animation/Animation$6;

    sget-object v1, Ljavafx/animation/Animation;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/Animation$6;-><init>(Ljavafx/animation/Animation;Ljavafx/event/EventHandler;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    .line 765
    :cond_d
    iget-object v0, p0, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public pause()V
    .registers 3

    .line 1074
    iget-object v0, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_c

    .line 1075
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot pause when embedded in another animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Animation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1078
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->abortCurrentPulse()V

    .line 1079
    invoke-virtual {p0}, Ljavafx/animation/Animation;->pauseReceiver()V

    .line 1080
    invoke-virtual {p0}, Ljavafx/animation/Animation;->doPause()V

    .line 1082
    :cond_1d
    return-void
.end method

.method pauseReceiver()V
    .registers 3

    .line 178
    iget-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    if-nez v0, :cond_14

    .line 179
    invoke-direct {p0}, Ljavafx/animation/Animation;->now()J

    move-result-wide v0

    iput-wide v0, p0, Ljavafx/animation/Animation;->pauseTime:J

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    .line 181
    iget-object v0, p0, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractPrimaryTimer;

    iget-object v1, p0, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    invoke-virtual {v0, v1}, Lcom/sun/scenario/animation/AbstractPrimaryTimer;->removePulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V

    .line 183
    :cond_14
    return-void
.end method

.method public play()V
    .registers 6

    const/4 v4, 0x1

    .line 987
    iget-object v0, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_d

    .line 988
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start when embedded in another animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_d
    sget-object v0, Ljavafx/animation/Animation$7;->$SwitchMap$javafx$animation$Animation$Status:[I

    invoke-virtual {p0}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/animation/Animation$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    .line 1016
    :cond_1c
    :goto_1c
    return-void

    .line 992
    :pswitch_1d  #0x1
    invoke-virtual {p0, v4}, Ljavafx/animation/Animation;->startable(Z)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 993
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v2

    .line 994
    iget-boolean v0, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    if-eqz v0, :cond_38

    .line 995
    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_50

    invoke-virtual {p0}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v0

    :goto_35
    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 997
    :cond_38
    invoke-virtual {p0, v4}, Ljavafx/animation/Animation;->doStart(Z)V

    .line 998
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljavafx/animation/Animation;->startReceiver(J)V

    .line 999
    invoke-static {v2, v3}, Ljavafx/animation/Animation;->isNearZero(D)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1000
    invoke-virtual {p0}, Ljavafx/animation/Animation;->pauseReceiver()V

    goto :goto_1c

    .line 995
    :cond_50
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    goto :goto_35

    .line 1005
    :cond_53
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->runHandler(Ljavafx/event/EventHandler;)V

    goto :goto_1c

    .line 1009
    :pswitch_5b  #0x2
    invoke-virtual {p0}, Ljavafx/animation/Animation;->doResume()V

    .line 1010
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljavafx/animation/Animation;->isNearZero(D)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1011
    invoke-virtual {p0}, Ljavafx/animation/Animation;->resumeReceiver()V

    goto :goto_1c

    .line 990
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_5b  #00000002
    .end packed-switch
.end method

.method public playFrom(Ljava/lang/String;)V
    .registers 2

    .line 896
    invoke-virtual {p0, p1}, Ljavafx/animation/Animation;->jumpTo(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Ljavafx/animation/Animation;->play()V

    .line 898
    return-void
.end method

.method public playFrom(Ljavafx/util/Duration;)V
    .registers 2

    .line 925
    invoke-virtual {p0, p1}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 926
    invoke-virtual {p0}, Ljavafx/animation/Animation;->play()V

    .line 927
    return-void
.end method

.method public playFromStart()V
    .registers 3

    .line 951
    invoke-virtual {p0}, Ljavafx/animation/Animation;->stop()V

    .line 952
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljavafx/animation/Animation;->setRate(D)V

    .line 953
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 954
    invoke-virtual {p0}, Ljavafx/animation/Animation;->play()V

    .line 955
    return-void
.end method

.method public final rateProperty()Ljavafx/beans/property/DoubleProperty;
    .registers 5

    .line 322
    iget-object v0, p0, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_d

    .line 323
    new-instance v0, Ljavafx/animation/Animation$2;

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-direct {v0, p0, v2, v3}, Ljavafx/animation/Animation$2;-><init>(Ljavafx/animation/Animation;D)V

    iput-object v0, p0, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    .line 368
    :cond_d
    iget-object v0, p0, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method resumeReceiver()V
    .registers 5

    .line 186
    iget-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    if-eqz v0, :cond_16

    .line 187
    invoke-direct {p0}, Ljavafx/animation/Animation;->now()J

    move-result-wide v0

    iget-wide v2, p0, Ljavafx/animation/Animation;->pauseTime:J

    sub-long/2addr v0, v2

    .line 188
    iget-wide v2, p0, Ljavafx/animation/Animation;->startTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavafx/animation/Animation;->startTime:J

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    .line 190
    invoke-direct {p0}, Ljavafx/animation/Animation;->addPulseReceiver()V

    .line 192
    :cond_16
    return-void
.end method

.method runHandler(Ljavafx/event/EventHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .line 1100
    if-eqz p1, :cond_b

    .line 1102
    :try_start_2
    new-instance v0, Ljavafx/event/ActionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {p1, v0}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 1107
    :cond_b
    :goto_b
    return-void

    .line 1103
    :catch_c
    move-exception v0

    .line 1104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public final setAutoReverse(Z)V
    .registers 3

    .line 667
    iget-object v0, p0, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    if-nez v0, :cond_6

    if-eqz p1, :cond_d

    .line 668
    :cond_6
    invoke-virtual {p0}, Ljavafx/animation/Animation;->autoReverseProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 670
    :cond_d
    return-void
.end method

.method setCurrentRate(D)V
    .registers 4

    .line 406
    invoke-direct {p0, p1, p2}, Ljavafx/animation/Animation;->doSetCurrentRate(D)V

    .line 408
    return-void
.end method

.method setCurrentTicks(J)V
    .registers 4

    .line 1201
    iput-wide p1, p0, Ljavafx/animation/Animation;->currentTicks:J

    .line 1202
    iget-object v0, p0, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    if-eqz v0, :cond_b

    .line 1203
    iget-object v0, p0, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    invoke-virtual {v0}, Ljavafx/animation/Animation$CurrentTimeProperty;->fireValueChangedEvent()V

    .line 1205
    :cond_b
    return-void
.end method

.method public final setCycleCount(I)V
    .registers 3

    .line 616
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    .line 617
    :cond_7
    invoke-virtual {p0}, Ljavafx/animation/Animation;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 619
    :cond_e
    return-void
.end method

.method protected final setCycleDuration(Ljavafx/util/Duration;)V
    .registers 4

    .line 442
    iget-object v0, p0, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 443
    :cond_c
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {p1, v0}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cycle duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1c
    invoke-virtual {p0}, Ljavafx/animation/Animation;->cycleDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    invoke-virtual {v0, p1}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->set(Ljava/lang/Object;)V

    .line 447
    invoke-direct {p0}, Ljavafx/animation/Animation;->updateTotalDuration()V

    .line 449
    :cond_28
    return-void
.end method

.method public final setDelay(Ljavafx/util/Duration;)V
    .registers 3

    .line 561
    iget-object v0, p0, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 562
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 564
    :cond_13
    return-void
.end method

.method public final setOnFinished(Ljavafx/event/EventHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_8

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    if-eq p1, v0, :cond_f

    .line 742
    :cond_8
    invoke-virtual {p0}, Ljavafx/animation/Animation;->onFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 744
    :cond_f
    return-void
.end method

.method public final setRate(D)V
    .registers 6

    .line 312
    iget-object v0, p0, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v0, :cond_c

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    invoke-static {p1, p2, v0, v1}, Ljavafx/animation/Animation;->areNearEqual(DD)Z

    move-result v0

    if-nez v0, :cond_13

    .line 313
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 315
    :cond_13
    return-void
.end method

.method protected final setStatus(Ljavafx/animation/Animation$Status;)V
    .registers 3

    .line 704
    iget-object v0, p0, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/Animation;->DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

    invoke-virtual {v0, p1}, Ljavafx/animation/Animation$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 705
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Animation;->statusProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    invoke-virtual {v0, p1}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->set(Ljava/lang/Object;)V

    .line 707
    :cond_15
    return-void
.end method

.method startReceiver(J)V
    .registers 6

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavafx/animation/Animation;->paused:Z

    .line 173
    invoke-direct {p0}, Ljavafx/animation/Animation;->now()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljavafx/animation/Animation;->startTime:J

    .line 174
    invoke-direct {p0}, Ljavafx/animation/Animation;->addPulseReceiver()V

    .line 175
    return-void
.end method

.method startable(Z)Z
    .registers 6

    .line 1169
    invoke-virtual {p0}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    if-nez p1, :cond_1a

    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->wasSynched()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final statusProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/animation/Animation$Status;",
            ">;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_f

    .line 715
    new-instance v0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    const-string v1, "status"

    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;-><init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    .line 717
    :cond_f
    iget-object v0, p0, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    return-object v0
.end method

.method public stop()V
    .registers 3

    .line 1043
    iget-object v0, p0, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v0, :cond_c

    .line 1044
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stop when embedded in another animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/Animation;->isStopped()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1047
    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->abortCurrentPulse()V

    .line 1048
    invoke-virtual {p0}, Ljavafx/animation/Animation;->doStop()V

    .line 1049
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {p0, v0}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 1052
    :cond_22
    return-void
.end method

.method sync(Z)V
    .registers 3

    .line 1173
    if-nez p1, :cond_a

    iget-object v0, p0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v0}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->wasSynched()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1174
    :cond_a
    invoke-direct {p0}, Ljavafx/animation/Animation;->syncClipEnvelope()V

    .line 1176
    :cond_d
    return-void
.end method

.method public final totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v0, :cond_f

    .line 482
    new-instance v0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    const-string v1, "totalDuration"

    sget-object v2, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1, v2}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;-><init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    .line 484
    :cond_f
    iget-object v0, p0, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    return-object v0
.end method
