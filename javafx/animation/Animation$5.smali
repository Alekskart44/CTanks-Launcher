.class Ljavafx/animation/Animation$5;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->autoReverseProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;Z)V
    .registers 3

    .line 678
    iput-object p1, p0, Ljavafx/animation/Animation$5;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0, p2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 682
    iget-object v0, p0, Ljavafx/animation/Animation$5;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 687
    const-string v0, "autoReverse"

    return-object v0
.end method
