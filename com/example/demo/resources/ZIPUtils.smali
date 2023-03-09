.class public Lcom/example/demo/resources/ZIPUtils;
.super Ljava/lang/Object;
.source "ZIPUtils.java"


# static fields
.field private static proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static completeDownload(Ljava/io/File;Ljava/lang/String;Ljava/net/Proxy;ILcom/example/demo/resources/ProgressListener;I)V
    .registers 29
    .param p0, "outputFile"  # Ljava/io/File;
    .param p1, "urlHost"  # Ljava/lang/String;
    .param p2, "proxy"  # Ljava/net/Proxy;
    .param p3, "countBytes"  # I
    .param p4, "progressListener"  # Lcom/example/demo/resources/ProgressListener;
    .param p5, "realSize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    .local v16, "url":Ljava/net/URL;
    if-nez p2, :cond_96

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 150
    .local v11, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 151
    const-string v2, "Range"

    invoke-custom/range {p3 .. p3}, call_site_2409("makeConcatWithConstants", (I)Ljava/lang/String;, "bytes=\u0001-")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v13, 0x0

    .line 155
    .local v13, "totalByteRead":I
    :try_start_23
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_72

    .line 156
    .local v12, "in":Ljava/io/BufferedInputStream;
    const/16 v17, 0x0

    .line 159
    .local v17, "var10":Ljava/lang/Throwable;
    :try_start_2e
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_36} :catch_65
    .catchall {:try_start_2e .. :try_end_36} :catchall_69

    .line 160
    .local v10, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 163
    .local v18, "var12":Ljava/lang/Throwable;
    const/16 v2, 0x400

    :try_start_3a
    new-array v9, v2, [B

    .line 166
    .local v9, "dataBuffer":[B
    :goto_3c
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v12, v9, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .local v8, "bytesRead":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_9a

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v10, v9, v2, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 168
    add-int/2addr v13, v8

    .line 169
    add-int v2, p3, v13

    int-to-double v2, v2

    move/from16 v0, p5

    int-to-double v4, v0

    div-double/2addr v2, v4

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Lcom/example/demo/resources/ProgressListener;->progressUpdated(D)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_57} :catch_58
    .catchall {:try_start_3a .. :try_end_57} :catchall_5c

    goto :goto_3c

    .line 171
    .end local v8  # "bytesRead":I
    .end local v9  # "dataBuffer":[B
    :catch_58
    move-exception v21

    .line 172
    .local v21, "var38":Ljava/lang/Throwable;
    move-object/from16 v18, v21

    .line 173
    :try_start_5b
    throw v21
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 175
    .end local v21  # "var38":Ljava/lang/Throwable;
    :catchall_5c
    move-exception v2

    if-eqz v10, :cond_64

    .line 176
    if-eqz v18, :cond_c8

    .line 178
    :try_start_61
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_bf
    .catchall {:try_start_61 .. :try_end_64} :catchall_69

    .line 187
    :cond_64
    :goto_64
    :try_start_64
    throw v2
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_65} :catch_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_69

    .line 188
    .end local v10  # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18  # "var12":Ljava/lang/Throwable;
    :catch_65
    move-exception v22

    .line 189
    .local v22, "var40":Ljava/lang/Throwable;
    move-object/from16 v17, v22

    .line 190
    :try_start_68
    throw v22
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 192
    .end local v22  # "var40":Ljava/lang/Throwable;
    :catchall_69
    move-exception v2

    if-eqz v12, :cond_71

    .line 193
    if-eqz v17, :cond_d9

    .line 195
    :try_start_6e
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_d0
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    .line 204
    :cond_71
    :goto_71
    :try_start_71
    throw v2
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_72} :catch_72

    .line 205
    .end local v12  # "in":Ljava/io/BufferedInputStream;
    .end local v17  # "var10":Ljava/lang/Throwable;
    :catch_72
    move-exception v2

    .line 208
    :cond_73
    :goto_73
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v14, v2

    .line 209
    .local v14, "size":J
    int-to-long v2, v13

    cmp-long v2, v2, v14

    if-eqz v2, :cond_95

    .line 210
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-custom {v13, v14, v15}, call_site_2797("makeConcatWithConstants", (IJ)Ljava/lang/String;, "rebreak connect... Downloaded: \u0001  of \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    add-int v5, p3, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/example/demo/resources/ZIPUtils;->completeDownload(Ljava/io/File;Ljava/lang/String;Ljava/net/Proxy;ILcom/example/demo/resources/ProgressListener;I)V

    .line 214
    :cond_95
    return-void

    .end local v11  # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v13  # "totalByteRead":I
    .end local v14  # "size":J
    :cond_96
    move-object/from16 v2, p2

    .line 149
    goto/16 :goto_d

    .line 175
    .restart local v8  # "bytesRead":I
    .restart local v9  # "dataBuffer":[B
    .restart local v10  # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11  # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v12  # "in":Ljava/io/BufferedInputStream;
    .restart local v13  # "totalByteRead":I
    .restart local v17  # "var10":Ljava/lang/Throwable;
    .restart local v18  # "var12":Ljava/lang/Throwable;
    :cond_9a
    if-eqz v10, :cond_a1

    .line 176
    if-eqz v18, :cond_bb

    .line 178
    :try_start_9e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_b2
    .catchall {:try_start_9e .. :try_end_a1} :catchall_69

    .line 192
    :cond_a1
    :goto_a1
    if-eqz v12, :cond_73

    .line 193
    if-eqz v17, :cond_cc

    .line 195
    :try_start_a5
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a8} :catch_a9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_72

    goto :goto_73

    .line 196
    :catch_a9
    move-exception v19

    .line 197
    .local v19, "var36":Ljava/lang/Throwable;
    :try_start_aa
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b1} :catch_72

    goto :goto_73

    .line 179
    .end local v19  # "var36":Ljava/lang/Throwable;
    :catch_b2
    move-exception v20

    .line 180
    .local v20, "var37":Ljava/lang/Throwable;
    :try_start_b3
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a1

    .line 183
    .end local v20  # "var37":Ljava/lang/Throwable;
    :cond_bb
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a1

    .line 179
    .end local v8  # "bytesRead":I
    .end local v9  # "dataBuffer":[B
    :catch_bf
    move-exception v20

    .line 180
    .restart local v20  # "var37":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_64

    .line 183
    .end local v20  # "var37":Ljava/lang/Throwable;
    :cond_c8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_cb} :catch_65
    .catchall {:try_start_b3 .. :try_end_cb} :catchall_69

    goto :goto_64

    .line 200
    .restart local v8  # "bytesRead":I
    .restart local v9  # "dataBuffer":[B
    :cond_cc
    :try_start_cc
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_73

    .line 196
    .end local v8  # "bytesRead":I
    .end local v9  # "dataBuffer":[B
    .end local v10  # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18  # "var12":Ljava/lang/Throwable;
    :catch_d0
    move-exception v19

    .line 197
    .restart local v19  # "var36":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_71

    .line 200
    .end local v19  # "var36":Ljava/lang/Throwable;
    :cond_d9
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_dc} :catch_72

    goto :goto_71
