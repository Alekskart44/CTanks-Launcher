.class Lcom/sun/glass/ui/GestureSupport$GestureState;
.super Ljava/lang/Object;
.source "GestureSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/GestureSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GestureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    }
.end annotation


# instance fields
.field private id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    iput-object v0, p0, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    return-void
.end method


# virtual methods
.method doesGestureStart(Z)Z
    .registers 5

    const/4 v0, 0x1

    .line 60
    sget-object v1, Lcom/sun/glass/ui/GestureSupport$1;->$SwitchMap$com$sun$glass$ui$GestureSupport$GestureState$StateId:[I

    iget-object v2, p0, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    invoke-virtual {v2}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 66
    :cond_e
    :goto_e
    return v0

    :pswitch_f  #0x1
    move v0, p1

    .line 62
    goto :goto_e

    .line 64
    :pswitch_11  #0x2
    if-eqz p1, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    .line 60
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_11  #00000002
    .end packed-switch
.end method

.method isIdle()Z
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    sget-object v1, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method setIdle()V
    .registers 2

    .line 40
    sget-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    iput-object v0, p0, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    .line 41
    return-void
.end method

.method updateProgress(Z)I
    .registers 4

    .line 48
    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    .line 51
    const/4 v0, 0x1

    move v1, v0

    .line 54
    :goto_b
    if-eqz p1, :cond_12

    sget-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    :goto_f
    iput-object v0, p0, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    .line 56
    return v1

    .line 54
    :cond_12
    sget-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    goto :goto_f

    :cond_15
    move v1, v0

    goto :goto_b
.end method
