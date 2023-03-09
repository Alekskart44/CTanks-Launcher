.class public Lcom/sun/javafx/binding/SelectBinding$AsString;
.super Ljavafx/beans/binding/StringBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsString"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String;


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 363
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/binding/SelectBinding$AsString;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .line 371
    invoke-direct {p0}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 372
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 373
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

    .line 367
    invoke-direct {p0}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 368
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 369
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    .line 388
    if-nez v0, :cond_b

    .line 389
    sget-object v0, Lcom/sun/javafx/binding/SelectBinding$AsString;->DEFAULT_VALUE:Ljava/lang/String;

    .line 396
    :goto_a
    return-object v0

    .line 392
    :cond_b
    :try_start_b
    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_a

    .line 393
    :catch_14
    move-exception v0

    .line 394
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v1

    const-string v2, "Exception while evaluating select-binding"

    invoke-virtual {v1, v2, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    sget-object v0, Lcom/sun/javafx/binding/SelectBinding$AsString;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_a
.end method

.method public dispose()V
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 378
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

    .line 402
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method protected onInvalidating()V
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 383
    return-void
.end method
