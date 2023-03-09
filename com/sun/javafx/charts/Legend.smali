.class public Lcom/sun/javafx/charts/Legend;
.super Ljavafx/scene/layout/TilePane;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/charts/Legend$LegendItem;
    }
.end annotation


# static fields
.field private static final GAP:I = 0x5


# instance fields
.field private items:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;"
        }
    .end annotation
.end field

.field private vertical:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/high16 v0, 0x4014000000000000L  # 5.0

    const/4 v3, 0x0

    .line 124
    invoke-direct {p0, v0, v1, v0, v1}, Ljavafx/scene/layout/TilePane;-><init>(DD)V

    .line 56
    invoke-custom {p0}, call_site_1255("onChanged", (Lcom/sun/javafx/charts/Legend;)Ljavafx/collections/ListChangeListener;, (Ljavafx/collections/ListChangeListener$Change;)V, invoke-direct@Lcom/sun/javafx/charts/Legend;->lambda$new$1(Ljavafx/collections/ListChangeListener$Change;)V, (Ljavafx/collections/ListChangeListener$Change;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/charts/Legend;->itemsListener:Ljavafx/collections/ListChangeListener;

    .line 68
    new-instance v0, Lcom/sun/javafx/charts/Legend$1;

    invoke-direct {v0, p0, v3}, Lcom/sun/javafx/charts/Legend$1;-><init>(Lcom/sun/javafx/charts/Legend;Z)V

    iput-object v0, p0, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    .line 88
    new-instance v0, Lcom/sun/javafx/charts/Legend$2;

    invoke-direct {v0, p0}, Lcom/sun/javafx/charts/Legend$2;-><init>(Lcom/sun/javafx/charts/Legend;)V

    iput-object v0, p0, Lcom/sun/javafx/charts/Legend;->items:Ljavafx/beans/property/ObjectProperty;

    .line 125
    sget-object v0, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {p0, v0}, Lcom/sun/javafx/charts/Legend;->setTileAlignment(Ljavafx/geometry/Pos;)V

    .line 126
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/javafx/charts/Legend;->setItems(Ljavafx/collections/ObservableList;)V

    .line 127
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "chart-legend"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    return-object v0
.end method

.method private synthetic lambda$new$1(Ljavafx/collections/ListChangeListener$Change;)V
    .registers 4

    .line 57
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0}, Ljavafx/collections/ObservableList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-custom {}, call_site_381("apply", ()Ljava/util/function/Function;, (Ljava/lang/Object;)Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/charts/Legend;->lambda$new$0(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;, (Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 59
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    .line 61
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->requestLayout()V

    .line 62
    :cond_2a
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .registers 6

    .line 141
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0}, Ljavafx/collections/ObservableList;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-super {p0, p1, p2}, Ljavafx/scene/layout/TilePane;->computePrefHeight(D)D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method protected computePrefWidth(D)D
    .registers 6

    .line 135
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0}, Ljavafx/collections/ObservableList;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-super {p0, p1, p2}, Ljavafx/scene/layout/TilePane;->computePrefWidth(D)D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend;->items:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method public final isVertical()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v0

    return v0
.end method

.method public final itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend;->items:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final setItems(Ljavafx/collections/ObservableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVertical(Z)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v0, p1}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final verticalProperty()Ljavafx/beans/property/BooleanProperty;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    return-object v0
.end method
