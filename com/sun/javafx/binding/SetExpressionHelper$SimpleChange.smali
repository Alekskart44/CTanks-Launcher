.class public Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;
.super Ljavafx/collections/SetChangeListener$Change;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/SetChangeListener$Change",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private addOp:Z

.field private added:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private old:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .line 635
    invoke-direct {p0, p1}, Ljavafx/collections/SetChangeListener$Change;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 636
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 639
    invoke-direct {p0, p1}, Ljavafx/collections/SetChangeListener$Change;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 640
    invoke-virtual {p2}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 641
    invoke-virtual {p2}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 642
    invoke-virtual {p2}, Ljavafx/collections/SetChangeListener$Change;->wasAdded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    .line 643
    return-void
.end method


# virtual methods
.method public getElementAdded()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    return-object v0
.end method

.method public getElementRemoved()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    return-object v0
.end method

.method public setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange",
            "<TE;>;"
        }
    .end annotation

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 654
    iput-object p1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    .line 656
    return-object p0
.end method

.method public setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange",
            "<TE;>;"
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    .line 649
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 681
    iget-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    invoke-custom {v0}, call_site_1577("makeConcatWithConstants", (Ljava/lang/Object;)Ljava/lang/String;, "added \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    invoke-custom {v0}, call_site_3153("makeConcatWithConstants", (Ljava/lang/Object;)Ljava/lang/String;, "removed \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    goto :goto_a
.end method

.method public wasAdded()Z
    .registers 2

    .line 661
    iget-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    return v0
.end method

.method public wasRemoved()Z
    .registers 2

    .line 666
    iget-boolean v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->addOp:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
