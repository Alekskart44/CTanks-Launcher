.class public Lcom/sun/javafx/binding/ExpressionHelperBase;
.super Ljava/lang/Object;
.source "ExpressionHelperBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$trim$0(Ljava/lang/Object;)Z
    .registers 2

    .line 34
    instance-of v0, p0, Ljavafx/beans/WeakListener;

    if-eqz v0, :cond_e

    check-cast p0, Ljavafx/beans/WeakListener;

    .line 35
    invoke-interface {p0}, Ljavafx/beans/WeakListener;->wasGarbageCollected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 34
    :goto_d
    return v0

    .line 35
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected static trim(I[Ljava/lang/Object;)I
    .registers 7

    .line 34
    invoke-custom {}, call_site_3091("test", ()Ljava/util/function/Predicate;, (Ljava/lang/Object;)Z, invoke-static@Lcom/sun/javafx/binding/ExpressionHelperBase;->lambda$trim$0(Ljava/lang/Object;)Z, (Ljava/lang/Object;)Z)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_5
    if-ge v1, p0, :cond_f

    .line 38
    aget-object v0, p1, v1

    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 42
    :cond_f
    if-ge v1, p0, :cond_34

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v2, v0

    :goto_14
    if-ge v2, p0, :cond_2b

    .line 44
    aget-object v0, p1, v2

    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 45
    add-int/lit8 v0, v1, 0x1

    aget-object v4, p1, v2

    aput-object v4, p1, v1

    .line 43
    :goto_24
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_14

    .line 37
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2b
    move v0, v1

    .line 50
    :goto_2c
    if-ge v0, p0, :cond_35

    .line 51
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_34
    move v1, p0

    .line 55
    :cond_35
    return v1

    :cond_36
    move v0, v1

    goto :goto_24
.end method
