.class Lcom/sun/javafx/charts/Legend$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/charts/Legend;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend;Z)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/sun/javafx/charts/Legend$1;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-direct {p0, p2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$1;->this$0:Lcom/sun/javafx/charts/Legend;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 80
    const-string v0, "vertical"

    return-object v0
.end method

.method protected invalidated()V
    .registers 3

    .line 70
    iget-object v1, p0, Lcom/sun/javafx/charts/Legend$1;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend$1;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    :goto_a
    invoke-virtual {v1, v0}, Lcom/sun/javafx/charts/Legend;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 71
    return-void

    .line 70
    :cond_e
    sget-object v0, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    goto :goto_a
.end method
