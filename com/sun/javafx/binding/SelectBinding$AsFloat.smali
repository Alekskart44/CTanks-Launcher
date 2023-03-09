.class public Lcom/sun/javafx/binding/SelectBinding$AsFloat;
.super Ljavafx/beans/binding/FloatBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsFloat"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:F


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .line 221
    invoke-direct {p0}, Ljavafx/beans/binding/FloatBinding;-><init>()V

    .line 222
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 223
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

    .line 217
    invoke-direct {p0}, Ljavafx/beans/binding/FloatBinding;-><init>()V

    .line 218
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 219
    return-void
.end method


# virtual methods
.method protected computeValue()F
    .registers 5

    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    .line 238
    if-nez v0, :cond_b

    move v0, v1

    .line 251
    :goto_a
    return v0

    .line 241
    :cond_b
    instance-of v2, v0, Ljavafx/beans/value/ObservableNumberValue;

    if-eqz v2, :cond_16

    .line 242
    check-cast v0, Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableNumberValue;->floatValue()F

    move-result v0

    goto :goto_a

    .line 245
    :cond_16
    :try_start_16
    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1f} :catch_21
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1f} :catch_2d

    move-result v0

    goto :goto_a

    .line 246
    :catch_21
    move-exception v0

    .line 247
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Value of select binding is null, returning default value"

    invoke-virtual {v2, v3, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    move v0, v1

    .line 251
    goto :goto_a

    .line 248
    :catch_2d
    move-exception v0

    .line 249
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating select-binding"

    invoke-virtual {v2, v3, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public dispose()V
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 228
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

    .line 256
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method protected onInvalidating()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 233
    return-void
.end method
