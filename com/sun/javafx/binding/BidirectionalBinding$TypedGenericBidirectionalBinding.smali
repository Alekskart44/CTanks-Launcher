.class Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypedGenericBidirectionalBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/BidirectionalBinding;"
    }
.end annotation


# instance fields
.field private oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/Property",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/Property",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->updating:Z

    .line 618
    invoke-interface {p1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->oldValue:Ljava/lang/Object;

    .line 619
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 620
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 621
    return-void
.end method


# virtual methods
.method protected bridge synthetic getProperty1()Ljava/lang/Object;
    .registers 2

    .line 610
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->getProperty1()Ljavafx/beans/property/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty1()Ljavafx/beans/property/Property;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/Property",
            "<TT;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    return-object v0
.end method

.method protected bridge synthetic getProperty2()Ljava/lang/Object;
    .registers 2

    .line 610
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->getProperty2()Ljavafx/beans/property/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty2()Ljavafx/beans/property/Property;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/Property",
            "<TT;>;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    return-object v0
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .registers 7

    const/4 v4, 0x0

    .line 635
    iget-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->updating:Z

    if-nez v0, :cond_23

    .line 636
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    .line 637
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/Property;

    .line 638
    if-eqz v0, :cond_19

    if-nez v1, :cond_24

    .line 639
    :cond_19
    if-eqz v0, :cond_1e

    .line 640
    invoke-interface {v0, p0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 642
    :cond_1e
    if-eqz v1, :cond_23

    .line 643
    invoke-interface {v1, p0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 684
    :cond_23
    :goto_23
    return-void

    .line 647
    :cond_24
    const/4 v2, 0x1

    :try_start_25
    iput-boolean v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->updating:Z

    .line 648
    if-ne v0, p1, :cond_38

    .line 649
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 650
    invoke-interface {v1, v2}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 651
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 652
    iput-object v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->oldValue:Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_35} :catch_45
    .catchall {:try_start_25 .. :try_end_35} :catchall_58

    .line 680
    :goto_35
    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->updating:Z

    goto :goto_23

    .line 654
    :cond_38
    :try_start_38
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 655
    invoke-interface {v0, v2}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 656
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 657
    iput-object v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->oldValue:Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_44} :catch_45
    .catchall {:try_start_38 .. :try_end_44} :catchall_58

    goto :goto_35

    .line 659
    :catch_45
    move-exception v2

    .line 661
    if-ne v0, p1, :cond_5c

    .line 662
    :try_start_48
    iget-object v3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->oldValue:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 663
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_65
    .catchall {:try_start_48 .. :try_end_50} :catchall_58

    .line 677
    :goto_50
    :try_start_50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bidirectional binding failed, setting to the previous value"

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_58

    .line 680
    :catchall_58
    move-exception v0

    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->updating:Z

    .line 681
    throw v0

    .line 665
    :cond_5c
    :try_start_5c
    iget-object v3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->oldValue:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 666
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_65
    .catchall {:try_start_5c .. :try_end_64} :catchall_58

    goto :goto_50

    .line 668
    :catch_65
    move-exception v3

    .line 669
    :try_start_66
    invoke-virtual {v3, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 670
    invoke-static {v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;->unbind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 671
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-custom {v0, v1}, call_site_2947("makeConcatWithConstants", (Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Ljava/lang/String;, "Bidirectional binding failed together with an attempt to restore the source property to the previous value. Removing the bidirectional binding from properties \u0001 and \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_58
.end method
