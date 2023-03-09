.class public abstract Ljavafx/animation/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# static fields
.field public static final DISCRETE:Ljavafx/animation/Interpolator;

.field public static final EASE_BOTH:Ljavafx/animation/Interpolator;

.field public static final EASE_IN:Ljavafx/animation/Interpolator;

.field public static final EASE_OUT:Ljavafx/animation/Interpolator;

.field private static final EPSILON:D = 1.0E-12

.field public static final LINEAR:Ljavafx/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Ljavafx/animation/Interpolator$1;

    invoke-direct {v0}, Ljavafx/animation/Interpolator$1;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->DISCRETE:Ljavafx/animation/Interpolator;

    .line 75
    new-instance v0, Ljavafx/animation/Interpolator$2;

    invoke-direct {v0}, Ljavafx/animation/Interpolator$2;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    .line 110
    new-instance v0, Ljavafx/animation/Interpolator$3;

    invoke-direct {v0}, Ljavafx/animation/Interpolator$3;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    .line 134
    new-instance v0, Ljavafx/animation/Interpolator$4;

    invoke-direct {v0}, Ljavafx/animation/Interpolator$4;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->EASE_IN:Ljavafx/animation/Interpolator;

    .line 161
    new-instance v0, Ljavafx/animation/Interpolator$5;

    invoke-direct {v0}, Ljavafx/animation/Interpolator$5;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->EASE_OUT:Ljavafx/animation/Interpolator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static SPLINE(DDDD)Ljavafx/animation/Interpolator;
    .registers 18

    .line 199
    new-instance v1, Lcom/sun/scenario/animation/SplineInterpolator;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/sun/scenario/animation/SplineInterpolator;-><init>(DDDD)V

    return-object v1
.end method

.method public static TANGENT(Ljavafx/util/Duration;D)Ljavafx/animation/Interpolator;
    .registers 4

    .line 256
    new-instance v0, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/scenario/animation/NumberTangentInterpolator;-><init>(Ljavafx/util/Duration;D)V

    return-object v0
.end method

.method public static TANGENT(Ljavafx/util/Duration;DLjavafx/util/Duration;D)Ljavafx/animation/Interpolator;
    .registers 13

    .line 238
    new-instance v0, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sun/scenario/animation/NumberTangentInterpolator;-><init>(Ljavafx/util/Duration;DLjavafx/util/Duration;D)V

    return-object v0
.end method

.method private static clamp(D)D
    .registers 8

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-wide/16 v0, 0x0

    .line 392
    cmpg-double v4, p0, v0

    if-gez v4, :cond_a

    move-wide p0, v0

    :cond_9
    :goto_9
    return-wide p0

    :cond_a
    cmpl-double v0, p0, v2

    if-lez v0, :cond_9

    move-wide p0, v2

    goto :goto_9
.end method


# virtual methods
.method protected abstract curve(D)D
.end method

.method public interpolate(DDD)D
    .registers 12

    .line 347
    sub-double v0, p3, p1

    invoke-virtual {p0, p5, p6}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public interpolate(IID)I
    .registers 10

    .line 366
    sub-int v0, p2, p1

    int-to-double v0, v0

    .line 367
    invoke-virtual {p0, p3, p4}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, p1

    .line 366
    return v0
.end method

.method public interpolate(JJD)J
    .registers 12

    .line 387
    sub-long v0, p3, p1

    long-to-double v0, v0

    .line 388
    invoke-virtual {p0, p5, p6}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 387
    return-wide v0
.end method

.method public interpolate(Ljava/lang/Object;Ljava/lang/Object;D)Ljava/lang/Object;
    .registers 12

    .line 285
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_53

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_53

    move-object v0, p1

    .line 286
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-object v0, p2

    .line 287
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 288
    sub-double/2addr v0, v2

    invoke-virtual {p0, p3, p4}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 289
    instance-of v2, p1, Ljava/lang/Double;

    if-nez v2, :cond_25

    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_2a

    .line 290
    :cond_25
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 304
    :cond_29
    :goto_29
    return-object p2

    .line 292
    :cond_2a
    instance-of v2, p1, Ljava/lang/Float;

    if-nez v2, :cond_32

    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_38

    .line 293
    :cond_32
    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_29

    .line 295
    :cond_38
    instance-of v2, p1, Ljava/lang/Long;

    if-nez v2, :cond_40

    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_49

    .line 296
    :cond_40
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_29

    .line 298
    :cond_49
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_29

    .line 299
    :cond_53
    instance-of v0, p1, Ljavafx/animation/Interpolatable;

    if-eqz v0, :cond_66

    instance-of v0, p2, Ljavafx/animation/Interpolatable;

    if-eqz v0, :cond_66

    .line 300
    check-cast p1, Ljavafx/animation/Interpolatable;

    .line 301
    invoke-virtual {p0, p3, p4}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v0

    .line 300
    invoke-interface {p1, p2, v0, v1}, Ljavafx/animation/Interpolatable;->interpolate(Ljava/lang/Object;D)Ljava/lang/Object;

    move-result-object p2

    goto :goto_29

    .line 304
    :cond_66
    invoke-virtual {p0, p3, p4}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_29

    move-object p2, p1

    goto :goto_29
.end method

.method public interpolate(ZZD)Z
    .registers 10

    .line 326
    invoke-virtual {p0, p3, p4}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L  # 1.0E-12

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    :goto_14
    return p2

    :cond_15
    move p2, p1

    .line 327
    goto :goto_14
.end method
