.class Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
.super Ljava/lang/Object;
.source "SelectBinding.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectBindingHelper"
.end annotation


# instance fields
.field private final binding:Ljavafx/beans/binding/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/Binding",
            "<*>;"
        }
    .end annotation
.end field

.field private dependencies:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final observer:Ljavafx/beans/WeakInvalidationListener;

.field private final propRefs:[Lcom/sun/javafx/property/PropertyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/sun/javafx/property/PropertyReference",
            "<*>;"
        }
    .end annotation
.end field

.field private final properties:[Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation
.end field

.field private final propertyNames:[Ljava/lang/String;


# direct methods
.method private varargs constructor <init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/binding/Binding",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 455
    invoke-static {p2, p3}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->checkAndCreateFirstStep(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    const/4 v0, 0x1

    array-length v2, p3

    invoke-static {p3, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method private varargs constructor <init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/binding/Binding",
            "<*>;",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    if-nez p2, :cond_e

    .line 419
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must specify the root"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_e
    if-nez p3, :cond_12

    .line 422
    new-array p3, v1, [Ljava/lang/String;

    .line 425
    :cond_12
    iput-object p1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->binding:Ljavafx/beans/binding/Binding;

    .line 427
    array-length v2, p3

    move v0, v1

    .line 428
    :goto_16
    if-ge v0, v2, :cond_27

    .line 429
    aget-object v3, p3, v0

    if-nez v3, :cond_24

    .line 430
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "all steps must be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 434
    :cond_27
    new-instance v0, Ljavafx/beans/WeakInvalidationListener;

    invoke-direct {v0, p0}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    .line 435
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    new-array v0, v2, [Lcom/sun/javafx/property/PropertyReference;

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    .line 438
    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [Ljavafx/beans/value/ObservableValue;

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    .line 439
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aput-object p2, v0, v1

    .line 440
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v0, v1}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 441
    return-void
.end method

.method private static checkAndCreateFirstStep(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 444
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    aget-object v0, p1, v1

    if-nez v0, :cond_11

    .line 445
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must specify the root and the first property"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_11
    const/4 v0, 0x0

    :try_start_12
    aget-object v0, p1, v0

    invoke-static {p0, v0}, Lcom/sun/javafx/property/JavaBeanAccessHelper;->createReadOnlyJavaBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v0

    return-object v0

    .line 449
    :catch_19
    move-exception v0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    aget-object v1, p1, v1

    invoke-custom {v1}, call_site_1661("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "The first property \'\u0001\' doesn\'t exist")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stepsToString()Ljava/lang/String;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unregisterListener()V
    .registers 5

    .line 519
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    array-length v1, v0

    .line 520
    const/4 v0, 0x1

    :goto_4
    if-ge v0, v1, :cond_c

    .line 521
    iget-object v2, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aget-object v2, v2, v0

    if-nez v2, :cond_10

    .line 527
    :cond_c
    invoke-direct {p0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 528
    return-void

    .line 524
    :cond_10
    iget-object v2, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 525
    iget-object v2, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private updateDependencies()V
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    if-eqz v0, :cond_15

    .line 532
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    invoke-interface {v0}, Ljavafx/collections/ObservableList;->clear()V

    .line 533
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    array-length v1, v0

    .line 534
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_15

    .line 535
    iget-object v2, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aget-object v2, v2, v0

    if-nez v2, :cond_16

    .line 541
    :cond_15
    return-void

    .line 538
    :cond_16
    iget-object v2, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    iget-object v3, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method


# virtual methods
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

    .line 544
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    if-nez v0, :cond_d

    .line 545
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    .line 546
    invoke-direct {p0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 549
    :cond_d
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    invoke-static {v0}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method public getObservableValue()Ljavafx/beans/value/ObservableValue;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 466
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    array-length v3, v1

    .line 467
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    add-int/lit8 v1, v3, -0x1

    if-ge v2, v1, :cond_d3

    .line 468
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 470
    :try_start_12
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2a

    .line 471
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v5, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    aget-object v5, v5, v2

    .line 472
    invoke-virtual {v5}, Lcom/sun/javafx/property/PropertyReference;->getContainingClass()Ljava/lang/Class;

    move-result-object v5

    .line 471
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 473
    :cond_2a
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    new-instance v5, Lcom/sun/javafx/property/PropertyReference;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/property/PropertyReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v5, v1, v2

    .line 476
    :cond_3b
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sun/javafx/property/PropertyReference;->hasProperty()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 477
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    aget-object v6, v6, v2

    invoke-virtual {v6, v4}, Lcom/sun/javafx/property/PropertyReference;->getProperty(Ljava/lang/Object;)Ljavafx/beans/property/ReadOnlyProperty;

    move-result-object v6

    aput-object v6, v1, v5
    :try_end_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_53} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_53} :catch_89

    .line 504
    :goto_53
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    add-int/lit8 v4, v2, 0x1

    aget-object v1, v1, v4

    iget-object v4, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v1, v4}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 467
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 479
    :cond_62
    :try_start_62
    iget-object v1, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/property/PropertyReference;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sun/javafx/property/JavaBeanAccessHelper;->createReadOnlyJavaBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v6

    aput-object v6, v1, v5
    :try_end_74
    .catch Ljava/lang/NoSuchMethodException; {:try_start_62 .. :try_end_74} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_74} :catch_89

    goto :goto_53

    .line 481
    :catch_75
    move-exception v1

    .line 482
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    invoke-direct {p0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->stepsToString()Ljava/lang/String;

    move-result-object v3

    invoke-custom {v3}, call_site_3014("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Exception while evaluating select-binding \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    invoke-direct {p0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 511
    :cond_88
    :goto_88
    return-object v0

    .line 486
    :catch_89
    move-exception v1

    .line 487
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v3

    .line 488
    sget-object v5, Lcom/sun/javafx/logging/PlatformLogger$Level;->WARNING:Lcom/sun/javafx/logging/PlatformLogger$Level;

    invoke-virtual {v3, v5}, Lcom/sun/javafx/logging/PlatformLogger;->isLoggable(Lcom/sun/javafx/logging/PlatformLogger$Level;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 489
    invoke-direct {p0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->stepsToString()Ljava/lang/String;

    move-result-object v5

    invoke-custom {v5}, call_site_3013("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Exception while evaluating select-binding \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v5

    .line 490
    instance-of v6, v1, Ljava/lang/IllegalStateException;

    if-eqz v6, :cond_b8

    .line 491
    invoke-virtual {v3, v5}, Lcom/sun/javafx/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 492
    iget-object v5, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-custom {v2, v4}, call_site_1310("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;, "Property \'\u0001\' does not exist in \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/sun/javafx/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    :cond_b4
    :goto_b4
    invoke-direct {p0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    goto :goto_88

    .line 493
    :cond_b8
    instance-of v4, v1, Ljava/lang/NullPointerException;

    if-eqz v4, :cond_cf

    .line 494
    invoke-virtual {v3, v5}, Lcom/sun/javafx/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 495
    iget-object v4, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    aget-object v2, v5, v2

    invoke-custom {v4, v2}, call_site_798("makeConcatWithConstants", (Ljava/lang/String;Ljavafx/beans/value/ObservableValue;)Ljava/lang/String;, "Property \'\u0001\' in \u0001 is null")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/sun/javafx/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b4

    .line 497
    :cond_cf
    invoke-virtual {v3, v5, v1}, Lcom/sun/javafx/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b4

    .line 506
    :cond_d3
    invoke-direct {p0}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 507
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    add-int/lit8 v1, v3, -0x1

    aget-object v0, v0, v1

    .line 508
    if-nez v0, :cond_88

    .line 509
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    add-int/lit8 v4, v3, -0x1

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v4, v3

    invoke-custom {v2, v3}, call_site_799("makeConcatWithConstants", (Ljava/lang/String;Ljavafx/beans/value/ObservableValue;)Ljava/lang/String;, "Property \'\u0001\' in \u0001 is null")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_88
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .registers 3

    .line 460
    iget-object v0, p0, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->binding:Ljavafx/beans/binding/Binding;

    invoke-interface {v0}, Ljavafx/beans/binding/Binding;->invalidate()V

    .line 461
    return-void
.end method
