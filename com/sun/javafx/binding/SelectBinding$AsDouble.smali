.class public Lcom/sun/javafx/binding/SelectBinding$AsDouble;
.super Ljavafx/beans/binding/DoubleBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsDouble"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:D


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .line 171
    invoke-direct {p0}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 172
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 173
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

    .line 167
    invoke-direct {p0}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 168
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 169
    return-void
.end method


# virtual methods
.method protected computeValue()D
    .registers 6

    const-wide/16 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    .line 188
    if-nez v0, :cond_c

    move-wide v0, v2

    .line 201
    :goto_b
    return-wide v0

    .line 191
    :cond_c
    instance-of v1, v0, Ljavafx/beans/value/ObservableNumberValue;

    if-eqz v1, :cond_17

    .line 192
    check-cast v0, Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableNumberValue;->doubleValue()D

    move-result-wide v0

    goto :goto_b

    .line 195
    :cond_17
    :try_start_17
    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_20} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_20} :catch_2e

    move-result-wide v0

    goto :goto_b

    .line 196
    :catch_22
    move-exception v0

    .line 197
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v1

    const-string v4, "Value of select binding is null, returning default value"

    invoke-virtual {v1, v4, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    move-wide v0, v2

    .line 201
    goto :goto_b

    .line 198
    :catch_2e
    move-exception v0

    .line 199
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v1

    const-string v4, "Exception while evaluating select-binding"

    invoke-virtual {v1, v4, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public dispose()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 178
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

    .line 206
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method protected onInvalidating()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 183
    return-void
.end method
