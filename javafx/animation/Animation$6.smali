.class Ljavafx/animation/Animation$6;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->onFinishedProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;Ljavafx/event/EventHandler;)V
    .registers 3

    .line 752
    iput-object p1, p0, Ljavafx/animation/Animation$6;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 756
    iget-object v0, p0, Ljavafx/animation/Animation$6;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 761
    const-string v0, "onFinished"

    return-object v0
.end method
