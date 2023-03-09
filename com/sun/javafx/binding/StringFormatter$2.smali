.class Lcom/sun/javafx/binding/StringFormatter$2;
.super Lcom/sun/javafx/binding/StringFormatter;
.source "StringFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/binding/StringFormatter;->concat([Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sun/javafx/binding/StringFormatter;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/sun/javafx/binding/StringFormatter;->bind([Ljavafx/beans/Observable;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .registers 6

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    aget-object v4, v2, v0

    .line 125
    invoke-static {v4}, Lcom/sun/javafx/binding/StringFormatter;->extractValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 127
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/sun/javafx/binding/StringFormatter;->unbind([Ljavafx/beans/Observable;)V

    .line 119
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

    .line 132
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    invoke-static {v0}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v0

    .line 132
    invoke-static {v0}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method
