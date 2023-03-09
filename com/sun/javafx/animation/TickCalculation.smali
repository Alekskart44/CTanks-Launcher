.class public Lcom/sun/javafx/animation/TickCalculation;
.super Ljava/lang/Object;
.source "TickCalculation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TICKS_PER_MILLI:D = 6.0

.field private static final TICKS_PER_NANO:D = 6.0E-6

.field public static final TICKS_PER_SECOND:I = 0x1770


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/sun/javafx/animation/TickCalculation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/sun/javafx/animation/TickCalculation;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(JJ)J
    .registers 10

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 38
    sget-boolean v2, Lcom/sun/javafx/animation/TickCalculation;->$assertionsDisabled:Z

    if-nez v2, :cond_15

    cmp-long v2, p0, v4

    if-gez v2, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_15
    cmp-long v2, p0, v0

    if-eqz v2, :cond_1d

    cmp-long v2, p2, v0

    if-nez v2, :cond_1e

    .line 50
    :cond_1d
    :goto_1d
    return-wide v0

    .line 42
    :cond_1e
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_26

    move-wide v0, v4

    .line 43
    goto :goto_1d

    .line 46
    :cond_26
    cmp-long v2, p2, v4

    if-ltz v2, :cond_32

    .line 47
    add-long v2, p0, p2

    .line 48
    cmp-long v4, v2, v4

    if-ltz v4, :cond_1d

    move-wide v0, v2

    goto :goto_1d

    .line 50
    :cond_32
    add-long v0, p0, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1d
.end method

.method public static fromDuration(Ljavafx/util/Duration;)J
    .registers 3

    .line 82
    invoke-virtual {p0}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/javafx/animation/TickCalculation;->fromMillis(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromDuration(Ljavafx/util/Duration;D)J
    .registers 8

    .line 86
    const-wide/high16 v0, 0x4018000000000000L  # 6.0

    invoke-virtual {p0}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromMillis(D)J
    .registers 4

    .line 74
    const-wide/high16 v0, 0x4018000000000000L  # 6.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromNano(J)J
    .registers 6

    .line 78
    const-wide v0, 0x3ed92a737110e454L  # 6.0E-6

    long-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static sub(JJ)J
    .registers 10

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 56
    sget-boolean v2, Lcom/sun/javafx/animation/TickCalculation;->$assertionsDisabled:Z

    if-nez v2, :cond_15

    cmp-long v2, p0, v4

    if-gez v2, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_15
    cmp-long v2, p0, v0

    if-eqz v2, :cond_1f

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_20

    .line 68
    :cond_1f
    :goto_1f
    return-wide v0

    .line 60
    :cond_20
    cmp-long v2, p2, v0

    if-nez v2, :cond_26

    move-wide v0, v4

    .line 61
    goto :goto_1f

    .line 64
    :cond_26
    cmp-long v2, p2, v4

    if-ltz v2, :cond_31

    .line 65
    sub-long v0, p0, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1f

    .line 67
    :cond_31
    sub-long v2, p0, p2

    .line 68
    cmp-long v4, v2, v4

    if-ltz v4, :cond_1f

    move-wide v0, v2

    goto :goto_1f
.end method

.method public static toDuration(J)Ljavafx/util/Duration;
    .registers 4

    .line 90
    invoke-static {p0, p1}, Lcom/sun/javafx/animation/TickCalculation;->toMillis(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static toMillis(J)D
    .registers 6

    .line 94
    long-to-double v0, p0

    const-wide/high16 v2, 0x4018000000000000L  # 6.0

    div-double/2addr v0, v2

    return-wide v0
.end method
