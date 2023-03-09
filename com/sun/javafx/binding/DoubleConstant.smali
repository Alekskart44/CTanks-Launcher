.class public final Lcom/sun/javafx/binding/DoubleConstant;
.super Ljava/lang/Object;
.source "DoubleConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableDoubleValue;


# instance fields
.field private final value:D


# direct methods
.method private constructor <init>(D)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    .line 41
    return-void
.end method

.method public static valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;
    .registers 4

    .line 44
    new-instance v0, Lcom/sun/javafx/binding/DoubleConstant;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/DoubleConstant;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .registers 2

    .line 60
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 65
    return-void
.end method

.method public doubleValue()D
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public get()D
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    return-wide v0
.end method

.method public getValue()Ljava/lang/Double;
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/sun/javafx/binding/DoubleConstant;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public intValue()I
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .registers 2

    .line 70
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 75
    return-void
.end method
