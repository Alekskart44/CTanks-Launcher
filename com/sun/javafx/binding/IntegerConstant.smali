.class public final Lcom/sun/javafx/binding/IntegerConstant;
.super Ljava/lang/Object;
.source "IntegerConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableIntegerValue;


# instance fields
.field private final value:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    .line 41
    return-void
.end method

.method public static valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;
    .registers 2

    .line 44
    new-instance v0, Lcom/sun/javafx/binding/IntegerConstant;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/IntegerConstant;-><init>(I)V

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
    iget v0, p0, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    .line 89
    iget v0, p0, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public get()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 2

    .line 54
    iget v0, p0, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/sun/javafx/binding/IntegerConstant;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public intValue()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 84
    iget v0, p0, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    int-to-long v0, v0

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
