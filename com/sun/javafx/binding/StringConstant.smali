.class public Lcom/sun/javafx/binding/StringConstant;
.super Ljavafx/beans/binding/StringExpression;
.source "StringConstant.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljavafx/beans/binding/StringExpression;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sun/javafx/binding/StringConstant;->value:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;
    .registers 2

    .line 41
    new-instance v0, Lcom/sun/javafx/binding/StringConstant;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/StringConstant;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .registers 2

    .line 57
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/sun/javafx/binding/StringConstant;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/sun/javafx/binding/StringConstant;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/sun/javafx/binding/StringConstant;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/sun/javafx/binding/StringConstant;->value:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .registers 2

    .line 67
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    return-void
.end method
