.class public Lcom/example/demo/resources/ZIPResourceLoader;
.super Ljava/lang/Object;
.source "ZIPResourceLoader.java"


# static fields
.field public static final md5Resources:Ljava/lang/String; = "http://213.166.71.45/md5"

.field public static final urlToResources:Ljava/lang/String; = "http://213.166.71.45/resources.zip"


# instance fields
.field private cfg:Ljava/io/File;

.field private controller:Lcom/example/demo/Controller;

.field currentPath:Ljava/lang/String;

.field private resourceCache:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/File;

    const-string v1, "APPDATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_2115("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\ctanks.StandaloneLoader\\Local Store\\cache")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/demo/resources/ZIPResourceLoader;->resourceCache:Ljava/io/File;

    .line 25
    const-string v0, "LOCALAPPDATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-custom {v0}, call_site_994("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\CTanks Client\\")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Lcom/example/demo/resources/ZIPResourceLoader;->currentPath:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$startLoad$0(Lcom/example/demo/Controller;D)V
    .registers 6
    .param p0, "controller"  # Lcom/example/demo/Controller;
    .param p1, "progress"  # D

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 51
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_12

    .line 52
    const-string v0, "unpackingfiles"

    invoke-static {v0}, Lcom/example/demo/locale/LocaleRegistry;->getLocalizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 55
    :cond_12
    return-void
.end method

.method private static synthetic lambda$startLoad$1(Lcom/example/demo/Controller;D)V
    .registers 4
    .param p0, "controller"  # Lcom/example/demo/Controller;
    .param p1, "progress"  # D

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 57
    return-void
.end method

