.class public Lcom/sun/javafx/binding/SelectBinding$AsLong;
.super Ljavafx/beans/binding/LongBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsLong"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:J


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .line 321
    invoke-direct {p0}, Ljavafx/beans/binding/LongBinding;-><init>()V

    .line 322
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsLong;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 323
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

    .line 317
    invoke-direct {p0}, Ljavafx/beans/binding/LongBinding;-><init>()V

    .line 318
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsLong;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 319
    return-void
.end method


# virtual methods
.method protected computeValue()J
    .registers 6

    const-wide/16 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsLong;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    .line 338
    if-nez v0, :cond_c

    move-wide v0, v2

    .line 351
    :goto_b
    return-wide v0

    .line 341
    :cond_c
    instance-of v1, v0, Ljavafx/beans/value/ObservableNumberValue;

    if-eqz v1, :cond_17

    .line 342
    check-cast v0, Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableNumberValue;->longValue()J

    move-result-wide v0

    goto :goto_b

    .line 345
    :cond_17
    :try_start_17
    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_20} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_20} :catch_2e

    move-result-wide v0

    goto :goto_b

    .line 346
    :catch_22
    move-exception v0

    .line 347
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v1

    const-string v4, "Value of select binding is null, returning default value"

    invoke-virtual {v1, v4, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    move-wide v0, v2

    .line 351
    goto :goto_b

    .line 348
    :catch_2e
    move-exception v0

    .line 349
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v1

    const-string v4, "Exception while evaluating select-binding"

    invoke-virtual {v1, v4, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public dispose()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsLong;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 328
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

    .line 356
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsLong;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method protected onInvalidating()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsLong;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 333
    return-void
.end method
