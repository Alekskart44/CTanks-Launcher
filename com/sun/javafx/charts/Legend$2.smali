.class Lcom/sun/javafx/charts/Legend$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/collections/ObservableList",
        "<",
        "Lcom/sun/javafx/charts/Legend$LegendItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field oldItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/charts/Legend;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend;)V
    .registers 3

    .line 88
    iput-object p1, p0, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-direct {p0}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    return-void
.end method

.method private static synthetic lambda$invalidated$0(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    return-object v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "items"

    return-object v0
.end method

.method protected invalidated()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    iget-object v1, p0, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend;->itemsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 92
    :cond_d
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v0}, Lcom/sun/javafx/charts/Legend;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0}, Ljavafx/collections/ObservableList;->clear()V

    .line 93
    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend$2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    .line 94
    if-eqz v0, :cond_44

    .line 95
    iget-object v1, p0, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend;->itemsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 96
    invoke-interface {v0}, Ljavafx/collections/ObservableList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-custom {}, call_site_3031("apply", ()Ljava/util/function/Function;, (Ljava/lang/Object;)Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/charts/Legend$2;->lambda$invalidated$0(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;, (Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    .line 97
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 98
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 99
    iget-object v2, p0, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v2}, Lcom/sun/javafx/charts/Legend;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_44
    iput-object v0, p0, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    .line 102
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v0}, Lcom/sun/javafx/charts/Legend;->requestLayout()V

    .line 103
    return-void
.end method
