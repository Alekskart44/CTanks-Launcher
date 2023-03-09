.class public abstract Lcom/sun/javafx/binding/StringFormatter;
.super Ljavafx/beans/binding/StringBinding;
.source "StringFormatter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljavafx/beans/binding/StringBinding;-><init>()V

    return-void
.end method

.method public static varargs concat([Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .registers 5

    const/4 v0, 0x0

    .line 96
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_d

    .line 97
    :cond_6
    const-string v0, ""

    invoke-static {v0}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v0

    .line 111
    :goto_c
    return-object v0

    .line 99
    :cond_d
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 100
    aget-object v0, p0, v0

    .line 101
    instance-of v1, v0, Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_1e

    check-cast v0, Ljavafx/beans/value/ObservableValue;

    invoke-static {v0}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v0

    goto :goto_c

    .line 102
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v0

    goto :goto_c

    .line 104
    :cond_27
    invoke-static {p0}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_47

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    array-length v2, p0

    :goto_34
    if-ge v0, v2, :cond_3e

    aget-object v3, p0, v0

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 109
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v0

    goto :goto_c

    .line 111
    :cond_47
    new-instance v0, Lcom/sun/javafx/binding/StringFormatter$2;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/StringFormatter$2;-><init>([Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public static convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;)",
            "Ljavafx/beans/binding/StringExpression;"
        }
    .end annotation

    .line 65
    if-nez p0, :cond_a

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ObservableValue must be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_a
    instance-of v0, p0, Ljavafx/beans/binding/StringExpression;

    if-eqz v0, :cond_11

    .line 69
    check-cast p0, Ljavafx/beans/binding/StringExpression;

    .line 71
    :goto_10
    return-object p0

    :cond_11
    new-instance v0, Lcom/sun/javafx/binding/StringFormatter$1;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/StringFormatter$1;-><init>(Ljavafx/beans/value/ObservableValue;)V

    move-object p0, v0

    goto :goto_10
.end method

.method private static varargs extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_19

    aget-object v0, p0, v1

    .line 57
    instance-of v4, v0, Ljavafx/beans/value/ObservableValue;

    if-eqz v4, :cond_15

    .line 58
    check-cast v0, Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 61
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/beans/value/ObservableValue;

    return-object v0
.end method

.method private static extractValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 42
    instance-of v0, p0, Ljavafx/beans/value/ObservableValue;

    if-eqz v0, :cond_a

    check-cast p0, Ljavafx/beans/value/ObservableValue;

    invoke-interface {p0}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method private static extractValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    .line 46
    array-length v1, p0

    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_11

    .line 49
    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/sun/javafx/binding/StringFormatter;->extractValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 51
    :cond_11
    return-object v2
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .registers 4

    .line 173
    if-nez p0, :cond_a

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Format cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_a
    invoke-static {p1}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1a

    .line 177
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v0

    .line 203
    :goto_19
    return-object v0

    .line 179
    :cond_1a
    new-instance v0, Lcom/sun/javafx/binding/StringFormatter$4;

    invoke-direct {v0, p1, p0}, Lcom/sun/javafx/binding/StringFormatter$4;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lcom/sun/javafx/binding/StringFormatter;->get()Ljava/lang/String;

    goto :goto_19
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .registers 5

    .line 139
    if-nez p1, :cond_a

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Format cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_a
    invoke-static {p2}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1a

    .line 143
    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v0

    .line 169
    :goto_19
    return-object v0

    .line 145
    :cond_1a
    new-instance v0, Lcom/sun/javafx/binding/StringFormatter$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/sun/javafx/binding/StringFormatter$3;-><init>([Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lcom/sun/javafx/binding/StringFormatter;->get()Ljava/lang/String;

    goto :goto_19
.end method
