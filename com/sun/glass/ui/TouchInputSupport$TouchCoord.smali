.class Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
.super Ljava/lang/Object;
.source "TouchInputSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/TouchInputSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchCoord"
.end annotation


# instance fields
.field private final x:I

.field private final xAbs:I

.field private final y:I

.field private final yAbs:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->x:I

    .line 42
    iput p2, p0, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->y:I

    .line 43
    iput p3, p0, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->xAbs:I

    .line 44
    iput p4, p0, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->yAbs:I

    .line 45
    return-void
.end method
