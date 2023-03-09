.class public final Lcom/sun/javafx/application/ModuleAccess;
.super Ljava/lang/Object;
.source "ModuleAccess.java"


# static fields
.field private static final bootLayerMethod:Ljava/lang/reflect/Method;

.field private static final classForNameMethod:Ljava/lang/reflect/Method;

.field private static final findModuleMethod:Ljava/lang/reflect/Method;

.field private static final getDescriptorMethod:Ljava/lang/reflect/Method;

.field private static final getModuleNameMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final module:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 99
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getModule"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 101
    const-string v1, "getLayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 102
    const-string v2, "getDescriptor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 103
    const-string v3, "getName"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 105
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 106
    const-string v4, "boot"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 107
    const-string v5, "findModule"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 109
    const-class v5, Ljava/lang/Class;

    const-string v6, "forName"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    .line 110
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_57} :catch_63

    move-result-object v0

    .line 116
    sput-object v4, Lcom/sun/javafx/application/ModuleAccess;->bootLayerMethod:Ljava/lang/reflect/Method;

    .line 117
    sput-object v3, Lcom/sun/javafx/application/ModuleAccess;->getModuleNameMethod:Ljava/lang/reflect/Method;

    .line 118
    sput-object v2, Lcom/sun/javafx/application/ModuleAccess;->getDescriptorMethod:Ljava/lang/reflect/Method;

    .line 119
    sput-object v1, Lcom/sun/javafx/application/ModuleAccess;->findModuleMethod:Ljava/lang/reflect/Method;

    .line 120
    sput-object v0, Lcom/sun/javafx/application/ModuleAccess;->classForNameMethod:Ljava/lang/reflect/Method;

    .line 121
    return-void

    .line 112
    :catch_63
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "Module reflection failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sun/javafx/application/ModuleAccess;->module:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method static load(Ljava/lang/String;)Lcom/sun/javafx/application/ModuleAccess;
    .registers 5

    .line 67
    :try_start_0
    sget-object v0, Lcom/sun/javafx/application/ModuleAccess;->bootLayerMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/sun/javafx/application/ModuleAccess;->findModuleMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 70
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 71
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 73
    new-instance v0, Ljava/lang/InternalError;

    invoke-custom {p0}, call_site_3191("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Module \u0001 not in boot Layer")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_28} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_28} :catch_39

    .line 77
    :catch_28
    move-exception v0

    .line 78
    :goto_29
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :cond_2f
    :try_start_2f
    new-instance v1, Lcom/sun/javafx/application/ModuleAccess;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/javafx/application/ModuleAccess;-><init>(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_38} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_38} :catch_39

    return-object v1

    .line 77
    :catch_39
    move-exception v0

    goto :goto_29
.end method


# virtual methods
.method classForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 58
    :try_start_0
    sget-object v0, Lcom/sun/javafx/application/ModuleAccess;->classForNameMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/javafx/application/ModuleAccess;->module:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_14} :catch_1c

    return-object v0

    .line 59
    :catch_15
    move-exception v0

    .line 60
    :goto_16
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_1c
    move-exception v0

    goto :goto_16
.end method

.method getDescriptor()Ljava/lang/module/ModuleDescriptor;
    .registers 4

    .line 42
    :try_start_0
    sget-object v0, Lcom/sun/javafx/application/ModuleAccess;->getDescriptorMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sun/javafx/application/ModuleAccess;->module:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/module/ModuleDescriptor;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_15

    return-object v0

    .line 43
    :catch_e
    move-exception v0

    .line 44
    :goto_f
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_15
    move-exception v0

    goto :goto_f
.end method

.method getName()Ljava/lang/String;
    .registers 4

    .line 50
    :try_start_0
    sget-object v0, Lcom/sun/javafx/application/ModuleAccess;->getModuleNameMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sun/javafx/application/ModuleAccess;->module:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_15

    return-object v0

    .line 51
    :catch_e
    move-exception v0

    .line 52
    :goto_f
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_15
    move-exception v0

    goto :goto_f
.end method
