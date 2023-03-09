.class public Lcom/sun/javafx/binding/ObjectConstant;
.super Ljava/lang/Object;
.source "ObjectConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableObjectValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ObservableObjectValue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sun/javafx/binding/ObjectConstant;->value:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/Object;)Lcom/sun/javafx/binding/ObjectConstant;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sun/javafx/binding/ObjectConstant",
            "<TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/sun/javafx/binding/ObjectConstant;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/ObjectConstant;-><init>(Ljava/lang/Object;)V

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
            "<-TT;>;)V"
        }
    .end annotation

    .line 62
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sun/javafx/binding/ObjectConstant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/sun/javafx/binding/ObjectConstant;->value:Ljava/lang/Object;

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
            "<-TT;>;)V"
        }
    .end annotation

    .line 72
    return-void
.end method
