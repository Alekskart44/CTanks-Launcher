.class Ljavafx/animation/Animation$4;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;I)V
    .registers 3

    .line 627
    iput-object p1, p0, Ljavafx/animation/Animation$4;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0, p2}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 636
    iget-object v0, p0, Ljavafx/animation/Animation$4;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 641
    const-string v0, "cycleCount"

    return-object v0
.end method

.method public invalidated()V
    .registers 2

    .line 631
    iget-object v0, p0, Ljavafx/animation/Animation$4;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v0}, Ljavafx/animation/Animation;->updateTotalDuration()V

    .line 632
    return-void
.end method
