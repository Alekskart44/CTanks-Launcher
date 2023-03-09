.class public final Lcom/sun/javafx/binding/FloatConstant;
.super Ljava/lang/Object;
.source "FloatConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableFloatValue;


# instance fields
.field private final value:F


# direct methods
.method private constructor <init>(F)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sun/javafx/binding/FloatConstant;->value:F

    .line 41
    return-void
.end method

.method public static valueOf(F)Lcom/sun/javafx/binding/FloatConstant;
    .registers 2

    .line 44
    new-instance v0, Lcom/sun/javafx/binding/FloatConstant;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/FloatConstant;-><init>(F)V

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
    iget v0, p0, Lcom/sun/javafx/binding/FloatConstant;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    .line 89
    iget v0, p0, Lcom/sun/javafx/binding/FloatConstant;->value:F

    return v0
.end method

.method public get()F
    .registers 2

    .line 49
    iget v0, p0, Lcom/sun/javafx/binding/FloatConstant;->value:F

    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .registers 2

    .line 54
    iget v0, p0, Lcom/sun/javafx/binding/FloatConstant;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/sun/javafx/binding/FloatConstant;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public intValue()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/sun/javafx/binding/FloatConstant;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 84
    iget v0, p0, Lcom/sun/javafx/binding/FloatConstant;->value:F

    float-to-long v0, v0

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