.end method

.method public static copyInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "in"  # Ljava/io/InputStream;
    .param p1, "out"  # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 243
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    :goto_8
    if-ltz v1, :cond_13

    .line 244
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 243
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_8

    .line 247
    :cond_13
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 248
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 249
    return-void
.end method

.method public static downloadAndExtractZIP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p0, "urlToZip"  # Ljava/lang/String;
    .param p1, "pathOutput"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 219
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 221
    .local v3, "in":Ljava/io/InputStream;
    const-string v7, "CP866"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 222
    .local v0, "CP866":Ljava/nio/charset/Charset;
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v3, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 223
    .local v6, "zipIn":Ljava/util/zip/ZipInputStream;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(I)V

    .line 224
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 225
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v4, "outputFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 227
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-custom {p1}, call_site_562("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "created output folder for zip: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    :cond_40
    :goto_40
    if-eqz v2, :cond_78

    .line 231
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_67

    .line 232
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v6, v7}, Lcom/example/demo/resources/ZIPUtils;->writeFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 230
    :goto_62
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    goto :goto_40

    .line 234
    :cond_67
    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_62

    .line 238
    :cond_78
    return-void
.end method

.method public static downloadAndExtractZIP(Ljava/lang/String;Ljava/lang/String;Lcom/example/demo/resources/ProgressListener;Lcom/example/demo/resources/UnpackingProgressListener;)V
    .registers 40
    .param p0, "urlToZip"  # Ljava/lang/String;
    .param p1, "pathOutput"  # Ljava/lang/String;
    .param p2, "progressListener"  # Lcom/example/demo/resources/ProgressListener;
    .param p3, "unpackingProgressListener"  # Lcom/example/demo/resources/UnpackingProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v20, "outputFolder":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 32
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-custom/range {p1 .. p1}, call_site_563("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "created output folder for zip: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    :cond_18
    const-string v5, "res"

    const-string v6, ".gtr"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 36
    .local v4, "zipTemp":Ljava/io/File;
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v21, "url":Ljava/net/URL;
    sget-object v5, Lcom/example/demo/resources/ZIPUtils;->proxy:Ljava/net/Proxy;

    if-eqz v5, :cond_ed

    .line 39
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 40
    sget-object v5, Lcom/example/demo/resources/ZIPUtils;->proxy:Ljava/net/Proxy;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v17

    check-cast v17, Ljava/net/HttpURLConnection;

    .line 45
    .local v17, "httpURLConnection":Ljava/net/HttpURLConnection;
    :goto_3d
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 46
    .local v9, "sizeOfFile":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-custom {v9}, call_site_1943("makeConcatWithConstants", (I)Ljava/lang/String;, "size of file: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    const/4 v7, 0x0

    .line 51
    .local v7, "totalByteRead":I
    :try_start_4b
    new-instance v19, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_56} :catch_a7

    .line 52
    .local v19, "in":Ljava/io/BufferedInputStream;
    const/16 v24, 0x0

    .line 55
    .local v24, "var11":Ljava/lang/Throwable;
    :try_start_58
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5f} :catch_9a
    .catchall {:try_start_58 .. :try_end_5f} :catchall_9e

    .line 56
    .local v16, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v25, 0x0

    .line 59
    .local v25, "var13":Ljava/lang/Throwable;
    const/16 v5, 0x400

    :try_start_63
    new-array v11, v5, [B

    .line 60
    .local v11, "dataBuffer":[B
    const-wide/16 v12, 0x0

    .line 62
    .local v12, "currentPercent":D
    :goto_67
    const/4 v5, 0x0

    const/16 v6, 0x400

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v18

    .local v18, "i":I
    const/4 v5, -0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_f5

    .line 63
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v11, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 64
    add-int v7, v7, v18

    .line 65
    int-to-double v0, v7

    move-wide/from16 v32, v0

    int-to-double v0, v9

    move-wide/from16 v34, v0

    div-double v12, v32, v34

    .line 66
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/example/demo/resources/ProgressListener;->progressUpdated(D)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_8c} :catch_8d
    .catchall {:try_start_63 .. :try_end_8c} :catchall_91

    goto :goto_67

    .line 68
    .end local v11  # "dataBuffer":[B
    .end local v12  # "currentPercent":D
    .end local v18  # "i":I
    :catch_8d
    move-exception v28

    .line 69
    .local v28, "var47":Ljava/lang/Throwable;
    move-object/from16 v25, v28

    .line 70
    :try_start_90
    throw v28
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    .line 72
    .end local v28  # "var47":Ljava/lang/Throwable;
    :catchall_91
    move-exception v5

    if-eqz v16, :cond_99

    .line 73
    if-eqz v25, :cond_124

    .line 75
    :try_start_96
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_99} :catch_11a
    .catchall {:try_start_96 .. :try_end_99} :catchall_9e

    .line 84
    :cond_99
    :goto_99
    :try_start_99
    throw v5
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9a} :catch_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9e

    .line 85
    .end local v16  # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v25  # "var13":Ljava/lang/Throwable;
    :catch_9a
    move-exception v29

    .line 86
    .local v29, "var49":Ljava/lang/Throwable;
    move-object/from16 v24, v29

    .line 87
    :try_start_9d
    throw v29
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    .line 89
    .end local v29  # "var49":Ljava/lang/Throwable;
    :catchall_9e
    move-exception v5

    if-eqz v19, :cond_a6

    .line 90
    if-eqz v24, :cond_138

    .line 92
    :try_start_a3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_12e
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    .line 101
    :cond_a6
    :goto_a6
    :try_start_a6
    throw v5
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a7} :catch_a7

    .line 102
    .end local v19  # "in":Ljava/io/BufferedInputStream;
    .end local v24  # "var11":Ljava/lang/Throwable;
    :catch_a7
    move-exception v5

    .line 105
    :cond_a8
    :goto_a8
    if-eq v7, v9, :cond_bc

    .line 106
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-custom {v7, v9}, call_site_275("makeConcatWithConstants", (II)Ljava/lang/String;, "break connect... Downloaded: \u0001  of \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v6, Lcom/example/demo/resources/ZIPUtils;->proxy:Ljava/net/Proxy;

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lcom/example/demo/resources/ZIPUtils;->completeDownload(Ljava/io/File;Ljava/lang/String;Ljava/net/Proxy;ILcom/example/demo/resources/ProgressListener;I)V

    .line 110
    :cond_bc
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-custom {v7, v9}, call_site_817("makeConcatWithConstants", (II)Ljava/lang/String;, "downloaded bytes: \u0001 of \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    const-string v5, "CP866"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    .line 112
    .local v10, "CP866":Ljava/nio/charset/Charset;
    new-instance v31, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v31

    invoke-direct {v0, v4, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 113
    .local v31, "zipFile":Ljava/util/zip/ZipFile;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v30, "zipEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v14

    .line 116
    .local v14, "entries":Ljava/util/Enumeration;
    :goto_db
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 117
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 42
    .end local v7  # "totalByteRead":I
    .end local v9  # "sizeOfFile":I
    .end local v10  # "CP866":Ljava/nio/charset/Charset;
    .end local v14  # "entries":Ljava/util/Enumeration;
    .end local v17  # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v30  # "zipEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v31  # "zipFile":Ljava/util/zip/ZipFile;
    :cond_ed
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    check-cast v17, Ljava/net/HttpURLConnection;

    .restart local v17  # "httpURLConnection":Ljava/net/HttpURLConnection;
    goto/16 :goto_3d

    .line 72
    .restart local v7  # "totalByteRead":I
    .restart local v9  # "sizeOfFile":I
    .restart local v11  # "dataBuffer":[B
    .restart local v12  # "currentPercent":D
    .restart local v16  # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v18  # "i":I
    .restart local v19  # "in":Ljava/io/BufferedInputStream;
    .restart local v24  # "var11":Ljava/lang/Throwable;
    .restart local v25  # "var13":Ljava/lang/Throwable;
    :cond_f5
    if-eqz v16, :cond_fc

    .line 73
    if-eqz v25, :cond_116

    .line 75
    :try_start_f9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_fc} :catch_10d
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_9e

    .line 89
    :cond_fc
    :goto_fc
    if-eqz v19, :cond_a8

    .line 90
    if-eqz v24, :cond_129

    .line 92
    :try_start_100
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_103} :catch_104
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_a7

    goto :goto_a8

    .line 93
    :catch_104
    move-exception v26

    .line 94
    .local v26, "var45":Ljava/lang/Throwable;
    :try_start_105
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10c} :catch_a7

    goto :goto_a8

    .line 76
    .end local v26  # "var45":Ljava/lang/Throwable;
    :catch_10d
    move-exception v27

    .line 77
    .local v27, "var46":Ljava/lang/Throwable;
    :try_start_10e
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_fc

    .line 80
    .end local v27  # "var46":Ljava/lang/Throwable;
    :cond_116
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    goto :goto_fc

    .line 76
    .end local v11  # "dataBuffer":[B
    .end local v12  # "currentPercent":D
    .end local v18  # "i":I
    :catch_11a
    move-exception v27

    .line 77
    .restart local v27  # "var46":Ljava/lang/Throwable;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_99

    .line 80
    .end local v27  # "var46":Ljava/lang/Throwable;
    :cond_124
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_127} :catch_9a
    .catchall {:try_start_10e .. :try_end_127} :catchall_9e

    goto/16 :goto_99

    .line 97
    .restart local v11  # "dataBuffer":[B
    .restart local v12  # "currentPercent":D
    .restart local v18  # "i":I
    :cond_129
    :try_start_129
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_a8

    .line 93
    .end local v11  # "dataBuffer":[B
    .end local v12  # "currentPercent":D
    .end local v16  # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18  # "i":I
    .end local v25  # "var13":Ljava/lang/Throwable;
    :catch_12e
    move-exception v26

    .line 94
    .restart local v26  # "var45":Ljava/lang/Throwable;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_a6

    .line 97
    .end local v26  # "var45":Ljava/lang/Throwable;
    :cond_138
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_13b} :catch_a7

    goto/16 :goto_a6

    .line 120
    .end local v19  # "in":Ljava/io/BufferedInputStream;
    .end local v24  # "var11":Ljava/lang/Throwable;
    .restart local v10  # "CP866":Ljava/nio/charset/Charset;
    .restart local v14  # "entries":Ljava/util/Enumeration;
    .restart local v30  # "zipEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v31  # "zipFile":Ljava/util/zip/ZipFile;
    :cond_13d
    const/16 v18, 0x0

    .restart local v18  # "i":I
    :goto_13f
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_1a2

    .line 121
    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 122
    .local v15, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_191

    .line 123
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v32, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v32 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v5, v6}, Lcom/example/demo/resources/ZIPUtils;->writeFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    :goto_179
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v34, v0

    div-double v22, v32, v34

    .line 129
    .local v22, "unpackingProgress":D
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/example/demo/resources/UnpackingProgressListener;->progressUpdated(D)V

    .line 120
    add-int/lit8 v18, v18, 0x1

    goto :goto_13f

    .line 125
    .end local v22  # "unpackingProgress":D
    :cond_191
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_179

    .line 132
    .end local v15  # "entry":Ljava/util/zip/ZipEntry;
    :cond_1a2
    invoke-virtual/range {v31 .. v31}, Ljava/util/zip/ZipFile;->close()V

    .line 133
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1b5

    .line 135
    :try_start_1ab
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1b2} :catch_1b8

    .line 140
    :goto_1b2
    :try_start_1b2
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1b5} :catch_1b6

    .line 145
    :cond_1b5
    :goto_1b5
    return-void

    .line 141
    :catch_1b6
    move-exception v5

    goto :goto_1b5

    .line 136
    :catch_1b8
    move-exception v5

    goto :goto_1b2
.end method

.method public static setProxy(Ljava/net/Proxy;)V
    .registers 1
    .param p0, "proxy"  # Ljava/net/Proxy;

    .line 26
    sput-object p0, Lcom/example/demo/resources/ZIPUtils;->proxy:Ljava/net/Proxy;

    .line 27
    return-void
.end method

.method private static writeFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "in"  # Ljava/io/InputStream;
    .param p1, "out"  # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 255
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-ltz v1, :cond_f

    .line 256
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 259
    :cond_f
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 260
    return-void
.end method
