.class Lcom/sun/javafx/binding/StringFormatter$1;
.super Ljavafx/beans/binding/StringBinding;
.source "StringFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$observableValue:Ljavafx/beans/value/ObservableValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableValue;)V
    .registers 5

    .line 71
    iput-object p1, p0, Lcom/sun/javafx/binding/StringFormatter$1;->val$observableValue:Ljavafx/beans/value/ObservableValue;

    invoke-direct {p0}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljavafx/beans/Observable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/javafx/binding/StringFormatter$1;->val$observableValue:Ljavafx/beans/value/ObservableValue;

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Ljavafx/beans/binding/StringBinding;->bind([Ljavafx/beans/Observable;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$1;->val$observableValue:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 84
    if-nez v0, :cond_b

    const-string v0, "null"

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public dispose()V
    .registers 4

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljavafx/beans/Observable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/javafx/binding/StringFormatter$1;->val$observableValue:Ljavafx/beans/value/ObservableValue;

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Ljavafx/beans/binding/StringBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 79
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$1;->val$observableValue:Ljavafx/beans/value/ObservableValue;

    invoke-static {v0}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method
