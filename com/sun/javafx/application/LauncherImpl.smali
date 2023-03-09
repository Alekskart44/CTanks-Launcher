.class public Lcom/sun/javafx/application/LauncherImpl;
.super Ljava/lang/Object;
.source "LauncherImpl.java"


# static fields
.field public static final LAUNCH_MODE_CLASS:Ljava/lang/String; = "LM_CLASS"

.field public static final LAUNCH_MODE_JAR:Ljava/lang/String; = "LM_JAR"

.field public static final LAUNCH_MODE_MODULE:Ljava/lang/String; = "LM_MODULE"

.field private static final MF_JAVAFX_ARGUMENT_PREFIX:Ljava/lang/String; = "JavaFX-Argument-"

.field private static final MF_JAVAFX_CLASS_PATH:Ljava/lang/String; = "JavaFX-Class-Path"

.field private static final MF_JAVAFX_MAIN:Ljava/lang/String; = "JavaFX-Application-Class"

.field private static final MF_JAVAFX_PARAMETER_NAME_PREFIX:Ljava/lang/String; = "JavaFX-Parameter-Name-"

.field private static final MF_JAVAFX_PARAMETER_VALUE_PREFIX:Ljava/lang/String; = "JavaFX-Parameter-Value-"

.field private static final MF_JAVAFX_PRELOADER:Ljava/lang/String; = "JavaFX-Preloader-Class"

.field private static final MF_MAIN_CLASS:Ljava/lang/String; = "Main-Class"

.field private static volatile constructorError:Ljava/lang/Throwable;

.field private static currentPreloader:Ljavafx/application/Preloader;

.field private static volatile error:Z

.field private static volatile initError:Ljava/lang/Throwable;

.field private static launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile launchException:Ljava/lang/RuntimeException;

.field private static volatile pConstructorError:Ljava/lang/Throwable;

.field private static volatile pInitError:Ljava/lang/Throwable;

.field private static volatile pStartError:Ljava/lang/Throwable;

.field private static volatile pStopError:Ljava/lang/Throwable;

.field private static savedMainCcl:Ljava/lang/ClassLoader;

.field private static savedPreloaderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Preloader;",
            ">;"
        }
    .end annotation
.end field

.field private static final simulateSlowProgress:Z

.field private static volatile startError:Ljava/lang/Throwable;

.field private static volatile stopError:Ljava/lang/Throwable;

.field private static final toolkitStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final trace:Z

