.class Lcom/sun/javafx/binding/StringFormatter$4;
.super Lcom/sun/javafx/binding/StringFormatter;
.source "StringFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/binding/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$format:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 179
    iput-object p1, p0, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/javafx/binding/StringFormatter$4;->val$format:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sun/javafx/binding/StringFormatter;-><init>()V

    .line 181
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/sun/javafx/binding/StringFormatter;->bind([Ljavafx/beans/Observable;)V

    .line 182
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->extractValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/sun/javafx/binding/StringFormatter$4;->val$format:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/sun/javafx/binding/StringFormatter;->unbind([Ljavafx/beans/Observable;)V

    .line 187
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

    .line 197
    iget-object v0, p0, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    .line 198
    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    invoke-static {v0}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v0

    .line 197
    invoke-static {v0}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method
