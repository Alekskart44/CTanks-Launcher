.class public Lcom/sun/javafx/binding/SelectBinding$AsObject;
.super Ljavafx/beans/binding/ObjectBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/ObjectBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 75
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsObject;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 76
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 71
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsObject;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 72
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$AsObject;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    .line 92
    if-nez v1, :cond_a

    .line 100
    :goto_9
    return-object v0

    .line 96
    :cond_a
    :try_start_a
    invoke-interface {v1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_9

    .line 97
    :catch_f
    move-exception v1

    .line 98
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Value of select-binding has wrong type, returning null."

    invoke-virtual {v2, v3, v1}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public dispose()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsObject;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 81
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

    .line 106
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsObject;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method protected onInvalidating()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsObject;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 86
    return-void
.end method
