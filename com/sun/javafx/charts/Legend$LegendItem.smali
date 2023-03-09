.class public Lcom/sun/javafx/charts/Legend$LegendItem;
.super Ljava/lang/Object;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegendItem"
.end annotation


# instance fields
.field private label:Ljavafx/scene/control/Label;

.field private symbol:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljavafx/beans/property/StringProperty;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljavafx/scene/control/Label;

    invoke-direct {v0}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    .line 151
    new-instance v0, Lcom/sun/javafx/charts/Legend$LegendItem$1;

    invoke-direct {v0, p0}, Lcom/sun/javafx/charts/Legend$LegendItem$1;-><init>(Lcom/sun/javafx/charts/Legend$LegendItem;)V

    iput-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    .line 172
    new-instance v0, Lcom/sun/javafx/charts/Legend$LegendItem$2;

    new-instance v1, Ljavafx/scene/layout/Region;

    invoke-direct {v1}, Ljavafx/scene/layout/Region;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sun/javafx/charts/Legend$LegendItem$2;-><init>(Lcom/sun/javafx/charts/Legend$LegendItem;Ljavafx/scene/Node;)V

    iput-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    .line 194
    invoke-virtual {p0, p1}, Lcom/sun/javafx/charts/Legend$LegendItem;->setText(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v0}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "chart-legend-item"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    sget-object v1, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 197
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    sget-object v1, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Label;->setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V

    .line 198
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    .line 199
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "chart-legend-item-symbol"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .registers 3

    .line 203
    invoke-direct {p0, p1}, Lcom/sun/javafx/charts/Legend$LegendItem;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p2}, Lcom/sun/javafx/charts/Legend$LegendItem;->setSymbol(Ljavafx/scene/Node;)V

    .line 205
    return-void
.end method


# virtual methods
.method public final getSymbol()Ljavafx/scene/Node;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/StringProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setSymbol(Ljavafx/scene/Node;)V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v0, p1}, Ljavafx/beans/property/StringProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final symbolProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    return-object v0
.end method
