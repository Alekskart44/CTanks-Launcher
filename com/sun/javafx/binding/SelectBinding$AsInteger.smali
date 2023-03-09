.class public Lcom/sun/javafx/binding/SelectBinding$AsInteger;
.super Ljavafx/beans/binding/IntegerBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsInteger"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .line 271
    invoke-direct {p0}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 272
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsInteger;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 273
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

    .line 267
    invoke-direct {p0}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 268
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsInteger;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 269
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .registers 5

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsInteger;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    .line 288
    if-nez v0, :cond_b

    move v0, v1

    .line 301
    :goto_a
    return v0

    .line 291
    :cond_b
    instance-of v2, v0, Ljavafx/beans/value/ObservableNumberValue;

    if-eqz v2, :cond_16

    .line 292
    check-cast v0, Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableNumberValue;->intValue()I

    move-result v0

    goto :goto_a

    .line 295
    :cond_16
    :try_start_16
    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1f} :catch_21
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1f} :catch_2d

    move-result v0

    goto :goto_a

    .line 296
    :catch_21
    move-exception v0

    .line 297
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Value of select binding is null, returning default value"

    invoke-virtual {v2, v3, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    move v0, v1

    .line 301
    goto :goto_a

    .line 298
    :catch_2d
    move-exception v0

    .line 299
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating select-binding"

    invoke-virtual {v2, v3, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public dispose()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsInteger;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 278
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

    .line 306
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsInteger;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method protected onInvalidating()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsInteger;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 283
    return-void
.end method
