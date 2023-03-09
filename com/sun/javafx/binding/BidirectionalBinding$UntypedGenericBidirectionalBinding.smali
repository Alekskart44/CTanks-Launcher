.class Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UntypedGenericBidirectionalBinding"
.end annotation


# instance fields
.field private final property1:Ljava/lang/Object;

.field private final property2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    iput-object p1, p0, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;->property1:Ljava/lang/Object;

    .line 771
    iput-object p2, p0, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;->property2:Ljava/lang/Object;

    .line 772
    return-void
.end method


# virtual methods
.method protected getProperty1()Ljava/lang/Object;
    .registers 2

    .line 776
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;->property1:Ljava/lang/Object;

    return-object v0
.end method

.method protected getProperty2()Ljava/lang/Object;
    .registers 2

    .line 781
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;->property2:Ljava/lang/Object;

    return-object v0
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .registers 4

    .line 786
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
