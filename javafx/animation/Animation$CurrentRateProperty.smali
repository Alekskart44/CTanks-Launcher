.class Ljavafx/animation/Animation$CurrentRateProperty;
.super Ljavafx/beans/property/ReadOnlyDoublePropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentRateProperty"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;

.field private value:D


# direct methods
.method private constructor <init>(Ljavafx/animation/Animation;)V
    .registers 2

    .line 213
    iput-object p1, p0, Ljavafx/animation/Animation$CurrentRateProperty;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0}, Ljavafx/beans/property/ReadOnlyDoublePropertyBase;-><init>()V

    return-void
.end method

.method private set(D)V
    .registers 4

    .line 232
    iput-wide p1, p0, Ljavafx/animation/Animation$CurrentRateProperty;->value:D

    .line 233
    invoke-virtual {p0}, Ljavafx/animation/Animation$CurrentRateProperty;->fireValueChangedEvent()V

    .line 234
    return-void
.end method


# virtual methods
.method public get()D
    .registers 3

    .line 228
    iget-wide v0, p0, Ljavafx/animation/Animation$CurrentRateProperty;->value:D

    return-wide v0
.end method

.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 218
    iget-object v0, p0, Ljavafx/animation/Animation$CurrentRateProperty;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 223
    const-string v0, "currentRate"

    return-object v0
.end method
