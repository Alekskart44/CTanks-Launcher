.class Lcom/sun/javafx/charts/Legend$LegendItem$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend$LegendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/charts/Legend$LegendItem;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend$LegendItem;Ljavafx/scene/Node;)V
    .registers 3

    .line 172
    iput-object p1, p0, Lcom/sun/javafx/charts/Legend$LegendItem$2;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    invoke-direct {p0, p2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem$2;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 186
    const-string v0, "symbol"

    return-object v0
.end method

.method protected invalidated()V
    .registers 6

    .line 174
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend$LegendItem$2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 175
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "chart-legend-item-symbol"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    .line 176
    :cond_17
    iget-object v1, p0, Lcom/sun/javafx/charts/Legend$LegendItem$2;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v1, v0}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    .line 177
    return-void
.end method
