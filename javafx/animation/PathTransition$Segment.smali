.class Ljavafx/animation/PathTransition$Segment;
.super Ljava/lang/Object;
.source "PathTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/PathTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Segment"
.end annotation


# static fields
.field private static final zeroSegment:Ljavafx/animation/PathTransition$Segment;


# instance fields
.field accumLength:D

.field isMoveTo:Z

.field length:D

.field nextSeg:Ljavafx/animation/PathTransition$Segment;

.field prevSeg:Ljavafx/animation/PathTransition$Segment;

.field rotateAngle:D

.field toX:D

.field toY:D


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-wide/16 v2, 0x0

    .line 458
    new-instance v0, Ljavafx/animation/PathTransition$Segment;

    const/4 v1, 0x1

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v2

    invoke-direct/range {v0 .. v11}, Ljavafx/animation/PathTransition$Segment;-><init>(ZDDDDD)V

    sput-object v0, Ljavafx/animation/PathTransition$Segment;->zeroSegment:Ljavafx/animation/PathTransition$Segment;

    return-void
.end method

.method private constructor <init>(ZDDDDD)V
    .registers 14

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-boolean p1, p0, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    .line 474
    iput-wide p2, p0, Ljavafx/animation/PathTransition$Segment;->toX:D

    .line 475
    iput-wide p4, p0, Ljavafx/animation/PathTransition$Segment;->toY:D

    .line 476
    iput-wide p6, p0, Ljavafx/animation/PathTransition$Segment;->length:D

    .line 477
    add-double v0, p8, p6

    iput-wide v0, p0, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    .line 478
    iput-wide p10, p0, Ljavafx/animation/PathTransition$Segment;->rotateAngle:D

    .line 479
    return-void
.end method

.method public static getZeroSegment()Ljavafx/animation/PathTransition$Segment;
    .registers 1

    .line 482
    sget-object v0, Ljavafx/animation/PathTransition$Segment;->zeroSegment:Ljavafx/animation/PathTransition$Segment;

    return-object v0
.end method

.method public static newClosePath(Ljavafx/animation/PathTransition$Segment;Ljavafx/animation/PathTransition$Segment;)Ljavafx/animation/PathTransition$Segment;
    .registers 6

    .line 508
    iget-wide v0, p1, Ljavafx/animation/PathTransition$Segment;->toX:D

    iget-wide v2, p1, Ljavafx/animation/PathTransition$Segment;->toY:D

    invoke-static {p0, v0, v1, v2, v3}, Ljavafx/animation/PathTransition$Segment;->newLineTo(Ljavafx/animation/PathTransition$Segment;DD)Ljavafx/animation/PathTransition$Segment;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_d

    .line 510
    invoke-virtual {v0, p1}, Ljavafx/animation/PathTransition$Segment;->convertToClosePath(Ljavafx/animation/PathTransition$Segment;)V

    .line 512
    :cond_d
    return-object v0
.end method

.method public static newLineTo(Ljavafx/animation/PathTransition$Segment;DD)Ljavafx/animation/PathTransition$Segment;
    .registers 18

    .line 491
    iget-wide v0, p0, Ljavafx/animation/PathTransition$Segment;->toX:D

    sub-double v2, p1, v0

    .line 492
    iget-wide v0, p0, Ljavafx/animation/PathTransition$Segment;->toY:D

    sub-double v0, p3, v0

    .line 493
    mul-double v4, v2, v2

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 494
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpl-double v4, v6, v4

    if-gez v4, :cond_1b

    iget-boolean v4, p0, Ljavafx/animation/PathTransition$Segment;->isMoveTo:Z

    if-eqz v4, :cond_4c

    .line 495
    :cond_1b
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_22

    move-wide v0, v2

    :cond_22
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    .line 496
    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 497
    const-wide v2, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L  # 180.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljavafx/animation/PathTransition;->normalize(D)D

    move-result-wide v10

    .line 498
    new-instance v0, Ljavafx/animation/PathTransition$Segment;

    const/4 v1, 0x0

    iget-wide v8, p0, Ljavafx/animation/PathTransition$Segment;->accumLength:D

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v11}, Ljavafx/animation/PathTransition$Segment;-><init>(ZDDDDD)V

    .line 500
    iput-object v0, p0, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    .line 501
    iput-object p0, v0, Ljavafx/animation/PathTransition$Segment;->prevSeg:Ljavafx/animation/PathTransition$Segment;

    .line 504
    :goto_4b
    return-object v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method public static newMoveTo(DDD)Ljavafx/animation/PathTransition$Segment;
    .registers 18

    .line 487
    new-instance v0, Ljavafx/animation/PathTransition$Segment;

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Ljavafx/animation/PathTransition$Segment;-><init>(ZDDDDD)V

    return-object v0
.end method


# virtual methods
.method public convertToClosePath(Ljavafx/animation/PathTransition$Segment;)V
    .registers 3

    .line 516
    iget-object v0, p1, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    .line 517
    iput-object v0, p0, Ljavafx/animation/PathTransition$Segment;->nextSeg:Ljavafx/animation/PathTransition$Segment;

    .line 518
    iput-object p0, v0, Ljavafx/animation/PathTransition$Segment;->prevSeg:Ljavafx/animation/PathTransition$Segment;

    .line 519
    return-void
.end method
