.class Ljavafx/animation/Animation$CurrentTimeProperty;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentTimeProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method private constructor <init>(Ljavafx/animation/Animation;)V
    .registers 2

    .line 515
    iput-object p1, p0, Ljavafx/animation/Animation$CurrentTimeProperty;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public fireValueChangedEvent()V
    .registers 1

    .line 534
    invoke-super {p0}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;->fireValueChangedEvent()V

    .line 535
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 515
    invoke-virtual {p0}, Ljavafx/animation/Animation$CurrentTimeProperty;->get()Ljavafx/util/Duration;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljavafx/util/Duration;
    .registers 2

    .line 529
    iget-object v0, p0, Ljavafx/animation/Animation$CurrentTimeProperty;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 519
    iget-object v0, p0, Ljavafx/animation/Animation$CurrentTimeProperty;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 524
    const-string v0, "currentTime"

    return-object v0
.end method
