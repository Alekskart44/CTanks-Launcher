.class public Lcom/example/demo/loader/ZIPClientLoader;
.super Ljava/lang/Object;
.source "ZIPClientLoader.java"


# instance fields
.field private controller:Lcom/example/demo/Controller;

.field private resourceClient:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$startLoad$0(Lcom/example/demo/Controller;D)V
    .registers 6
    .param p0, "controller"  # Lcom/example/demo/Controller;
    .param p1, "progress"  # D

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 50
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_12

    .line 51
    const-string v0, "unpackingfiles"

    invoke-static {v0}, Lcom/example/demo/locale/LocaleRegistry;->getLocalizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 54
    :cond_12
    return-void
.end method

.method private static synthetic lambda$startLoad$1(Lcom/example/demo/Controller;D)V
    .registers 4
    .param p0, "controller"  # Lcom/example/demo/Controller;
    .param p1, "progress"  # D

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 56
    return-void
.end method

.method private synthetic lambda$startLoad$2(Lcom/example/demo/Controller;)V
    .registers 7
    .param p1, "controller"  # Lcom/example/demo/Controller;

    .line 46
    :try_start_0
    const-string v1, "downloadClient"

    invoke-static {v1}, Lcom/example/demo/locale/LocaleRegistry;->getLocalizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 47
    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    invoke-virtual {p1, v2, v3}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 48
    const-string v1, "https://github.com/1DreamStan/CTAnks/raw/ct/client.zip"

    iget-object v2, p0, Lcom/example/demo/loader/ZIPClientLoader;->resourceClient:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-custom {p1}, call_site_3125("progressUpdated", (Lcom/example/demo/Controller;)Lcom/example/demo/resources/ProgressListener;, (D)V, invoke-static@Lcom/example/demo/loader/ZIPClientLoader;->lambda$startLoad$0(Lcom/example/demo/Controller;D)V, (D)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-custom {p1}, call_site_708("progressUpdated", (Lcom/example/demo/Controller;)Lcom/example/demo/resources/UnpackingProgressListener;, (D)V, invoke-static@Lcom/example/demo/loader/ZIPClientLoader;->lambda$startLoad$1(Lcom/example/demo/Controller;D)V, (D)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/example/demo/resources/ZIPUtils;->downloadAndExtractZIP(Ljava/lang/String;Ljava/lang/String;Lcom/example/demo/resources/ProgressListener;Lcom/example/demo/resources/UnpackingProgressListener;)V

    .line 57
    const-string v1, "downloadfilesdone"

    invoke-static {v1}, Lcom/example/demo/locale/LocaleRegistry;->getLocalizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 58
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 59
    invoke-direct {p0}, Lcom/example/demo/loader/ZIPClientLoader;->saveMD5Resources()V

    .line 60
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/example/demo/resources/ZIPResourceLoader;

    invoke-direct {v1}, Lcom/example/demo/resources/ZIPResourceLoader;-><init>()V

    invoke-virtual {v1, p1}, Lcom/example/demo/resources/ZIPResourceLoader;->startLoad(Lcom/example/demo/Controller;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 66
    :goto_3f
    return-void

    .line 62
    :catch_40
    move-exception v0

    .line 63
    .local v0, "var3":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/example/demo/alerts/ErrorAlertManager;->showErrorAlert(Ljava/lang/Exception;)V

    goto :goto_3f
.end method

.method private saveMD5Resources()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 78
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://github.com/1DreamStan/CTAnks/raw/ct/md5"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 79
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/example/demo/loader/ZIPClientLoader;->resourceClient:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_1142("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\md5")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 80
    return-void
.end method

.method private updateClient()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 83
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/example/demo/loader/ZIPClientLoader;->resourceClient:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-custom {v9}, call_site_1141("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\md5")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "file":Ljava/io/File;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-custom {v10}, call_site_2900("makeConcatWithConstants", (Z)Ljava/lang/String;, "ZIPClientLoader::updateClient() file(md5) is exist? - \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_25

    .line 95
    :cond_24
    :goto_24
    return v7

    .line 88
    :cond_25
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    .line 89
    .local v3, "path":Ljava/nio/file/Path;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v9}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "allLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "localMD5":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    const-string v9, "https://github.com/1DreamStan/CTAnks/raw/ct/md5"

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, "url":Ljava/net/URL;
    new-instance v5, Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v5, "scanner":Ljava/util/Scanner;
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "realMD5":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-custom {v10}, call_site_510("makeConcatWithConstants", (Z)Ljava/lang/String;, "ZIPClientLoader::updateClient() md5 == md5 from server - \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move v7, v8

    goto :goto_24
.end method


# virtual methods
.method public getLauncher()Ljava/io/File;
    .registers 3

    .line 74
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/example/demo/loader/ZIPClientLoader;->resourceClient:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_533("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\CTanks client.exe")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public startLoad(Lcom/example/demo/Controller;)V
    .registers 6
    .param p1, "controller"  # Lcom/example/demo/Controller;

    .line 26
    iput-object p1, p0, Lcom/example/demo/loader/ZIPClientLoader;->controller:Lcom/example/demo/Controller;

    .line 27
    const-string v2, "LOCALAPPDATA"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-custom {v2}, call_site_993("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\CTanks Client\\")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 28
    .local v0, "currentPath":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_1f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/example/demo/loader/ZIPClientLoader;->resourceClient:Ljava/io/File;

    .line 35
    :try_start_26
    invoke-direct {p0}, Lcom/example/demo/loader/ZIPClientLoader;->updateClient()Z

    move-result v2

    if-nez v2, :cond_35

    .line 36
    new-instance v2, Lcom/example/demo/resources/ZIPResourceLoader;

    invoke-direct {v2}, Lcom/example/demo/resources/ZIPResourceLoader;-><init>()V

    invoke-virtual {v2, p1}, Lcom/example/demo/resources/ZIPResourceLoader;->startLoad(Lcom/example/demo/Controller;)V

    .line 71
    :goto_34
    return-void

    .line 40
    :cond_35
    iget-object v2, p0, Lcom/example/demo/loader/ZIPClientLoader;->resourceClient:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/example/demo/loader/ZIPClientLoader;->resourceClient:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_52

    .line 41
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Cant create resourceCache::File[path]"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4d} :catch_4d

    .line 67
    :catch_4d
    move-exception v1

    .line 68
    .local v1, "var4":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/example/demo/alerts/ErrorAlertManager;->showErrorAlert(Ljava/lang/Exception;)V

    goto :goto_34

    .line 44
    .end local v1  # "var4":Ljava/lang/Exception;
    :cond_52
    :try_start_52
    new-instance v2, Ljava/lang/Thread;

    invoke-custom {p0, p1}, call_site_906("run", (Lcom/example/demo/loader/ZIPClientLoader;Lcom/example/demo/Controller;)Ljava/lang/Runnable;, ()V, invoke-instance@Lcom/example/demo/loader/ZIPClientLoader;->lambda$startLoad$2(Lcom/example/demo/Controller;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_4d

    goto :goto_34
.end method
