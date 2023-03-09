.class Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BidirectionalIntegerBinding"
.end annotation


# instance fields
.field private oldValue:I

.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/IntegerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/IntegerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/IntegerProperty;)V
    .registers 4

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    .line 464
    invoke-virtual {p1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v0

    iput v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->oldValue:I

    .line 465
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 466
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 467
    return-void
.end method


# virtual methods
.method protected bridge synthetic getProperty1()Ljava/lang/Object;
    .registers 2

    .line 456
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->getProperty1()Ljavafx/beans/property/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty1()Ljavafx/beans/property/Property;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    return-object v0
.end method

.method protected bridge synthetic getProperty2()Ljava/lang/Object;
    .registers 2

    .line 456
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->getProperty2()Ljavafx/beans/property/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty2()Ljavafx/beans/property/Property;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    return-object v0
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .registers 7

    const/4 v4, 0x0

    .line 481
    iget-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    if-nez v0, :cond_23

    .line 482
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/IntegerProperty;

    .line 483
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/IntegerProperty;

    .line 484
    if-eqz v0, :cond_19

    if-nez v1, :cond_24

    .line 485
    :cond_19
    if-eqz v0, :cond_1e

    .line 486
    invoke-virtual {v0, p0}, Ljavafx/beans/property/IntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 488
    :cond_1e
    if-eqz v1, :cond_23

    .line 489
    invoke-virtual {v1, p0}, Ljavafx/beans/property/IntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 530
    :cond_23
    :goto_23
    return-void

    .line 493
    :cond_24
    const/4 v2, 0x1

    :try_start_25
    iput-boolean v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    .line 494
    if-ne v0, p1, :cond_38

    .line 495
    invoke-virtual {v0}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v2

    .line 496
    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 497
    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    .line 498
    iput v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->oldValue:I
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_35} :catch_45
    .catchall {:try_start_25 .. :try_end_35} :catchall_58

    .line 526
    :goto_35
    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    goto :goto_23

    .line 500
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v2

    .line 501
    invoke-virtual {v0, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 502
    invoke-virtual {v0}, Ljavafx/beans/property/IntegerProperty;->get()I

    .line 503
    iput v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->oldValue:I
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_44} :catch_45
    .catchall {:try_start_38 .. :try_end_44} :catchall_58

    goto :goto_35

    .line 505
    :catch_45
    move-exception v2

    .line 507
    if-ne v0, p1, :cond_5c

    .line 508
    :try_start_48
    iget v3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->oldValue:I

    invoke-virtual {v0, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 509
    invoke-virtual {v0}, Ljavafx/beans/property/IntegerProperty;->get()I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_65
    .catchall {:try_start_48 .. :try_end_50} :catchall_58

    .line 523
    :goto_50
    :try_start_50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bidirectional binding failed, setting to the previous value"

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_58

    .line 526
    :catchall_58
    move-exception v0

    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    .line 527
    throw v0

    .line 511
    :cond_5c
    :try_start_5c
    iget v3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->oldValue:I

    invoke-virtual {v1, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 512
    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_65
    .catchall {:try_start_5c .. :try_end_64} :catchall_58

    goto :goto_50

    .line 514
    :catch_65
    move-exception v3

    .line 515
    :try_start_66
    invoke-virtual {v3, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 516
    invoke-static {v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->unbind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 517
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-custom {v0, v1}, call_site_281("makeConcatWithConstants", (Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/IntegerProperty;)Ljava/lang/String;, "Bidirectional binding failed together with an attempt to restore the source property to the previous value. Removing the bidirectional binding from properties \u0001 and \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_58
.end method