.method private synthetic lambda$startLoad$2(Lcom/example/demo/Controller;)V
    .registers 7
    .param p1, "controller"  # Lcom/example/demo/Controller;

    .line 47
    :try_start_0
    const-string v1, "downloadfiles"

    invoke-static {v1}, Lcom/example/demo/locale/LocaleRegistry;->getLocalizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 48
    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    invoke-virtual {p1, v2, v3}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 49
    const-string v1, "https://s113vla.storage.yandex.net/rdisk/6e37c00e39e0c2b60be303636fe69a96ff38a352892a3d14a855fcb80193a401/63e2b13d/B-QXQUlrEieUOKJkFh6zM7xeSRTsZ1C_tO-jIWYdTff3-Vp7hKO7QzJys7ednRhN6L4oAJRs6tBcuKpQh4pvkw==?uid=0&filename=resources.zip&disposition=attachment&hash=TzQe1HXMRSBnSsa/r67cxKlEh4m9eAcWI/fru9TdqmMKJkzOakaa3dYuuWekd7gTq/J6bpmRyOJonT3VoXnDag%3D%3D&limit=0&content_type=application%2Fzip&owner_uid=1612341291&fsize=525559374&hid=0271e4d6f5f12f986b22b6b8d5976410&media_type=compressed&tknv=v2&rtoken=EWbRtH8V9WkA&force_default=no&ycrid=na-0107a6812e48762489c1a4d08c3f23a2-downloader16e&ts=5f421ccf10940&s=c42af8f2401f87b4a02a65d191c456ac05903e349dc53eb571768af74abb0e31&pb=U2FsdGVkX1_JGnVOontDHJtvwsCQeof8SB7K5CQHnL_pdGYd1NP-7jjUlSIa8BXyLHFvvLHFkkNv6ftif52TfmyYwpAh5gdSPwDXCz-QoBo"

    iget-object v2, p0, Lcom/example/demo/resources/ZIPResourceLoader;->resourceCache:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-custom {p1}, call_site_1655("progressUpdated", (Lcom/example/demo/Controller;)Lcom/example/demo/resources/ProgressListener;, (D)V, invoke-static@Lcom/example/demo/resources/ZIPResourceLoader;->lambda$startLoad$0(Lcom/example/demo/Controller;D)V, (D)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-custom {p1}, call_site_161("progressUpdated", (Lcom/example/demo/Controller;)Lcom/example/demo/resources/UnpackingProgressListener;, (D)V, invoke-static@Lcom/example/demo/resources/ZIPResourceLoader;->lambda$startLoad$1(Lcom/example/demo/Controller;D)V, (D)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/example/demo/resources/ZIPUtils;->downloadAndExtractZIP(Ljava/lang/String;Ljava/lang/String;Lcom/example/demo/resources/ProgressListener;Lcom/example/demo/resources/UnpackingProgressListener;)V

    .line 58
    const-string v1, "downloadfilesdone"

    invoke-static {v1}, Lcom/example/demo/locale/LocaleRegistry;->getLocalizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 59
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/example/demo/Controller;->onResourceLoaded(D)V

    .line 60
    invoke-direct {p0}, Lcom/example/demo/resources/ZIPResourceLoader;->saveMD5Resources()V

    .line 61
    invoke-virtual {p1}, Lcom/example/demo/Controller;->unlockPlayButton()V

    .line 62
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 67
    :goto_3a
    return-void

    .line 63
    :catch_3b
    move-exception v0

    .line 64
    .local v0, "var3":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/example/demo/alerts/ErrorAlertManager;->showErrorAlert(Ljava/lang/Exception;)V

    goto :goto_3a
.end method

.method private saveMD5Resources()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 94
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://raw.githubusercontent.com/1DreamStan/CTAnks/ct/md4"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 95
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/example/demo/resources/ZIPResourceLoader;->resourceCache:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_1143("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\md5")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 96
    return-void
.end method

.method private updateResource()Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 76
    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lcom/example/demo/resources/ZIPResourceLoader;->resourceCache:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-custom {v10}, call_site_1140("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\md5")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 78
    .local v2, "fileExist":Z
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-custom {v11}, call_site_2251("makeConcatWithConstants", (Z)Ljava/lang/String;, "ZIPResourceLoader::updateResource() file(md5) is exist? - \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    if-nez v2, :cond_25

    .line 89
    :cond_24
    :goto_24
    return v8

    .line 82
    :cond_25
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    .line 83
    .local v4, "path":Ljava/nio/file/Path;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v10}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "allLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, "localMD5":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    const-string v10, "https://raw.githubusercontent.com/1DreamStan/CTAnks/ct/md4"

    invoke-direct {v7, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    .local v7, "url":Ljava/net/URL;
    new-instance v6, Ljava/util/Scanner;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v6, "scanner":Ljava/util/Scanner;
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "realMD5":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-custom {v11}, call_site_2926("makeConcatWithConstants", (Z)Ljava/lang/String;, "ZIPResourceLoader::updateResource() md5 == md5 from server - \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    move v8, v9

    goto :goto_24
.end method


# virtual methods
.method public startLoad(Lcom/example/demo/Controller;)V
    .registers 8
    .param p1, "controller"  # Lcom/example/demo/Controller;

    .line 28
    iput-object p1, p0, Lcom/example/demo/resources/ZIPResourceLoader;->controller:Lcom/example/demo/Controller;

    .line 29
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/example/demo/resources/ZIPResourceLoader;->currentPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/example/demo/resources/ZIPResourceLoader;->cfg:Ljava/io/File;

    .line 32
    :try_start_b
    invoke-direct {p0}, Lcom/example/demo/resources/ZIPResourceLoader;->updateResource()Z

    move-result v2

    if-nez v2, :cond_48

    .line 33
    invoke-virtual {p1}, Lcom/example/demo/Controller;->unlockPlayButton()V

    .line 34
    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 35
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "aaa"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://github.com/1DreamStan/CTAnks/raw/ct/socket.cfg"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 37
    .local v0, "i":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/example/demo/resources/ZIPResourceLoader;->cfg:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-custom {v2}, call_site_1079("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\socket.cfg")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/CopyOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 73
    .end local v0  # "i":Ljava/io/InputStream;
    :goto_47
    return-void

    .line 41
    :cond_48
    iget-object v2, p0, Lcom/example/demo/resources/ZIPResourceLoader;->resourceCache:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lcom/example/demo/resources/ZIPResourceLoader;->resourceCache:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_68

    .line 42
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Cant create resourceCache::File[path]"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_60} :catch_60

    .line 68
    :catch_60
    move-exception v1

    .line 69
    .local v1, "var3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    invoke-static {v1}, Lcom/example/demo/alerts/ErrorAlertManager;->showErrorAlert(Ljava/lang/Exception;)V

    goto :goto_47

    .line 45
    .end local v1  # "var3":Ljava/lang/Exception;
    :cond_68
    :try_start_68
    new-instance v2, Ljava/lang/Thread;

    invoke-custom {p0, p1}, call_site_126("run", (Lcom/example/demo/resources/ZIPResourceLoader;Lcom/example/demo/Controller;)Ljava/lang/Runnable;, ()V, invoke-instance@Lcom/example/demo/resources/ZIPResourceLoader;->lambda$startLoad$2(Lcom/example/demo/Controller;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_74} :catch_60

    goto :goto_47
.end method
