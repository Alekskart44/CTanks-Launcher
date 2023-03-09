.class public Lcom/sun/glass/utils/NativeLibLoader;
.super Ljava/lang/Object;
.source "NativeLibLoader.java"


# static fields
.field private static libDir:Ljava/io/File;

.field private static libPrefix:Ljava/lang/String;

.field private static libSuffix:Ljava/lang/String;

.field private static final loaded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static usingModules:Z

.field private static verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    .line 70
    sput-boolean v1, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    .line 72
    sput-boolean v1, Lcom/sun/glass/utils/NativeLibLoader;->usingModules:Z

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    .line 79
    invoke-custom {}, call_site_2717("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/utils/NativeLibLoader;->lambda$static$2()Ljava/lang/Object;, ()Ljava/lang/Object;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheLibrary(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    const-string v0, "javafx.version"

    const-string v3, "versionless"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    const-string v0, "javafx.cachedir"

    const-string v3, ""

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 239
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-custom {v0, v4}, call_site_1760("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001/.openjfx/cache/\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 241
    :cond_22
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 244
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 245
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v3}, call_site_122("makeConcatWithConstants", (Ljava/io/File;)Ljava/lang/String;, "Cache exists but is not a directory: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 254
    :goto_3d
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_44

    move v0, v1

    .line 258
    :cond_44
    if-nez v0, :cond_94

    .line 259
    const-string v0, "user.name"

    const-string v3, "anonymous"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-custom {v3, v0, v4}, call_site_534("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001/.openjfx_\u0001/cache/\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    .line 261
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_95

    .line 264
    new-instance v1, Ljava/io/IOException;

    invoke-custom {v0}, call_site_123("makeConcatWithConstants", (Ljava/io/File;)Ljava/lang/String;, "Cache exists but is not a directory: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_73
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 250
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v3}, call_site_1215("makeConcatWithConstants", (Ljava/io/File;)Ljava/lang/String;, "Can not create cache at \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 251
    goto :goto_3d

    .line 267
    :cond_84
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_95

    .line 268
    new-instance v1, Ljava/io/IOException;

    invoke-custom {v0}, call_site_1216("makeConcatWithConstants", (Ljava/io/File;)Ljava/lang/String;, "Can not create cache at \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_94
    move-object v0, v3

    .line 273
    :cond_95
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 280
    :try_start_a0
    new-instance v0, Ljava/security/DigestInputStream;

    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 281
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 282
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 283
    :cond_b6
    invoke-virtual {v0, v4}, Ljava/security/DigestInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b6

    .line 284
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_cb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a0 .. :try_end_cb} :catch_ed

    move-result-object p0

    .line 291
    :goto_cc
    invoke-static {v3}, Lcom/sun/glass/utils/NativeLibLoader;->calculateCheckSum(Ljava/io/File;)[B

    move-result-object v4

    .line 292
    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 299
    :cond_dd
    :goto_dd
    if-eqz v2, :cond_e8

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 301
    new-array v1, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 304
    :cond_e8
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 305
    return-object v0

    .line 288
    :catch_ed
    move-exception v0

    .line 289
    new-array v0, v2, [B

    goto :goto_cc

    :cond_f1
    move v2, v1

    .line 296
    goto :goto_dd

    :cond_f3
    move v0, v2

    goto/16 :goto_3d
.end method

.method static calculateCheckSum(Ljava/io/File;)[B
    .registers 6

    .line 311
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_45
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_4e

    .line 312
    :try_start_5
    new-instance v2, Ljava/security/DigestInputStream;

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_10} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_10} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_10} :catch_45
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_10} :catch_4e

    .line 313
    :try_start_10
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 314
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 315
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    .line 316
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_29} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_29} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_29} :catch_45
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_29} :catch_4e

    move-result-object v0

    .line 317
    :try_start_2a
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2d} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_2d} :catch_45
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_2d} :catch_4e

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_30} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_30} :catch_45
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_30} :catch_4e

    .line 325
    :goto_30
    return-object v0

    .line 311
    :catch_31
    move-exception v0

    :try_start_32
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_35} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_32 .. :try_end_35} :catch_45
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_35} :catch_4e

    :goto_35
    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_36} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_36} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_36} :catch_4e

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_3a} :catch_45
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_4e

    :goto_3a
    :try_start_3a
    throw v0
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3b} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_3b} :catch_45
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3b} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_3b} :catch_4e

    .line 319
    :catch_3b
    move-exception v0

    .line 325
    :goto_3c
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_30

    .line 311
    :catch_40
    move-exception v2

    :try_start_41
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_44} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_44} :catch_4e

    goto :goto_35

    .line 319
    :catch_45
    move-exception v0

    goto :goto_3c

    .line 311
    :catch_47
    move-exception v1

    :try_start_48
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4b} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_48 .. :try_end_4b} :catch_45
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_4b} :catch_4e

    goto :goto_3a

    .line 319
    :catch_4c
    move-exception v0

    goto :goto_3c

    :catch_4e
    move-exception v0

    goto :goto_3c
