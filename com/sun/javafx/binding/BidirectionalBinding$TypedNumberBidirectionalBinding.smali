.class Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypedNumberBidirectionalBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Lcom/sun/javafx/binding/BidirectionalBinding;"
    }
.end annotation


# instance fields
.field private oldValue:Ljava/lang/Number;
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
            "<",
            "Ljava/lang/Number;",
            ">;>;"
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
            "<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 694
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->updating:Z

    .line 695
    invoke-interface {p1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->oldValue:Ljava/lang/Number;

    .line 696
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 697
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 698
    return-void
.end method


# virtual methods
.method protected bridge synthetic getProperty1()Ljava/lang/Object;
    .registers 2

    .line 687
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->getProperty1()Ljavafx/beans/property/Property;

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

    .line 702
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    return-object v0
.end method

.method protected bridge synthetic getProperty2()Ljava/lang/Object;
    .registers 2

    .line 687
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->getProperty2()Ljavafx/beans/property/Property;

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

    .line 707
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    return-object v0
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .registers 7

    const/4 v4, 0x0

    .line 712
    iget-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->updating:Z

    if-nez v0, :cond_23

    .line 713
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    .line 714
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/Property;

    .line 715
    if-eqz v0, :cond_19

    if-nez v1, :cond_24

    .line 716
    :cond_19
    if-eqz v0, :cond_1e

    .line 717
    invoke-interface {v0, p0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 719
    :cond_1e
    if-eqz v1, :cond_23

    .line 720
    invoke-interface {v1, p0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 761
    :cond_23
    :goto_23
    return-void

    .line 724
    :cond_24
    const/4 v2, 0x1

    :try_start_25
    iput-boolean v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->updating:Z

    .line 725
    if-ne v0, p1, :cond_3a

    .line 726
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 727
    invoke-interface {v1, v2}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 728
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 729
    iput-object v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->oldValue:Ljava/lang/Number;
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_37} :catch_49
    .catchall {:try_start_25 .. :try_end_37} :catchall_5c

    .line 757
    :goto_37
    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->updating:Z

    goto :goto_23

    .line 731
    :cond_3a
    :try_start_3a
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 732
    invoke-interface {v0, v2}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 733
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 734
    iput-object v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->oldValue:Ljava/lang/Number;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_48} :catch_49
    .catchall {:try_start_3a .. :try_end_48} :catchall_5c

    goto :goto_37

    .line 736
    :catch_49
    move-exception v2

    .line 738
    if-ne v0, p1, :cond_60

    .line 739
    :try_start_4c
    iget-object v3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->oldValue:Ljava/lang/Number;

    invoke-interface {v0, v3}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 740
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_69
    .catchall {:try_start_4c .. :try_end_54} :catchall_5c

    .line 754
    :goto_54
    :try_start_54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bidirectional binding failed, setting to the previous value"

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5c

    .line 757
    :catchall_5c
    move-exception v0

    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->updating:Z

    .line 758
    throw v0

    .line 742
    :cond_60
    :try_start_60
    iget-object v3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->oldValue:Ljava/lang/Number;

    invoke-interface {v1, v3}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 743
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_69
    .catchall {:try_start_60 .. :try_end_68} :catchall_5c

    goto :goto_54

    .line 745
    :catch_69
    move-exception v3

    .line 746
    :try_start_6a
    invoke-virtual {v3, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 747
    invoke-static {v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;->unbind(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-custom {v0, v1}, call_site_2946("makeConcatWithConstants", (Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Ljava/lang/String;, "Bidirectional binding failed together with an attempt to restore the source property to the previous value. Removing the bidirectional binding from properties \u0001 and \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_5c
.end method
