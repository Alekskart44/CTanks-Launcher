.class Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;
.super Lcom/sun/javafx/binding/ListExpressionHelper;
.source "ListExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ListExpressionHelper;
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
        "Lcom/sun/javafx/binding/ListExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 143
    iput-object p2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    .line 144
    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-object v0
.end method

.method protected addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableListValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 179
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v0, v1}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 184
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 163
    return-object p0
.end method

.method protected removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 173
    return-object p0
.end method