.end method

.method private static initializePath(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 86
    const-string v1, ""

    invoke-static {p0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v1, v0

    .line 93
    :goto_12
    if-ltz v2, :cond_1d

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_12

    .line 99
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v1, v0

    move v3, v0

    .line 104
    :goto_27
    if-ltz v2, :cond_48

    .line 105
    sub-int v0, v2, v3

    if-lez v0, :cond_3d

    .line 106
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 110
    :goto_35
    add-int/lit8 v3, v2, 0x1

    .line 111
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v1, v0

    goto :goto_27

    .line 107
    :cond_3d
    sub-int v0, v2, v3

    if-nez v0, :cond_4f

    .line 108
    add-int/lit8 v0, v1, 0x1

    const-string v3, "."

    aput-object v3, v7, v1

    goto :goto_35

    .line 113
    :cond_48
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    .line 114
    return-object v7

    :cond_4f
    move v0, v1

    goto :goto_35
.end method

.method private static installLibraryFromResource(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class;",
            "Z)Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 207
    if-eqz p1, :cond_28

    .line 208
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, p2, v4}, Lcom/sun/glass/utils/NativeLibLoader;->installLibraryFromResource(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_19

    goto :goto_7

    .line 226
    :catch_19
    move-exception v0

    .line 229
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p0, v0}, call_site_2831("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;, "Loading library \u0001 from resource failed: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_26
    move v0, v1

    .line 232
    :goto_27
    return v0

    .line 212
    :cond_28
    :try_start_28
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-custom {v0}, call_site_366("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "/\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_26

    .line 215
    invoke-static {v2, v0, p2}, Lcom/sun/glass/utils/NativeLibLoader;->cacheLibrary(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 216
    if-eqz p3, :cond_4e

    .line 217
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 218
    sget-boolean v2, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v2, :cond_4c

    .line 219
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v0}, call_site_2958("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Loaded library \u0001 from resource")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    goto :goto_27

    .line 221
    :cond_4e
    sget-boolean v2, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v2, :cond_4c

    .line 222
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v0}, call_site_2696("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Unpacked library \u0001 from resource")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_5b} :catch_19

    goto :goto_4c
.end method

.method private static synthetic lambda$loadLibrary$0()Ljava/lang/StackWalker;
    .registers 1

    .line 52
    sget-object v0, Ljava/lang/StackWalker$Option;->RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/lang/StackWalker;->getInstance(Ljava/lang/StackWalker$Option;)Ljava/lang/StackWalker;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$loadLibrary$1()Ljava/lang/StackWalker;
    .registers 1

    .line 63
    sget-object v0, Ljava/lang/StackWalker$Option;->RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/lang/StackWalker;->getInstance(Ljava/lang/StackWalker$Option;)Ljava/lang/StackWalker;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$2()Ljava/lang/Object;
    .registers 1

    .line 80
    const-string v0, "javafx.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized loadLibrary(Ljava/lang/String;)V
    .registers 4

    .line 49
    const-class v1, Lcom/sun/glass/utils/NativeLibLoader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 51
    invoke-custom {}, call_site_3106("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/utils/NativeLibLoader;->lambda$loadLibrary$0()Ljava/lang/StackWalker;, ()Ljava/lang/StackWalker;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackWalker;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StackWalker;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibraryInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 55
    sget-object v0, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 57
    :cond_22
    monitor-exit v1

    return-void

    .line 49
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loadLibrary(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    const-class v1, Lcom/sun/glass/utils/NativeLibLoader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 62
    invoke-custom {}, call_site_523("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/utils/NativeLibLoader;->lambda$loadLibrary$1()Ljava/lang/StackWalker;, ()Ljava/lang/StackWalker;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackWalker;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StackWalker;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    invoke-static {p0, p1, v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibraryInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 66
    sget-object v0, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 68
    :cond_21
    monitor-exit v1

    return-void

    .line 60
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static loadLibraryFromResource(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .line 197
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sun/glass/utils/NativeLibLoader;->installLibraryFromResource(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method private static loadLibraryFullPath(Ljava/lang/String;)V
    .registers 6

    .line 335
    :try_start_0
    sget-boolean v0, Lcom/sun/glass/utils/NativeLibLoader;->usingModules:Z

    if-eqz v0, :cond_19

    .line 336
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "ignored"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    .line 397
    :catch_c
    move-exception v0

    .line 399
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1}, Ljava/lang/UnsatisfiedLinkError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/UnsatisfiedLinkError;

    throw v0

    .line 338
    :cond_19
    :try_start_19
    sget-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    if-nez v0, :cond_ac

    .line 341
    const-string v0, "NativeLibLoader.class"

    .line 342
    const-class v1, Lcom/sun/glass/utils/NativeLibLoader;

    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, "jrt:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 346
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/glass/utils/NativeLibLoader;->usingModules:Z

    .line 347
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "ignored"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_3c
    const-string v1, "jar:file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_57

    .line 350
    :cond_4d
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-custom {v0}, call_site_765("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Invalid URL for class: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_57
    const/4 v1, 0x4

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 355
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 358
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    const/4 v0, 0x0

    .line 360
    const-string v4, "Windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 361
    const-string v0, "../bin"

    .line 369
    :cond_83
    :goto_83
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1, v0}, call_site_1656("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001/\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 371
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    .line 374
    const-string v0, "Windows"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 375
    const-string v0, ""

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 376
    const-string v0, ".dll"

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    .line 386
    :cond_ac
    :goto_ac
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    sget-object v2, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    sget-object v3, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    invoke-custom {v2, p0, v3}, call_site_346("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_be} :catch_c

    move-result-object v1

    .line 389
    :try_start_bf
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 390
    sget-boolean v1, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v1, :cond_d3

    .line 391
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-custom {v0}, call_site_883("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Loaded \u0001 from relative path")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_bf .. :try_end_d3} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d3} :catch_c

    .line 401
    :cond_d3
    return-void

    .line 362
    :cond_d4
    :try_start_d4
    const-string v4, "Mac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 363
    const-string v0, "."

    goto :goto_83

    .line 364
    :cond_df
    const-string v4, "Linux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 365
    const-string v0, "."

    goto :goto_83

    .line 377
    :cond_ea
    const-string v0, "Mac"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 378
    const-string v0, "lib"

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 379
    const-string v0, ".dylib"

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    goto :goto_ac

    .line 380
    :cond_fb
    const-string v0, "Linux"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 381
    const-string v0, "lib"

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 382
    const-string v0, ".so"

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    goto :goto_ac

    .line 394
    :catch_10c
    move-exception v0

    .line 395
    throw v0
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_10e} :catch_c
.end method

.method private static loadLibraryInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibraryFullPath(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    .line 190
    :cond_3
    :goto_3
    return-void

    .line 132
    :catch_4
    move-exception v0

    .line 133
    sget-boolean v1, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v1, :cond_16

    sget-boolean v1, Lcom/sun/glass/utils/NativeLibLoader;->usingModules:Z

    if-nez v1, :cond_16

    .line 134
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v0}, call_site_1994("makeConcatWithConstants", (Ljava/lang/UnsatisfiedLinkError;)Ljava/lang/String;, "WARNING: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_16
    invoke-static {p0, p1, p2}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibraryFromResource(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    const-string v0, "java.library.path"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->initializePath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 147
    const/4 v0, 0x0

    :goto_23
    array-length v1, v2

    if-ge v0, v1, :cond_60

    .line 149
    :try_start_26
    aget-object v1, v2, v0

    .line 150
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-custom {v1, v3}, call_site_615("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 151
    :cond_36
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    new-instance v4, Ljava/io/File;

    invoke-custom {v1, v3}, call_site_604("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 154
    sget-boolean v1, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v1, :cond_3

    .line 155
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-custom {v3}, call_site_2394("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Loaded \u0001 from java.library.path")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_26 .. :try_end_5b} :catch_5c

    goto :goto_3

    .line 159
    :catch_5c
    move-exception v1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 166
    :cond_60
    :try_start_60
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 167
    sget-boolean v0, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v0, :cond_3

    .line 168
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p0}, call_site_3137("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "System.loadLibrary(\u0001) succeeded")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_60 .. :try_end_70} :catch_71

    goto :goto_3

    .line 171
    :catch_71
    move-exception v0

    .line 176
    const-string v1, "ios"

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string v1, "-"

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 178
    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :try_start_96
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_96 .. :try_end_99} :catch_9b

    goto/16 :goto_3

    .line 182
    :catch_9b
    move-exception v0

    .line 183
    throw v0

    .line 187
    :cond_9d
    throw v0
.end method
