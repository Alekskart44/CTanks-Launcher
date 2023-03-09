.class public Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
.super Ljavafx/collections/MapChangeListener$Change;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/MapChangeListener$Change",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private addOp:Z

.field private added:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private old:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private removeOp:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 656
    invoke-direct {p0, p1}, Ljavafx/collections/MapChangeListener$Change;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 657
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 660
    invoke-direct {p0, p1}, Ljavafx/collections/MapChangeListener$Change;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 661
    invoke-virtual {p2}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 662
    invoke-virtual {p2}, Ljavafx/collections/MapChangeListener$Change;->getValueRemoved()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 663
    invoke-virtual {p2}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 664
    invoke-virtual {p2}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 665
    invoke-virtual {p2}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 666
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAdded()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueRemoved()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    return-object v0
.end method

.method public setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;"
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 680
    iput-object p2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 683
    return-object p0
.end method

.method public setPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 687
    iput-object p1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 688
    iput-object p2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 689
    iput-object p3, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 690
    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 691
    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 692
    return-object p0
.end method

.method public setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;"
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    .line 670
    iput-object p2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    .line 674
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    iget-boolean v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    if-eqz v1, :cond_40

    .line 724
    iget-boolean v1, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    if-eqz v1, :cond_34

    .line 725
    const-string v1, "replaced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 732
    :goto_24
    const-string v1, " at key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 727
    :cond_34
    const-string v1, "added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->added:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 730
    :cond_40
    const-string v1, "removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->old:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method public wasAdded()Z
    .registers 2

    .line 697
    iget-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->addOp:Z

    return v0
.end method

.method public wasRemoved()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->removeOp:Z

    return v0
.end method
