.class final Lcom/sun/glass/ui/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final GTK:Ljava/lang/String; = "Gtk"

.field public static final IOS:Ljava/lang/String; = "Ios"

.field public static final MAC:Ljava/lang/String; = "Mac"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WINDOWS:Ljava/lang/String; = "Win"

.field private static type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized determinePlatform()Ljava/lang/String;
    .registers 3

    .line 42
    const-class v1, Lcom/sun/glass/ui/Platform;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    if-nez v0, :cond_7d

    .line 46
    invoke-custom {}, call_site_995("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/Platform;->lambda$determinePlatform$0()Ljava/lang/String;, ()Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    if-eqz v0, :cond_5d

    .line 50
    const-string v2, "macosx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 51
    const-string v0, "Mac"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    .line 62
    :goto_1f
    sget-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_30

    .line 78
    :goto_21
    monitor-exit v1

    return-object v0

    .line 52
    :cond_23
    :try_start_23
    const-string v2, "windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 53
    const-string v0, "Win"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_30

    goto :goto_1f

    .line 42
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0

    .line 54
    :cond_33
    :try_start_33
    const-string v2, "linux"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 55
    const-string v0, "Gtk"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_1f

    .line 56
    :cond_40
    const-string v2, "gtk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 57
    const-string v0, "Gtk"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_1f

    .line 58
    :cond_4d
    const-string v2, "ios"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 59
    const-string v0, "Ios"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_1f

    .line 61
    :cond_5a
    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_1f

    .line 65
    :cond_5d
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "darwin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 68
    :cond_79
    const-string v0, "Mac"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    .line 78
    :cond_7d
    :goto_7d
    sget-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_21

    .line 69
    :cond_80
    const-string v2, "wind"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 70
    const-string v0, "Win"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_7d

    .line 71
    :cond_8d
    const-string v2, "linux"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 72
    const-string v0, "Gtk"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_7d

    .line 73
    :cond_9a
    const-string v2, "ios"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 74
    const-string v0, "Ios"

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_33 .. :try_end_a6} :catchall_30

    goto :goto_7d
.end method

.method private static synthetic lambda$determinePlatform$0()Ljava/lang/String;
    .registers 1

    .line 47
    const-string v0, "glass.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
