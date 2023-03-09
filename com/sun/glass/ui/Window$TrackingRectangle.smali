.class Lcom/sun/glass/ui/Window$TrackingRectangle;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackingRectangle"
.end annotation


# instance fields
.field height:I

.field size:I

.field width:I

.field x:I

.field y:I


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    iput v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    .line 1456
    iput v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    iput v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    iput v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    iput v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    return-void
.end method


# virtual methods
.method contains(II)Z
    .registers 5

    .line 1458
    iget v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    if-lt p1, v0, :cond_1c

    iget v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    iget v1, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1c

    iget v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    if-lt p2, v0, :cond_1c

    iget v0, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    iget v1, p0, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
