.class public Lcom/sun/javafx/binding/BidirectionalContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;,
        Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;,
        Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    .line 51
    invoke-interface {p0, p1}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    .line 52
    invoke-interface {p0, v0}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 53
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 54
    return-object v0
.end method

.method public static bind(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V

    .line 70
    invoke-interface {p0}, Ljavafx/collections/ObservableMap;->clear()V

    .line 71
    invoke-interface {p0, p1}, Ljavafx/collections/ObservableMap;->putAll(Ljava/util/Map;)V

    .line 72
    invoke-interface {p0, v0}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 73
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 74
    return-object v0
.end method

.method public static bind(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V

    .line 60
    invoke-interface {p0}, Ljavafx/collections/ObservableSet;->clear()V

    .line 61
    invoke-interface {p0, p1}, Ljavafx/collections/ObservableSet;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {p0, v0}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 63
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 64
    return-object v0
.end method

.method private static checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 40
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 41
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Both parameters must be specified."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_c
    if-ne p0, p1, :cond_16

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot bind object to itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_16
    return-void
.end method

.method public static unbind(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 78
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    instance-of v0, p0, Ljavafx/collections/ObservableList;

    if-eqz v0, :cond_1b

    instance-of v0, p1, Ljavafx/collections/ObservableList;

    if-eqz v0, :cond_1b

    .line 80
    check-cast p0, Ljavafx/collections/ObservableList;

    .line 81
    check-cast p1, Ljavafx/collections/ObservableList;

    .line 82
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    .line 83
    invoke-interface {p0, v0}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 84
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 98
    :cond_1a
    :goto_1a
    return-void

    .line 85
    :cond_1b
    instance-of v0, p0, Ljavafx/collections/ObservableSet;

    if-eqz v0, :cond_33

    instance-of v0, p1, Ljavafx/collections/ObservableSet;

    if-eqz v0, :cond_33

    .line 86
    check-cast p0, Ljavafx/collections/ObservableSet;

    .line 87
    check-cast p1, Ljavafx/collections/ObservableSet;

    .line 88
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V

    .line 89
    invoke-interface {p0, v0}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 90
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    goto :goto_1a

    .line 91
    :cond_33
    instance-of v0, p0, Ljavafx/collections/ObservableMap;

    if-eqz v0, :cond_1a

    instance-of v0, p1, Ljavafx/collections/ObservableMap;

    if-eqz v0, :cond_1a

    .line 92
    check-cast p0, Ljavafx/collections/ObservableMap;

    .line 93
    check-cast p1, Ljavafx/collections/ObservableMap;

    .line 94
    new-instance v0, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    invoke-direct {v0, p0, p1}, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V

    .line 95
    invoke-interface {p0, v0}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 96
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    goto :goto_1a
.end method
