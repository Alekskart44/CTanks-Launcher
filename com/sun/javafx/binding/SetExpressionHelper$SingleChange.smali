.class Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;
.super Lcom/sun/javafx/binding/SetExpressionHelper;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
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
.field private currentValue:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 179
    iput-object p2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    .line 180
    invoke-interface {p1}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 181
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

    .line 185
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

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

    .line 195
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

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

    .line 205
    new-instance v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/SetChangeListener;)V

    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .registers 5

    .line 215
    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 216
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v0}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableSet;

    iput-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 217
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableSet;

    if-eq v0, v1, :cond_19

    .line 218
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v0, v2, v1, v3}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    :cond_19
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    iget-object v1, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    iget-object v2, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableSet;

    iget-object v3, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v0, v1, v2, v3}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .line 190
    return-object p0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .registers 3
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

    .line 200
    iget-object v0, p0, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
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

    .line 210
    return-object p0
.end method
