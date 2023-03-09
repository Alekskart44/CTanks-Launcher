.class Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;
.super Lcom/sun/javafx/binding/SetExpressionHelper;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInvalidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/SetExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 128
    iput-object p2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    .line 129
    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 164
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 169
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 148
    return-object p0
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 158
    return-object p0
.end method
