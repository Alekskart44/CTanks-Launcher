.class Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;
.super Lcom/sun/javafx/application/HostServicesDelegate;
.source "HostServicesDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/application/HostServicesDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandaloneHostService"
.end annotation


# static fields
.field static final browsers:[Ljava/lang/String;

.field private static instance:Lcom/sun/javafx/application/HostServicesDelegate;


# instance fields
.field private appClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->instance:Lcom/sun/javafx/application/HostServicesDelegate;

    .line 125
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xdg-open"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "google-chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "firefox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "opera"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "konqueror"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mozilla"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->browsers:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljavafx/application/Application;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Lcom/sun/javafx/application/HostServicesDelegate;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->appClass:Ljava/lang/Class;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->appClass:Ljava/lang/Class;

    .line 66
    return-void
.end method

.method public static getInstance(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;
    .registers 3

    .line 56
    const-class v1, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;

    monitor-enter v1

    .line 57
    :try_start_3
    sget-object v0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->instance:Lcom/sun/javafx/application/HostServicesDelegate;

    if-nez v0, :cond_e

    .line 58
    new-instance v0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;

    invoke-direct {v0, p0}, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;-><init>(Ljavafx/application/Application;)V

    sput-object v0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->instance:Lcom/sun/javafx/application/HostServicesDelegate;

    .line 60
    :cond_e
    sget-object v0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->instance:Lcom/sun/javafx/application/HostServicesDelegate;

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private toURIString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 110
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 116
    :goto_d
    return-object v0

    .line 111
    :catch_e
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v0, ""

    goto :goto_d
.end method


# virtual methods
.method public getCodeBase()Ljava/lang/String;
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->appClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 76
    if-ltz v1, :cond_14

    .line 80
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_14
    invoke-custom {v0}, call_site_3("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001.class")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->appClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "jar:file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "!"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_36

    .line 87
    :cond_33
    const-string v0, ""

    .line 105
    :goto_35
    return-object v0

    .line 90
    :cond_36
    const/4 v1, 0x4

    const-string v2, "!"

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 92
    const/4 v1, 0x0

    .line 94
    :try_start_42
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_5d

    .line 98
    :goto_50
    if-eqz v0, :cond_60

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_60

    .line 101
    invoke-direct {p0, v0}, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->toURIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 95
    :catch_5d
    move-exception v0

    move-object v0, v1

    goto :goto_50

    .line 105
    :cond_60
    const-string v0, ""

    goto :goto_35
.end method

.method public getDocumentBase()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->toURIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showDocument(Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    .line 136
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    :try_start_7
    const-string v2, "Mac OS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 139
    invoke-static {}, Ljava/awt/Desktop;->getDesktop()Ljava/awt/Desktop;

    move-result-object v0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Desktop;->browse(Ljava/net/URI;)V

    .line 160
    :cond_1a
    :goto_1a
    return-void

    .line 140
    :cond_1b
    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 141
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-custom {p1}, call_site_2773("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "rundll32 url.dll,FileProtocolHandler \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_1a

    .line 155
    :catch_2f
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 144
    :cond_34
    const/4 v1, 0x0

    .line 145
    :try_start_35
    sget-object v3, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->browsers:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_39
    if-ge v2, v4, :cond_71

    aget-object v0, v3, v2

    .line 146
    if-nez v1, :cond_7b

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "which"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 147
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7b

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 145
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_39

    .line 151
    :cond_71
    if-nez v1, :cond_1a

    .line 152
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No web browser found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_7b} :catch_2f

    :cond_7b
    move-object v0, v1

    goto :goto_6d
.end method
