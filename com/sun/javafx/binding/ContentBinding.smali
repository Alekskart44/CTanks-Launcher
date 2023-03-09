.class public Lcom/sun/javafx/binding/ContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;,
        Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;,
        Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljava/util/List;Ljavafx/collections/ObservableList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<+TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;-><init>(Ljava/util/List;)V

    .line 52
    instance-of v1, p0, Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_18

    .line 53
    check-cast p0, Ljavafx/collections/ObservableList;

    invoke-interface {p0, p1}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    .line 58
    :goto_11
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 59
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 60
    return-object v0

    .line 55
    :cond_18
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 56
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11
.end method

.method public static bind(Ljava/util/Map;Ljavafx/collections/ObservableMap;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<+TK;+TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 74
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;-><init>(Ljava/util/Map;)V

    .line 76
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 77
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 79
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 80
    return-object v0
.end method

.method public static bind(Ljava/util/Set;Ljavafx/collections/ObservableSet;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<+TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;-><init>(Ljava/util/Set;)V

    .line 66
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 67
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 69
    invoke-interface {p1, v0}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 70
    return-object v0
.end method

.method private static checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 41
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 42
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Both parameters must be specified."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_c
    if-ne p0, p1, :cond_16

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot bind object to itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_16
    return-void
.end method

.method public static unbind(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 84
    invoke-static {p0, p1}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_18

    instance-of v0, p1, Ljavafx/collections/ObservableList;

    if-eqz v0, :cond_18

    .line 86
    check-cast p1, Ljavafx/collections/ObservableList;

    new-instance v0, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 92
    :cond_17
    :goto_17
    return-void

    .line 87
    :cond_18
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_2d

    instance-of v0, p1, Ljavafx/collections/ObservableSet;

    if-eqz v0, :cond_2d

    .line 88
    check-cast p1, Ljavafx/collections/ObservableSet;

    new-instance v0, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    check-cast p0, Ljava/util/Set;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    goto :goto_17

    .line 89
    :cond_2d
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_17

    instance-of v0, p1, Ljavafx/collections/ObservableMap;

    if-eqz v0, :cond_17

    .line 90
    check-cast p1, Ljavafx/collections/ObservableMap;

    new-instance v0, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    goto :goto_17
.end method
