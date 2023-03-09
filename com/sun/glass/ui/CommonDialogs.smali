.class public Lcom/sun/glass/ui/CommonDialogs;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/CommonDialogs$Type;,
        Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;,
        Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method private static convertFolder(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 231
    if-eqz p0, :cond_1e

    .line 232
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 234
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 243
    :goto_c
    return-object v0

    .line 235
    :catch_d
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to get a canonical path for folder"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 239
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Folder parameter must be a valid folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1e
    const-string v0, ""

    goto :goto_c
.end method

.method private static convertTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 247
    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    const-string p0, ""

    goto :goto_2
.end method

.method protected static createFileChooserResult([Ljava/lang/String;[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .registers 8

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_18

    aget-object v3, p0, v0

    .line 256
    if-eqz v3, :cond_15

    .line 257
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 260
    :cond_18
    new-instance v2, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    .line 261
    if-eqz p1, :cond_21

    if-ltz p2, :cond_21

    array-length v0, p1

    if-lt p2, v0, :cond_26

    .line 262
    :cond_21
    const/4 v0, 0x0

    :goto_22
    invoke-direct {v2, v1, v0}, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;-><init>(Ljava/util/List;Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)V

    .line 260
    return-object v2

    .line 262
    :cond_26
    aget-object v0, p1, p2

    goto :goto_22
.end method

.method public static showFileChooser(Lcom/sun/glass/ui/Window;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/Window;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;",
            ">;I)",
            "Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 191
    invoke-static {p1}, Lcom/sun/glass/ui/CommonDialogs;->convertFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 192
    if-nez p2, :cond_50

    .line 193
    const-string v4, ""

    .line 196
    :goto_b
    if-eqz p4, :cond_18

    const/4 v1, 0x1

    if-eq p4, v1, :cond_18

    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Type parameter must be equal to one of the constants from Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_18
    const/4 v8, 0x0

    .line 201
    if-eqz p6, :cond_2a

    .line 202
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    move-object v8, v1

    .line 205
    :cond_2a
    if-eqz p6, :cond_3c

    .line 206
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    if-ltz p7, :cond_3c

    .line 208
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p7

    if-lt v0, v1, :cond_4d

    .line 209
    :cond_3c
    const/4 v9, 0x0

    .line 212
    :goto_3d
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    .line 213
    invoke-static {p3}, Lcom/sun/glass/ui/CommonDialogs;->convertTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/sun/glass/ui/Application;->staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    move-result-object v1

    .line 212
    return-object v1

    :cond_4d
    move/from16 v9, p7

    goto :goto_3d

    :cond_50
    move-object v4, p2

    goto :goto_b
.end method

.method public static showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 226
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 227
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/glass/ui/CommonDialogs;->convertFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/sun/glass/ui/CommonDialogs;->convertTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/sun/glass/ui/Application;->staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