.field private static final verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-custom {}, call_site_2642("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$static$0()Ljava/lang/Boolean;, ()Ljava/lang/Boolean;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->toolkitStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;

    .line 110
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    .line 115
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    .line 120
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    .line 665
    sput-boolean v2, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    .line 666
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    .line 667
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    .line 668
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    .line 669
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->pStopError:Ljava/lang/Throwable;

    .line 670
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    .line 671
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    .line 672
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    .line 673
    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private static varargs abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 617
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_b

    .line 619
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 630
    return-void
.end method

.method private static decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static getAppArguments(Ljava/util/jar/Attributes;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    .line 583
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 587
    :try_start_6
    const-string v3, "JavaFX-Argument-"

    move v1, v0

    .line 588
    :goto_9
    invoke-custom {v3, v1}, call_site_2199("makeConcatWithConstants", (Ljava/lang/String;I)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 589
    invoke-custom {v3, v1}, call_site_2197("makeConcatWithConstants", (Ljava/lang/String;I)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/application/LauncherImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 593
    :cond_25
    const-string v3, "JavaFX-Parameter-Name-"

    .line 594
    const-string v4, "JavaFX-Parameter-Value-"

    move v1, v0

    .line 596
    :goto_2a
    invoke-custom {v3, v1}, call_site_2196("makeConcatWithConstants", (Ljava/lang/String;I)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 597
    invoke-custom {v3, v1}, call_site_2192("makeConcatWithConstants", (Ljava/lang/String;I)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/LauncherImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 598
    const/4 v0, 0x0

    .line 599
    invoke-custom {v4, v1}, call_site_2198("makeConcatWithConstants", (Ljava/lang/String;I)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 600
    invoke-custom {v4, v1}, call_site_2195("makeConcatWithConstants", (Ljava/lang/String;I)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/LauncherImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_57
    if-eqz v0, :cond_64

    :goto_59
    invoke-custom {v5, v0}, call_site_2988("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "--\u0001=\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 604
    goto :goto_2a

    .line 602
    :cond_64
    const-string v0, ""
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_66} :catch_67

    goto :goto_59

    .line 605
    :catch_67
    move-exception v0

    .line 606
    sget-boolean v1, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v1, :cond_73

    .line 607
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to extract application parameters"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    :cond_73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 612
    :cond_76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getJarAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 8

    const/4 v0, 0x0

    .line 633
    .line 635
    :try_start_1
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_20
    .catchall {:try_start_1 .. :try_end_6} :catchall_33

    .line 636
    :try_start_6
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 637
    if-nez v1, :cond_18

    .line 638
    const/4 v3, 0x0

    const-string v4, "No manifest in jar file %1$s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    :cond_18
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_40
    .catchall {:try_start_6 .. :try_end_1b} :catchall_3d

    move-result-object v0

    .line 645
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_39

    .line 648
    :goto_1f
    return-object v0

    .line 641
    :catch_20
    move-exception v1

    move-object v2, v0

    .line 642
    :goto_22
    :try_start_22
    const-string v3, "Error launching jar file %1%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_3d

    .line 645
    :try_start_2d
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_1f

    .line 646
    :catch_31
    move-exception v1

    goto :goto_1f

    .line 644
    :catchall_33
    move-exception v1

    move-object v2, v0

    .line 645
    :goto_35
    :try_start_35
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3b

    .line 647
    :goto_38
    throw v1

    .line 646
    :catch_39
    move-exception v1

    goto :goto_1f

    :catch_3b
    move-exception v0

    goto :goto_38

    .line 644
    :catchall_3d
    move-exception v0

    move-object v1, v0

    goto :goto_35

    .line 641
    :catch_40
    move-exception v1

    goto :goto_22
.end method

.method private static synthetic lambda$launchApplication$1()Ljava/lang/String;
    .registers 1

    .line 141
    const-string v0, "javafx.preloader"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$launchApplication$2(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7

    .line 196
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_1c
    .catchall {:try_start_0 .. :try_end_3} :catchall_2a

    .line 206
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 208
    :goto_6
    return-void

    .line 197
    :catch_7
    move-exception v0

    .line 198
    :try_start_8
    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_2a

    .line 206
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6

    .line 199
    :catch_e
    move-exception v0

    .line 200
    :try_start_f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Application launch exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_2a

    .line 206
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6

    .line 202
    :catch_1c
    move-exception v0

    .line 203
    :try_start_1d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Application launch error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2a

    .line 206
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6

    :catchall_2a
    move-exception v0

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 207
    throw v0
.end method

.method private static synthetic lambda$launchApplication1$10(Ljavafx/application/Application;)V
    .registers 4

    .line 866
    :try_start_0
    invoke-virtual {p0}, Ljavafx/application/Application;->stop()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 872
    :goto_3
    return-void

    .line 867
    :catch_4
    move-exception v0

    .line 868
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception in Application stop method"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    .line 870
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_3
.end method

.method private static synthetic lambda$launchApplication1$5(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 692
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 693
    return-void
.end method

.method private static synthetic lambda$launchApplication1$6(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V
    .registers 6

    .line 734
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 735
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/application/Preloader;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 737
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/application/Application;

    new-instance v1, Lcom/sun/javafx/application/ParametersImpl;

    invoke-direct {v1, p2}, Lcom/sun/javafx/application/ParametersImpl;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sun/javafx/application/ParametersImpl;->registerParameters(Ljavafx/application/Application;Ljavafx/application/Application$Parameters;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_22

    .line 743
    :goto_21
    return-void

    .line 738
    :catch_22
    move-exception v0

    .line 739
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception in Preloader constructor"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 740
    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    .line 741
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_21
.end method

.method private static synthetic lambda$launchApplication1$7(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 5

    const/4 v3, 0x1

    .line 764
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 767
    new-instance v0, Ljavafx/stage/Stage;

    invoke-direct {v0}, Ljavafx/stage/Stage;-><init>()V

    .line 768
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/javafx/stage/StageHelper;->setPrimary(Ljavafx/stage/Stage;Z)V

    .line 769
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    invoke-virtual {v1, v0}, Ljavafx/application/Preloader;->start(Ljavafx/stage/Stage;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_14

    .line 775
    :goto_13
    return-void

    .line 770
    :catch_14
    move-exception v0

    .line 771
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception in Preloader start method"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 772
    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    .line 773
    sput-boolean v3, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_13
.end method

.method private static synthetic lambda$launchApplication1$8(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V
    .registers 6

    .line 802
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 803
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/application/Application;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 805
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/application/Application;

    new-instance v1, Lcom/sun/javafx/application/ParametersImpl;

    invoke-direct {v1, p2}, Lcom/sun/javafx/application/ParametersImpl;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sun/javafx/application/ParametersImpl;->registerParameters(Ljavafx/application/Application;Ljavafx/application/Application$Parameters;)V

    .line 806
    invoke-static {p0}, Lcom/sun/javafx/application/PlatformImpl;->setApplicationName(Ljava/lang/Class;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_24} :catch_25

    .line 812
    :goto_24
    return-void

    .line 807
    :catch_25
    move-exception v0

    .line 808
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception in Application constructor"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 809
    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    .line 810
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_24
.end method

.method private static synthetic lambda$launchApplication1$9(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V
    .registers 6

    const/4 v3, 0x1

    .line 842
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 845
    new-instance v0, Ljavafx/stage/Stage;

    invoke-direct {v0}, Ljavafx/stage/Stage;-><init>()V

    .line 846
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/javafx/stage/StageHelper;->setPrimary(Ljavafx/stage/Stage;Z)V

    .line 847
    invoke-virtual {p1, v0}, Ljavafx/application/Application;->start(Ljavafx/stage/Stage;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_12

    .line 853
    :goto_11
    return-void

    .line 848
    :catch_12
    move-exception v0

    .line 849
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception in Application start method"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 850
    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    .line 851
    sput-boolean v3, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_11
.end method

.method private static synthetic lambda$launchApplicationWithArgs$3(Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 422
    invoke-static {p0, p1}, Lcom/sun/javafx/application/LauncherImpl;->loadClass(Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 423
    if-nez v0, :cond_1b

    .line 424
    if-eqz p0, :cond_4e

    .line 425
    const-string v1, "Missing JavaFX application class %1$s in module %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 426
    invoke-virtual {p0}, Lcom/sun/javafx/application/ModuleAccess;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 425
    invoke-static {v4, v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_1b
    :goto_1b
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 434
    if-eqz p3, :cond_4d

    .line 436
    invoke-static {v4, p3}, Lcom/sun/javafx/application/LauncherImpl;->loadClass(Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 437
    if-nez v0, :cond_2f

    .line 438
    const-string v1, "Missing JavaFX preloader class %1$s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-static {v4, v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    :cond_2f
    const-class v1, Ljavafx/application/Preloader;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 442
    const-string v1, "JavaFX preloader class %1$s does not extend javafx.application.Preloader"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4, v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :cond_44
    const-class v1, Ljavafx/application/Preloader;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 446
    :cond_4d
    return-void

    .line 428
    :cond_4e
    const-string v1, "Missing JavaFX application class %1$s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v4, v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method private static synthetic lambda$notifyCurrentPreloader$14(Ljavafx/application/Preloader$PreloaderNotification;)V
    .registers 2

    .line 948
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v0, :cond_9

    .line 949
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    invoke-virtual {v0, p0}, Ljavafx/application/Preloader;->handleApplicationNotification(Ljavafx/application/Preloader$PreloaderNotification;)V

    .line 951
    :cond_9
    return-void
.end method

.method private static synthetic lambda$notifyError$13(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 5

    .line 932
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v0, :cond_13

    .line 934
    :try_start_4
    new-instance v0, Ljavafx/application/Preloader$ErrorNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljavafx/application/Preloader$ErrorNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    invoke-virtual {v1, v0}, Ljavafx/application/Preloader;->handleErrorNotification(Ljavafx/application/Preloader$ErrorNotification;)Z

    move-result v0

    .line 936
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_13} :catch_14

    .line 941
    :cond_13
    :goto_13
    return-void

    .line 937
    :catch_14
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13
.end method

.method private static synthetic lambda$notifyProgress$12(Ljavafx/application/Preloader;D)V
    .registers 4

    .line 925
    new-instance v0, Ljavafx/application/Preloader$ProgressNotification;

    invoke-direct {v0, p1, p2}, Ljavafx/application/Preloader$ProgressNotification;-><init>(D)V

    invoke-virtual {p0, v0}, Ljavafx/application/Preloader;->handleProgressNotification(Ljavafx/application/Preloader$ProgressNotification;)V

    return-void
.end method

.method private static synthetic lambda$notifyStateChange$11(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    .registers 4

    .line 920
    new-instance v0, Ljavafx/application/Preloader$StateChangeNotification;

    invoke-direct {v0, p1, p2}, Ljavafx/application/Preloader$StateChangeNotification;-><init>(Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V

    invoke-virtual {p0, v0}, Ljavafx/application/Preloader;->handleStateChangeNotification(Ljavafx/application/Preloader$StateChangeNotification;)V

    return-void
.end method

.method private static synthetic lambda$startToolkit$4(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    .line 659
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 86
    const-string v0, "javafx.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static launchApplication(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Application;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Preloader;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 172
    invoke-static {}, Lcom/sun/glass/ui/Application;->isEventThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application launch must not be called on the JavaFX Application Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_f
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application launch must not be called more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1f
    const-class v0, Ljavafx/application/Application;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_1606("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Error: \u0001 is not a subclass of javafx.application.Application")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_35
    if-eqz p1, :cond_4d

    const-class v0, Ljavafx/application/Preloader;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_168("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Error: \u0001 is not a subclass of javafx.application.Preloader")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_4d
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 194
    new-instance v1, Ljava/lang/Thread;

    invoke-custom {p0, p1, p2, v0}, call_site_1955("run", (Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication$2(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    const-string v2, "JavaFX-Launcher"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    :try_start_63
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_6d

    .line 219
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_76

    .line 220
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;

    throw v0

    .line 215
    :catch_6d
    move-exception v0

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception: "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 222
    :cond_76
    return-void
.end method

.method public static launchApplication(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Application;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    .line 136
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    .line 138
    if-nez v1, :cond_2d

    .line 140
    invoke-custom {}, call_site_901("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication$1()Ljava/lang/String;, ()Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    if-eqz v0, :cond_2d

    .line 144
    const/4 v2, 0x0

    .line 145
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 144
    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1e

    move-result-object v0

    .line 154
    :goto_1a
    invoke-static {p0, v0, p1}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 155
    return-void

    .line 146
    :catch_1e
    move-exception v2

    .line 147
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v0}, call_site_976("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Could not load preloader class \'\u0001\', continuing without preloader.")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 149
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    move-object v0, v1

    goto :goto_1a
.end method

.method public static launchApplication(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 241
    sget-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v0, :cond_10

    .line 242
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p1}, call_site_2975("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "JavaFX launchApplication method: launchMode=\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_10
    const-string v0, "LM_JAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 258
    invoke-static {p0}, Lcom/sun/javafx/application/LauncherImpl;->getJarAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v3

    .line 259
    if-nez v3, :cond_25

    .line 260
    const-string v0, "Can\'t get manifest attributes from jar"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_25
    const-string v0, "JavaFX-Class-Path"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_155

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c3

    move-object v0, v1

    .line 286
    :goto_38
    array-length v2, p2

    if-nez v2, :cond_3f

    .line 287
    invoke-static {v3}, Lcom/sun/javafx/application/LauncherImpl;->getAppArguments(Ljava/util/jar/Attributes;)[Ljava/lang/String;

    move-result-object p2

    .line 291
    :cond_3f
    const-string v2, "JavaFX-Application-Class"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    if-nez v2, :cond_56

    .line 294
    const-string v2, "Main-Class"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    if-nez v2, :cond_56

    .line 297
    const-string v4, "JavaFX jar manifest requires a valid JavaFX-Appliation-Class or Main-Class entry"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_56
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 303
    const-string v2, "JavaFX-Preloader-Class"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_66

    .line 305
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_66
    move-object v3, v1

    move-object v4, v0

    .line 339
    :goto_68
    if-nez v2, :cond_150

    .line 340
    const-string v0, "javafx.preloader"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_70
    if-nez p0, :cond_79

    .line 344
    const-string v2, "No main JavaFX class to launch"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_79
    if-eqz v4, :cond_14b

    .line 351
    :try_start_7b
    const-class v1, Lcom/sun/javafx/application/LauncherImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 354
    const-string v2, "launchApplicationWithArgs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/sun/javafx/application/ModuleAccess;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 355
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v5

    .line 354
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 358
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 359
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_c2} :catch_141

    .line 366
    :goto_c2
    return-void

    .line 271
    :cond_c3
    sget-boolean v2, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v2, :cond_ce

    .line 272
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "WARNING: Application jar uses deprecated JavaFX-Class-Path attribute. Please use Class-Path instead."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    :cond_ce
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/sun/javafx/application/LauncherImpl;->setupJavaFXClassLoader(Ljava/io/File;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto/16 :goto_38

    .line 307
    :cond_d9
    const-string v0, "LM_CLASS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    move-object v3, v1

    move-object v4, v1

    move-object v2, v1

    .line 308
    goto :goto_68

    .line 309
    :cond_e5
    const-string v0, "LM_MODULE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 311
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 313
    const/4 v0, -0x1

    if-ne v2, v0, :cond_11f

    move-object v2, v1

    .line 321
    :goto_f7
    invoke-static {p0}, Lcom/sun/javafx/application/ModuleAccess;->load(Ljava/lang/String;)Lcom/sun/javafx/application/ModuleAccess;

    move-result-object v3

    .line 324
    if-nez v2, :cond_153

    .line 325
    invoke-virtual {v3}, Lcom/sun/javafx/application/ModuleAccess;->getDescriptor()Ljava/lang/module/ModuleDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/module/ModuleDescriptor;->mainClass()Ljava/util/Optional;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_114

    .line 327
    const-string v2, "Module %1$s does not have a MainClass attribute, use -m <module>/<main-class>"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-static {v1, v2, v4}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_114
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_11a
    move-object v4, v1

    move-object v2, v1

    move-object p0, v0

    .line 332
    goto/16 :goto_68

    .line 317
    :cond_11f
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 318
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object p0, v0

    goto :goto_f7

    .line 333
    :cond_12b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The launchMode argument must be one of LM_CLASS, LM_JAR or LM_MODULE"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v2, "Invalid launch mode: %1$s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {v0, v2, v3}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    move-object v4, v1

    move-object v2, v1

    move-object p0, v1

    goto/16 :goto_68

    .line 360
    :catch_141
    move-exception v0

    .line 361
    const-string v1, "Exception while launching application"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c2

    .line 364
    :cond_14b
    invoke-static {v3, p0, v0, p2}, Lcom/sun/javafx/application/LauncherImpl;->launchApplicationWithArgs(Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_c2

    :cond_150
    move-object v0, v2

    goto/16 :goto_70

    :cond_153
    move-object v0, v2

    goto :goto_11a

    :cond_155
    move-object v0, v1

    goto/16 :goto_38
.end method

.method private static launchApplication1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Application;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Preloader;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 679
    invoke-static {}, Lcom/sun/javafx/application/LauncherImpl;->startToolkit()V

    .line 681
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1e

    .line 689
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_1e

    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    if-eq v0, v1, :cond_1e

    .line 691
    invoke-custom {v0}, call_site_1928("run", (Ljava/lang/ClassLoader;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$5(Ljava/lang/ClassLoader;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 697
    :cond_1e
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 698
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 699
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 700
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 701
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 702
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 704
    new-instance v0, Lcom/sun/javafx/application/LauncherImpl$1;

    invoke-direct/range {v0 .. v5}, Lcom/sun/javafx/application/LauncherImpl$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 724
    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->addListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V

    .line 727
    :try_start_44
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 728
    if-eqz p1, :cond_52

    .line 732
    invoke-custom {p1, v4, p2}, call_site_3178("run", (Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$6(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 745
    :cond_52
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/application/Preloader;

    sput-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    .line 748
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v4, :cond_6d

    sget-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v4, :cond_6d

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_11e

    move-result v4

    if-nez v4, :cond_6d

    .line 751
    :try_start_68
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    invoke-virtual {v4}, Ljavafx/application/Preloader;->init()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6d} :catch_126
    .catchall {:try_start_68 .. :try_end_6d} :catchall_11e

    .line 760
    :cond_6d
    :goto_6d
    :try_start_6d
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v4, :cond_93

    sget-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v4, :cond_93

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_93

    .line 762
    invoke-custom {v3}, call_site_2832("run", (Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$7(Ljava/util/concurrent/atomic/AtomicBoolean;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 778
    sget-boolean v3, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v3, :cond_93

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_93

    .line 779
    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcom/sun/javafx/application/LauncherImpl;->notifyProgress(Ljavafx/application/Preloader;D)V

    .line 786
    :cond_93
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 787
    sget-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v4, :cond_bc

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_bc

    .line 788
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v4, :cond_b5

    .line 795
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    invoke-static {v4, v6, v7}, Lcom/sun/javafx/application/LauncherImpl;->notifyProgress(Ljavafx/application/Preloader;D)V

    .line 796
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    sget-object v6, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_LOAD:Ljavafx/application/Preloader$StateChangeNotification$Type;

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/sun/javafx/application/LauncherImpl;->notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V

    .line 800
    :cond_b5
    invoke-custom {p0, v3, p2}, call_site_2339("run", (Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$8(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 814
    :cond_bc
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/application/Application;

    .line 817
    sget-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v4, :cond_da

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_da

    .line 818
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v4, :cond_d7

    .line 819
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    sget-object v6, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_INIT:Ljavafx/application/Preloader$StateChangeNotification$Type;

    invoke-static {v4, v6, v3}, Lcom/sun/javafx/application/LauncherImpl;->notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    :try_end_d7
    .catchall {:try_start_6d .. :try_end_d7} :catchall_11e

    .line 825
    :cond_d7
    :try_start_d7
    invoke-virtual {v3}, Ljavafx/application/Application;->init()V
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_da} :catch_135
    .catchall {:try_start_d7 .. :try_end_da} :catchall_11e

    .line 834
    :cond_da
    :goto_da
    :try_start_da
    sget-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v4, :cond_f6

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_f6

    .line 835
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v4, :cond_ef

    .line 836
    sget-object v4, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    sget-object v5, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_START:Ljavafx/application/Preloader$StateChangeNotification$Type;

    invoke-static {v4, v5, v3}, Lcom/sun/javafx/application/LauncherImpl;->notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V

    .line 840
    :cond_ef
    invoke-custom {v1, v3}, call_site_1821("run", (Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$9(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 856
    :cond_f6
    sget-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v4, :cond_fd

    .line 857
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 862
    :cond_fd
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 864
    invoke-custom {v3}, call_site_1195("run", (Ljavafx/application/Application;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$10(Ljavafx/application/Application;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 875
    :cond_10a
    sget-boolean v1, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-eqz v1, :cond_1c7

    .line 876
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    if-eqz v1, :cond_143

    .line 877
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-custom {p0}, call_site_333("makeConcatWithConstants", (Ljava/lang/Class;)Ljava/lang/String;, "Unable to construct Preloader instance: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_11e
    .catchall {:try_start_da .. :try_end_11e} :catchall_11e

    .line 911
    :catchall_11e
    move-exception v1

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->removeListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V

    .line 912
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->tkExit()V

    .line 913
    throw v1

    .line 752
    :catch_126
    move-exception v4

    .line 753
    :try_start_127
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Exception in Preloader init method"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 754
    sput-object v4, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    .line 755
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto/16 :goto_6d

    .line 826
    :catch_135
    move-exception v4

    .line 827
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Exception in Application init method"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    sput-object v4, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    .line 829
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_da

    .line 879
    :cond_143
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    if-eqz v1, :cond_151

    .line 880
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in Preloader init method"

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 882
    :cond_151
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    if-eqz v1, :cond_15f

    .line 883
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in Preloader start method"

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 885
    :cond_15f
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->pStopError:Ljava/lang/Throwable;

    if-eqz v1, :cond_16d

    .line 886
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in Preloader stop method"

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->pStopError:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 888
    :cond_16d
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    if-eqz v1, :cond_185

    .line 889
    invoke-custom {p0}, call_site_751("makeConcatWithConstants", (Ljava/lang/Class;)Ljava/lang/String;, "Unable to construct Application instance: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 890
    sget-object v2, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 891
    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    invoke-direct {v2, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 893
    :cond_185
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    if-eqz v1, :cond_19b

    .line 894
    const-string v1, "Exception in Application init method"

    .line 895
    sget-object v2, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 896
    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    invoke-direct {v2, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 898
    :cond_19b
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    if-eqz v1, :cond_1b1

    .line 899
    const-string v1, "Exception in Application start method"

    .line 900
    sget-object v2, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 901
    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    invoke-direct {v2, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 903
    :cond_1b1
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    if-eqz v1, :cond_1c7

    .line 904
    const-string v1, "Exception in Application stop method"

    .line 905
    sget-object v2, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 906
    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    invoke-direct {v2, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1c7
    .catchall {:try_start_127 .. :try_end_1c7} :catchall_11e

    .line 911
    :cond_1c7
    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->removeListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V

    .line 912
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->tkExit()V

    .line 914
    return-void
.end method

.method public static launchApplicationWithArgs(Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 410
    :try_start_3
    invoke-static {}, Lcom/sun/javafx/application/LauncherImpl;->startToolkit()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_58

    .line 419
    :goto_6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 420
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 421
    invoke-custom {p0, p1, v1, p2, v0}, call_site_646("run", (Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplicationWithArgs$3(Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 447
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 448
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 452
    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    .line 459
    :try_start_25
    const-string v2, "main"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 460
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 459
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 461
    sget-boolean v3, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v3, :cond_43

    .line 462
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Calling main(String[]) method"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    :cond_43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sput-object v3, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    .line 465
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_57} :catch_af
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_57} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_57} :catch_9d

    .line 489
    :goto_57
    return-void

    .line 411
    :catch_58
    move-exception v0

    .line 412
    const-string v1, "Toolkit initialization error"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 467
    :catch_63
    move-exception v2

    .line 469
    :goto_64
    sput-object v8, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    .line 470
    sget-boolean v3, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v3, :cond_73

    .line 471
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v2}, call_site_2047("makeConcatWithConstants", (Ljava/lang/ReflectiveOperationException;)Ljava/lang/String;, "WARNING: Cannot access application main method: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    :cond_73
    const-class v3, Ljavafx/application/Application;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 481
    const-string v3, "JavaFX application class %1$s does not extend javafx.application.Application"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    :cond_88
    const-class v2, Ljavafx/application/Application;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 485
    sget-boolean v2, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v2, :cond_99

    .line 486
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Launching application directly"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    :cond_99
    invoke-static {v1, v0, p3}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V

    goto :goto_57

    .line 473
    :catch_9d
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 475
    const-string v0, "Exception running application %1$s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v8, v0, v2}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_57

    .line 467
    :catch_af
    move-exception v2

    goto :goto_64
.end method

.method private static loadClass(Lcom/sun/javafx/application/ModuleAccess;Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/application/ModuleAccess;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    .line 373
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 379
    if-eqz p0, :cond_36

    .line 380
    invoke-virtual {p0, p1}, Lcom/sun/javafx/application/ModuleAccess;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 387
    :goto_f
    if-nez v0, :cond_35

    const-string v2, "os.name"

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OS X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    .line 388
    invoke-static {p1, v2}, Ljava/text/Normalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 391
    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 393
    if-eqz p0, :cond_3c

    .line 394
    invoke-virtual {p0, v2}, Lcom/sun/javafx/application/ModuleAccess;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 402
    :cond_35
    :goto_35
    return-object v0

    .line 383
    :cond_36
    const/4 v2, 0x1

    :try_start_37
    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_3a} :catch_42
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_37 .. :try_end_3a} :catch_44

    move-result-object v0

    goto :goto_f

    .line 397
    :cond_3c
    const/4 v3, 0x1

    :try_start_3d
    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_40} :catch_46
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3d .. :try_end_40} :catch_48

    move-result-object v0

    goto :goto_35

    .line 384
    :catch_42
    move-exception v2

    goto :goto_f

    :catch_44
    move-exception v2

    goto :goto_f

    .line 398
    :catch_46
    move-exception v1

    goto :goto_35

    :catch_48
    move-exception v1

    goto :goto_35
.end method

.method private static notifyCurrentPreloader(Ljavafx/application/Preloader$PreloaderNotification;)V
    .registers 2

    .line 947
    invoke-custom {p0}, call_site_1313("run", (Ljavafx/application/Preloader$PreloaderNotification;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyCurrentPreloader$14(Ljavafx/application/Preloader$PreloaderNotification;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method

.method private static notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .registers 4

    .line 930
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 931
    invoke-custom {p0, p1, v0}, call_site_686("run", (Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyError$13(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 943
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static notifyPreloader(Ljavafx/application/Application;Ljavafx/application/Preloader$PreloaderNotification;)V
    .registers 3

    .line 955
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 957
    invoke-static {p1}, Lcom/sun/javafx/application/LauncherImpl;->notifyCurrentPreloader(Ljavafx/application/Preloader$PreloaderNotification;)V

    .line 960
    :cond_b
    return-void
.end method

.method private static notifyProgress(Ljavafx/application/Preloader;D)V
    .registers 4

    .line 925
    invoke-custom {p0, p1, p2}, call_site_1342("run", (Ljavafx/application/Preloader;D)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyProgress$12(Ljavafx/application/Preloader;D)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 927
    return-void
.end method

.method private static notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    .registers 4

    .line 920
    invoke-custom {p0, p1, p2}, call_site_2400("run", (Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyStateChange$11(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 922
    return-void
.end method

.method private static setupJavaFXClassLoader(Ljava/io/File;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 9

    const/4 v1, 0x0

    .line 497
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    if-eqz p1, :cond_2e

    .line 506
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 507
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 508
    if-gez v4, :cond_9a

    .line 510
    if-nez v2, :cond_83

    .line 511
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    :goto_21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 513
    invoke-static {v0}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_2e
    :goto_2e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 540
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_5b

    .line 542
    :goto_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5b

    .line 543
    sget-char v4, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 544
    if-gez v4, :cond_d1

    .line 546
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_5b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 559
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    .line 560
    sget-boolean v2, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v2, :cond_f3

    .line 561
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "===== URL list"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    :goto_72
    array-length v2, v0

    if-ge v1, v2, :cond_ec

    .line 563
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object v3, v0, v1

    invoke-custom {v3}, call_site_1491("makeConcatWithConstants", (Ljava/net/URL;)Ljava/lang/String;, "\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 511
    :cond_83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_21

    .line 569
    :catch_89
    move-exception v0

    .line 575
    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    return-object v0

    .line 514
    :cond_8c
    sget-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v0, :cond_2e

    .line 515
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p1}, call_site_537("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Class Path entry \"\u0001\" does not exist, ignoring")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 519
    :cond_9a
    if-lez v4, :cond_b5

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 521
    if-nez v2, :cond_bd

    .line 522
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    :goto_a8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 524
    invoke-static {v0}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_b5
    :goto_b5
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c

    .line 522
    :cond_bd
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_a8

    .line 525
    :cond_c3
    sget-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v0, :cond_b5

    .line 526
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v5}, call_site_538("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Class Path entry \"\u0001\" does not exist, ignoring")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b5

    .line 548
    :cond_d1
    if-lez v4, :cond_e4

    .line 549
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 550
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_e4
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_41

    .line 565
    :cond_ec
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "====="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 567
    :cond_f3
    new-instance v1, Ljava/net/URLClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getPlatformClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_fc} :catch_89

    move-object v0, v1

    goto :goto_8b
.end method

.method private static startToolkit()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 652
    sget-object v0, Lcom/sun/javafx/application/LauncherImpl;->toolkitStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 663
    :goto_9
    return-void

    .line 656
    :cond_a
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 659
    invoke-custom {v0}, call_site_2765("run", (Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/LauncherImpl;->lambda$startToolkit$4(Ljava/util/concurrent/CountDownLatch;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->startup(Ljava/lang/Runnable;)V

    .line 662
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_9
.end method
