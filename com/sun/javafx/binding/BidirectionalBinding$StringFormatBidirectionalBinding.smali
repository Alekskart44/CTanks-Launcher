.class Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringFormatBidirectionalBinding"
.end annotation


# instance fields
.field private final format:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<*>;",
            "Ljava/text/Format;",
            ")V"
        }
    .end annotation

    .line 862
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 863
    iput-object p3, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;->format:Ljava/text/Format;

    .line 864
    return-void
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;->format:Ljava/text/Format;

    invoke-virtual {v0, p1}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 868
    iget-object v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;->format:Ljava/text/Format;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
