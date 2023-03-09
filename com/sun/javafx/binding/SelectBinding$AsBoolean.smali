.class public Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
.super Ljavafx/beans/binding/BooleanBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsBoolean"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Z


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 122
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 123
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

    .line 117
    invoke-direct {p0}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 118
    new-instance v0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 119
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .registers 5

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    .line 138
    if-nez v0, :cond_b

    move v0, v1

    .line 151
    :goto_a
    return v0

    .line 141
    :cond_b
    instance-of v2, v0, Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v2, :cond_16

    .line 142
    check-cast v0, Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v0

    goto :goto_a

    .line 145
    :cond_16
    :try_start_16
    invoke-interface {v0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1f} :catch_21
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1f} :catch_2d

    move-result v0

    goto :goto_a

    .line 146
    :catch_21
    move-exception v0

    .line 147
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Value of select binding is null, returning default value"

    invoke-virtual {v2, v3, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    move v0, v1

    .line 151
    goto :goto_a

    .line 148
    :catch_2d
    move-exception v0

    .line 149
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Value of select-binding has wrong type, returning default value."

    invoke-virtual {v2, v3, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public dispose()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 128
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

    .line 156
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method protected onInvalidating()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    .line 133
    return-void
.end method
