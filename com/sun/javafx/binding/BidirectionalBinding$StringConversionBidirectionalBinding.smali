.class public abstract Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StringConversionBidirectionalBinding"
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
.field private final otherPropertyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/Property",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final stringPropertyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation

    .line 796
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 797
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->stringPropertyRef:Ljava/lang/ref/WeakReference;

    .line 798
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->otherPropertyRef:Ljava/lang/ref/WeakReference;

    .line 799
    return-void
.end method


# virtual methods
.method protected abstract fromString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method protected getProperty1()Ljava/lang/Object;
    .registers 2

    .line 807
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->stringPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty2()Ljava/lang/Object;
    .registers 2

    .line 812
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->otherPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .registers 7

    const/4 v4, 0x0

    .line 817
    iget-boolean v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z

    if-nez v0, :cond_23

    .line 818
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->stringPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/beans/property/Property;

    .line 819
    iget-object v1, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->otherPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/Property;

    .line 820
    if-eqz v0, :cond_19

    if-nez v1, :cond_24

    .line 821
    :cond_19
    if-eqz v0, :cond_1e

    .line 822
    invoke-interface {v0, p0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 824
    :cond_1e
    if-eqz v1, :cond_23

    .line 825
    invoke-interface {v1, p0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 854
    :cond_23
    :goto_23
    return-void

    .line 829
    :cond_24
    const/4 v2, 0x1

    :try_start_25
    iput-boolean v2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_4e

    .line 830
    if-ne v0, p1, :cond_52

    .line 832
    :try_start_29
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 833
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_39} :catch_3c
    .catchall {:try_start_29 .. :try_end_39} :catchall_4e

    .line 850
    :goto_39
    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z

    goto :goto_23

    .line 834
    :catch_3c
    move-exception v0

    .line 835
    :try_start_3d
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Exception while parsing String in bidirectional binding"

    invoke-virtual {v2, v3, v0}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 836
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 837
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4e

    goto :goto_39

    .line 850
    :catchall_4e
    move-exception v0

    iput-boolean v4, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z

    .line 851
    throw v0

    .line 841
    :cond_52
    :try_start_52
    invoke-interface {v1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 842
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_61
    .catchall {:try_start_52 .. :try_end_60} :catchall_4e

    goto :goto_39

    .line 843
    :catch_61
    move-exception v1

    .line 844
    :try_start_62
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lcom/sun/javafx/binding/Logging$ErrorLogger;

    move-result-object v2

    const-string v3, "Exception while converting Object to String in bidirectional binding"

    invoke-virtual {v2, v3, v1}, Lcom/sun/javafx/binding/Logging$ErrorLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 845
    const-string v1, ""

    invoke-interface {v0, v1}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 846
    invoke-interface {v0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_62 .. :try_end_73} :catchall_4e

    goto :goto_39
.end method

.method protected abstract toString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
