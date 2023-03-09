.class public abstract Lcom/sun/javafx/binding/BidirectionalBinding;
.super Ljava/lang/Object;
.source "BidirectionalBinding.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalDoubleBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalFloatBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalLongBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalBooleanBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;
    }
.end annotation


# instance fields
.field private final cachedHashCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding;->cachedHashCode:I

    .line 179
    return-void
.end method

.method public static bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    instance-of v0, p0, Ljavafx/beans/property/DoubleProperty;

    if-eqz v0, :cond_28

    instance-of v0, p1, Ljavafx/beans/property/DoubleProperty;

    if-eqz v0, :cond_28

    .line 62
    new-instance v2, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalDoubleBinding;

    move-object v0, p0

    check-cast v0, Ljavafx/beans/property/DoubleProperty;

    move-object v1, p1

    check-cast v1, Ljavafx/beans/property/DoubleProperty;

    invoke-direct {v2, v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalDoubleBinding;-><init>(Ljavafx/beans/property/DoubleProperty;Ljavafx/beans/property/DoubleProperty;)V

    move-object v0, v2

    .line 72
    :goto_17
    invoke-interface {p1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 73
    invoke-interface {p0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 74
    invoke-interface {p0, v0}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 75
    invoke-interface {p1, v0}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 76
    return-object v0

    .line 63
    :cond_28
    instance-of v0, p0, Ljavafx/beans/property/FloatProperty;

    if-eqz v0, :cond_3d

    instance-of v0, p1, Ljavafx/beans/property/FloatProperty;

    if-eqz v0, :cond_3d

    .line 64
    new-instance v2, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalFloatBinding;

    move-object v0, p0

    check-cast v0, Ljavafx/beans/property/FloatProperty;

    move-object v1, p1

    check-cast v1, Ljavafx/beans/property/FloatProperty;

    invoke-direct {v2, v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalFloatBinding;-><init>(Ljavafx/beans/property/FloatProperty;Ljavafx/beans/property/FloatProperty;)V

    move-object v0, v2

    goto :goto_17

    .line 65
    :cond_3d
    instance-of v0, p0, Ljavafx/beans/property/IntegerProperty;

    if-eqz v0, :cond_52

    instance-of v0, p1, Ljavafx/beans/property/IntegerProperty;

    if-eqz v0, :cond_52

    .line 66
    new-instance v2, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;

    move-object v0, p0

    check-cast v0, Ljavafx/beans/property/IntegerProperty;

    move-object v1, p1

    check-cast v1, Ljavafx/beans/property/IntegerProperty;

    invoke-direct {v2, v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;-><init>(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/IntegerProperty;)V

    move-object v0, v2

    goto :goto_17

    .line 67
    :cond_52
    instance-of v0, p0, Ljavafx/beans/property/LongProperty;

    if-eqz v0, :cond_67

    instance-of v0, p1, Ljavafx/beans/property/LongProperty;

    if-eqz v0, :cond_67

    .line 68
    new-instance v2, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalLongBinding;

    move-object v0, p0

    check-cast v0, Ljavafx/beans/property/LongProperty;

    move-object v1, p1

    check-cast v1, Ljavafx/beans/property/LongProperty;

    invoke-direct {v2, v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalLongBinding;-><init>(Ljavafx/beans/property/LongProperty;Ljavafx/beans/property/LongProperty;)V

    move-object v0, v2

    goto :goto_17

    .line 69
    :cond_67
    instance-of v0, p0, Ljavafx/beans/property/BooleanProperty;

    if-eqz v0, :cond_7c

    instance-of v0, p1, Ljavafx/beans/property/BooleanProperty;

    if-eqz v0, :cond_7c

    .line 70
    new-instance v2, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalBooleanBinding;

    move-object v0, p0

    check-cast v0, Ljavafx/beans/property/BooleanProperty;

    move-object v1, p1

    check-cast v1, Ljavafx/beans/property/BooleanProperty;

    invoke-direct {v2, v0, v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalBooleanBinding;-><init>(Ljavafx/beans/property/BooleanProperty;Ljavafx/beans/property/BooleanProperty;)V

    move-object v0, v2

    goto :goto_17

    .line 71
    :cond_7c
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    goto :goto_17
.end method

.method public static bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)Ljava/lang/Object;
    .registers 5
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
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    const-string v0, "Format cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)V

    .line 83
    invoke-interface {p1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 84
    invoke-interface {p0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 85
    invoke-interface {p0, v0}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 86
    invoke-interface {p1, v0}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 87
    return-object v0
.end method

.method public static bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    const-string v0, "Converter cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)V

    .line 94
    invoke-interface {p1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 95
    invoke-interface {p0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 96
    invoke-interface {p0, v0}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 97
    invoke-interface {p1, v0}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 98
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/DoubleProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/DoubleProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 148
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/FloatProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/FloatProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 144
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/IntegerProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 136
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/LongProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/LongProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/DoubleProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljavafx/beans/property/DoubleProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 132
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/FloatProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljavafx/beans/property/FloatProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 128
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/IntegerProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavafx/beans/property/IntegerProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 120
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/LongProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljavafx/beans/property/LongProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 124
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v0

    return-object v0
.end method

.method private static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 164
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    new-instance v1, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;

    invoke-direct {v1, p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 168
    invoke-interface {p1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-interface {p0, v0}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 169
    invoke-interface {p0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 170
    invoke-interface {p0, v1}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 171
    invoke-interface {p1, v1}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 172
    return-object v1
.end method

.method private static bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .line 152
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    new-instance v1, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;

    invoke-direct {v1, p1, p0}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 156
    invoke-interface {p1}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-interface {p0, v0}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 157
    invoke-interface {p0}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    .line 158
    invoke-interface {p0, v1}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 159
    invoke-interface {p1, v1}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 160
    return-object v1
.end method

.method private static checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 51
    const-string v0, "Both properties must be specified."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    const-string v0, "Both properties must be specified."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    if-ne p0, p1, :cond_14

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot bind property to itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_14
    return-void
.end method

.method public static unbind(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 109
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    instance-of v1, p0, Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_11

    .line 112
    check-cast p0, Ljavafx/beans/value/ObservableValue;

    invoke-interface {p0, v0}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 114
    :cond_11
    instance-of v1, p1, Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_1a

    .line 115
    check-cast p1, Ljavafx/beans/value/ObservableValue;

    invoke-interface {p1, v0}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 117
    :cond_1a
    return-void
.end method

.method public static unbind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-interface {p0, v0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 105
    invoke-interface {p1, v0}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-ne p0, p1, :cond_5

    .line 222
    :cond_4
    :goto_4
    return v0

    .line 201
    :cond_5
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty1()Ljava/lang/Object;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty2()Ljava/lang/Object;

    move-result-object v3

    .line 203
    if-eqz v2, :cond_11

    if-nez v3, :cond_13

    :cond_11
    move v0, v1

    .line 204
    goto :goto_4

    .line 207
    :cond_13
    instance-of v4, p1, Lcom/sun/javafx/binding/BidirectionalBinding;

    if-eqz v4, :cond_2f

    .line 208
    check-cast p1, Lcom/sun/javafx/binding/BidirectionalBinding;

    .line 209
    invoke-virtual {p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty1()Ljava/lang/Object;

    move-result-object v4

    .line 210
    invoke-virtual {p1}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty2()Ljava/lang/Object;

    move-result-object v5

    .line 211
    if-eqz v4, :cond_25

    if-nez v5, :cond_27

    :cond_25
    move v0, v1

    .line 212
    goto :goto_4

    .line 215
    :cond_27
    if-ne v2, v4, :cond_2b

    if-eq v3, v5, :cond_4

    .line 218
    :cond_2b
    if-ne v2, v5, :cond_2f

    if-eq v3, v4, :cond_4

    :cond_2f
    move v0, v1

    .line 222
    goto :goto_4
.end method

.method protected abstract getProperty1()Ljava/lang/Object;
.end method

.method protected abstract getProperty2()Ljava/lang/Object;
.end method

.method public hashCode()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/sun/javafx/binding/BidirectionalBinding;->cachedHashCode:I

    return v0
.end method

.method public wasGarbageCollected()Z
    .registers 2

    .line 192
    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty1()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty2()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
