.class Lcom/sun/glass/ui/win/WinSystemClipboard;
.super Lcom/sun/glass/ui/SystemClipboard;
.source "WinSystemClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;
    }
.end annotation


# static fields
.field static final RTFCharset:Ljava/lang/String; = "US-ASCII"

.field static final defaultCharset:Ljava/lang/String; = "UTF-16LE"

.field static final terminator:[B


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Lcom/sun/glass/ui/win/WinSystemClipboard;->initIDs()V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/sun/glass/ui/win/WinSystemClipboard;->terminator:[B

    return-void

    :array_c
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 48
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/SystemClipboard;-><init>(Ljava/lang/String;)V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/WinSystemClipboard;->ptr:J

    .line 49
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->create()V

    .line 50
    return-void
.end method

.method private fosSerialize(Ljava/lang/String;J)[B
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/win/WinSystemClipboard;->getLocalData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    instance-of v3, v0, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_1d

    .line 79
    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 80
    const-string v1, "text/html"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 81
    invoke-static {v0}, Lcom/sun/glass/ui/win/WinHTMLCodec;->encode([B)[B

    move-result-object v0

    .line 153
    :cond_1c
    :goto_1c
    return-object v0

    .line 84
    :cond_1d
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_96

    .line 85
    check-cast v0, Ljava/lang/String;

    const-string v2, "(\r\n|\r|\n)"

    const-string v3, "\r\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v2, "text/html"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 89
    :try_start_33
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 90
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/glass/ui/win/WinHTMLCodec;->encode([B)[B
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_4e} :catch_50

    move-result-object v0

    goto :goto_1c

    .line 95
    :catch_50
    move-exception v0

    move-object v0, v1

    .line 97
    goto :goto_1c

    .line 99
    :cond_53
    const-string v2, "text/rtf"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 102
    :try_start_5b
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_72
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5b .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_1c

    .line 107
    :catch_74
    move-exception v0

    move-object v0, v1

    .line 109
    goto :goto_1c

    .line 112
    :cond_77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 114
    :try_start_83
    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_8c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_83 .. :try_end_8c} :catch_11b

    .line 118
    :goto_8c
    sget-object v0, Lcom/sun/glass/ui/win/WinSystemClipboard;->terminator:[B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_1c

    .line 121
    :cond_96
    const-string v3, "application/x-java-file-list"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 122
    check-cast v0, [Ljava/lang/String;

    .line 123
    if-eqz v0, :cond_118

    array-length v3, v0

    if-lez v3, :cond_118

    .line 125
    array-length v5, v0

    move v3, v2

    move v4, v2

    :goto_a8
    if-ge v3, v5, :cond_b8

    aget-object v6, v0, v3

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 128
    :cond_b8
    add-int/lit8 v3, v4, 0x2

    .line 130
    :try_start_ba
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 131
    array-length v4, v0

    :goto_bf
    if-ge v2, v4, :cond_d4

    aget-object v5, v0, v2

    .line 132
    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 133
    sget-object v5, Lcom/sun/glass/ui/win/WinSystemClipboard;->terminator:[B

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    .line 135
    :cond_d4
    sget-object v0, Lcom/sun/glass/ui/win/WinSystemClipboard;->terminator:[B

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_dc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ba .. :try_end_dc} :catch_117

    move-result-object v0

    goto/16 :goto_1c

    .line 141
    :cond_df
    const-string v2, "application/x-java-rawimage"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 142
    check-cast v0, Lcom/sun/glass/ui/Pixels;

    .line 143
    if-eqz v0, :cond_118

    .line 145
    invoke-virtual {v0}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    .line 144
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 146
    invoke-virtual {v0}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v0}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v0}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto/16 :goto_1c

    .line 137
    :catch_117
    move-exception v0

    :cond_118
    move-object v0, v1

    .line 153
    goto/16 :goto_1c

    .line 115
    :catch_11b
    move-exception v0

    goto/16 :goto_8c
.end method

.method private static native initIDs()V
.end method

.method private native popBytes(Ljava/lang/String;J)[B
.end method

.method private native popMimesFromSystem()[Ljava/lang/String;
.end method

.method private native popSupportedSourceActions()I
.end method


# virtual methods
.method protected final close()V
    .registers 3

    .line 339
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->dispose()V

    .line 340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/WinSystemClipboard;->ptr:J

    .line 341
    return-void
.end method

.method protected native create()V
.end method

.method protected native dispose()V
.end method

.method protected final getPtr()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinSystemClipboard;->ptr:J

    return-wide v0
.end method

.method protected native isOwner()Z
.end method

.method protected final mimesFromSystem()[Ljava/lang/String;
    .registers 2

    .line 328
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->pop()Z

    move-result v0

    if-nez v0, :cond_8

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->popMimesFromSystem()[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method protected native pop()Z
.end method

.method protected final popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10

    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->pop()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v2

    .line 321
    :goto_b
    return-object v0

    .line 247
    :cond_c
    new-instance v0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->getMime()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->getIndex()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v3, v4, v5}, Lcom/sun/glass/ui/win/WinSystemClipboard;->popBytes(Ljava/lang/String;J)[B

    move-result-object v4

    .line 250
    if-eqz v4, :cond_ae

    .line 251
    const-string v0, "text/plain"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "text/uri-list"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 254
    :cond_30
    :try_start_30
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v4

    add-int/lit8 v3, v3, -0x2

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v4, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_b

    .line 255
    :catch_3c
    move-exception v0

    :cond_3d
    :goto_3d
    move-object v0, v2

    .line 321
    goto :goto_b

    .line 258
    :cond_3f
    const-string v0, "text/html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 260
    :try_start_47
    invoke-static {v4}, Lcom/sun/glass/ui/win/WinHTMLCodec;->decode([B)[B

    move-result-object v1

    .line 261
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_54} :catch_55

    goto :goto_b

    .line 262
    :catch_55
    move-exception v0

    goto :goto_3d

    .line 265
    :cond_57
    const-string v0, "text/rtf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 267
    :try_start_5f
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v4

    const-string v5, "US-ASCII"

    invoke-direct {v0, v4, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_68
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5f .. :try_end_68} :catch_69

    goto :goto_b

    .line 268
    :catch_69
    move-exception v0

    goto :goto_3d

    .line 271
    :cond_6b
    const-string v0, "application/x-java-file-list"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 273
    :try_start_73
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v4

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v4, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 274
    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_81
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_73 .. :try_end_81} :catch_11c

    move-result-object v0

    goto :goto_b

    .line 278
    :cond_83
    const-string v0, "application/x-java-rawimage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 279
    invoke-static {v4, v1, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 280
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    array-length v3, v4

    add-int/lit8 v3, v3, -0x8

    invoke-static {v4, v6, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v0

    goto/16 :goto_b

    .line 282
    :cond_a8
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto/16 :goto_b

    .line 286
    :cond_ae
    const-string v4, "text/uri-list"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    const-string v4, "text/plain"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 288
    :cond_be
    invoke-custom {v3}, call_site_3144("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001;locale")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->getIndex()I

    move-result v0

    int-to-long v6, v0

    invoke-direct {p0, v4, v6, v7}, Lcom/sun/glass/ui/win/WinSystemClipboard;->popBytes(Ljava/lang/String;J)[B

    move-result-object v4

    .line 289
    if-eqz v4, :cond_db

    .line 295
    :try_start_cd
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    const-string v7, "UTF-8"

    invoke-direct {v0, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_d8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cd .. :try_end_d8} :catch_da

    goto/16 :goto_b

    .line 296
    :catch_da
    move-exception v0

    .line 301
    :cond_db
    const-string v0, "text/uri-list"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 304
    const-string v0, "application/x-java-file-list"

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->popFromSystem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 305
    if-eqz v0, :cond_3d

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    :goto_f2
    array-length v3, v0

    if-ge v1, v3, :cond_116

    .line 309
    aget-object v3, v0, v1

    .line 310
    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_10a

    .line 313
    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_10a
    const-string v4, "file:/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    .line 317
    :cond_116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 275
    :catch_11c
    move-exception v0

    goto/16 :goto_3d
.end method

.method protected native push([Ljava/lang/Object;I)V
.end method

.method protected native pushTargetActionToSystem(I)V
.end method

.method protected final pushToSystem(Ljava/util/HashMap;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 224
    new-instance v2, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;

    invoke-direct {v2}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;-><init>()V

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-virtual {v2, v0}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->parse(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->isInMemoryFile()Z

    move-result v4

    if-nez v4, :cond_12

    .line 231
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 234
    :cond_2b
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/glass/ui/win/WinSystemClipboard;->push([Ljava/lang/Object;I)V

    .line 235
    return-void
.end method

.method protected supportedSourceActionsFromSystem()I
    .registers 2

    .line 347
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->pop()Z

    move-result v0

    if-nez v0, :cond_8

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->popSupportedSourceActions()I

    move-result v0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 335
    const-string v0, "Windows System Clipboard"

    return-object v0
.end method
