.class public abstract Lcom/sun/glass/ui/PlatformFactory;
.super Ljava/lang/Object;
.source "PlatformFactory.java"


# static fields
.field private static instance:Lcom/sun/glass/ui/PlatformFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;
    .registers 3

    .line 37
    const-class v1, Lcom/sun/glass/ui/PlatformFactory;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sun/glass/ui/PlatformFactory;->instance:Lcom/sun/glass/ui/PlatformFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3b

    if-nez v0, :cond_2b

    .line 39
    :try_start_7
    invoke-static {}, Lcom/sun/glass/ui/Platform;->determinePlatform()Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-custom {v2, v0}, call_site_390("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "com.sun.glass.ui.\u0001.\u0001PlatformFactory")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/PlatformFactory;

    sput-object v0, Lcom/sun/glass/ui/PlatformFactory;->instance:Lcom/sun/glass/ui/PlatformFactory;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2f
    .catchall {:try_start_7 .. :try_end_2b} :catchall_3b

    .line 49
    :cond_2b
    :goto_2b
    :try_start_2b
    sget-object v0, Lcom/sun/glass/ui/PlatformFactory;->instance:Lcom/sun/glass/ui/PlatformFactory;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_3b

    monitor-exit v1

    return-object v0

    .line 44
    :catch_2f
    move-exception v0

    .line 45
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to load Glass factory class"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3b

    goto :goto_2b

    .line 37
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract createApplication()Lcom/sun/glass/ui/Application;
.end method

.method public abstract createClipboardDelegate()Lcom/sun/glass/ui/delegate/ClipboardDelegate;
.end method

.method public abstract createMenuBarDelegate(Lcom/sun/glass/ui/MenuBar;)Lcom/sun/glass/ui/delegate/MenuBarDelegate;
.end method

.method public abstract createMenuDelegate(Lcom/sun/glass/ui/Menu;)Lcom/sun/glass/ui/delegate/MenuDelegate;
.end method

.method public abstract createMenuItemDelegate(Lcom/sun/glass/ui/MenuItem;)Lcom/sun/glass/ui/delegate/MenuItemDelegate;
.end method
