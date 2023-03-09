.class Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringConverterBidirectionalBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 882
    iput-object p3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;->converter:Ljavafx/util/StringConverter;

    .line 883
    return-void
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
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

    .line 892
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;->converter:Ljavafx/util/StringConverter;

    invoke-virtual {v0, p1}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;->converter:Ljavafx/util/StringConverter;

    invoke-virtual {v0, p1}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
