.class Lcom/sun/javafx/charts/Legend$LegendItem$1;
.super Ljavafx/beans/property/StringPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend$LegendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/charts/Legend$LegendItem;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend$LegendItem;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/sun/javafx/charts/Legend$LegendItem$1;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    invoke-direct {p0}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem$1;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 163
    const-string v0, "text"

    return-object v0
.end method

.method protected invalidated()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/sun/javafx/charts/Legend$LegendItem$1;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    iget-object v0, v0, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    invoke-virtual {p0}, Lcom/sun/javafx/charts/Legend$LegendItem$1;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 154
    return-void
.end method
