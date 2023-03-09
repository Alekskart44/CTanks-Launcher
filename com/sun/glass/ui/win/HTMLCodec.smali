.class Lcom/sun/glass/ui/win/HTMLCodec;
.super Ljava/io/InputStream;
.source "WinHTMLCodec.java"


# static fields
.field public static final BYTE_BUFFER_LEN:I = 0x2000

.field public static final CHAR_BUFFER_LEN:I = 0xaaa

.field public static final DEF_SOURCE_URL:Ljava/lang/String; = "about:blank"

.field public static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final END_FRAGMENT:Ljava/lang/String; = "EndFragment:"

.field public static final END_FRAGMENT_CMT:Ljava/lang/String; = "<!--EndFragment-->"

.field public static final END_HTML:Ljava/lang/String; = "EndHTML:"

.field public static final END_SELECTION:Ljava/lang/String; = "EndSelection:"

.field public static final EOLN:Ljava/lang/String; = "\r\n"

.field private static final FAILURE_MSG:Ljava/lang/String; = "Unable to parse HTML description: "

.field private static final INVALID_MSG:Ljava/lang/String; = " invalid"

.field private static final PADDED_WIDTH:I = 0xa

.field public static final SOURCE_URL:Ljava/lang/String; = "SourceURL:"

.field public static final START_FRAGMENT:Ljava/lang/String; = "StartFragment:"

.field public static final START_FRAGMENT_CMT:Ljava/lang/String; = "<!--StartFragment-->"

.field public static final START_HTML:Ljava/lang/String; = "StartHTML:"

.field public static final START_SELECTION:Ljava/lang/String; = "StartSelection:"

.field public static final VERSION:Ljava/lang/String; = "Version:"

.field private static final VERSION_NUM:Ljava/lang/String; = "1.0"


# instance fields
.field private final bufferedStream:Ljava/io/BufferedInputStream;

.field private closed:Z

.field private descriptionParsed:Z

.field private iEndOffset:J

.field private iFragEnd:J

.field private iFragStart:J

.field private iHTMLEnd:J

.field private iHTMLStart:J

.field private iReadCount:J

.field private iSelEnd:J

.field private iSelStart:J

.field private iStartOffset:J

.field private readMode:Lcom/sun/glass/ui/win/EHTMLReadMode;

.field private stBaseURL:Ljava/lang/String;

.field private stVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/sun/glass/ui/win/EHTMLReadMode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 247
    iput-boolean v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->descriptionParsed:Z

    .line 248
    iput-boolean v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->closed:Z

    .line 283
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->bufferedStream:Ljava/io/BufferedInputStream;

    .line 284
    iput-object p2, p0, Lcom/sun/glass/ui/win/HTMLCodec;->readMode:Lcom/sun/glass/ui/win/EHTMLReadMode;

    .line 285
    return-void
.end method

.method public static convertToHTMLFormat([B)[B
    .registers 12

    const/4 v4, -0x1

    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 156
    const-string v1, ""

    .line 157
    const-string v0, ""

    .line 161
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 163
    const-string v3, "<HTML"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_2d

    .line 164
    const-string v1, "<HTML>"

    .line 165
    const-string v0, "</HTML>"

    .line 166
    const-string v3, "<BODY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_2d

    .line 167
    invoke-custom {v1}, call_site_417("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001<BODY>")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 168
    invoke-custom {v0}, call_site_2361("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "</BODY>\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 171
    :cond_2d
    invoke-custom {v1}, call_site_2961("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001<!--StartFragment-->")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 172
    invoke-custom {v0}, call_site_1106("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "<!--EndFragment-->\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 175
    const-string v2, "about:blank"

    .line 176
    const-string v3, "Version:"

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "1.0"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "StartHTML:"

    .line 178
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "EndHTML:"

    .line 179
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "StartFragment:"

    .line 180
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "EndFragment:"

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "SourceURL:"

    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 185
    array-length v5, p0

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<!--StartFragment-->"

    .line 190
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    const-string v8, "Version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v8, "StartHTML:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {v3, v10}, Lcom/sun/glass/ui/win/HTMLCodec;->toPaddedString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v3, "\r\n"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v3, "EndHTML:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {v6, v10}, Lcom/sun/glass/ui/win/HTMLCodec;->toPaddedString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v3, "\r\n"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v3, "StartFragment:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {v4, v10}, Lcom/sun/glass/ui/win/HTMLCodec;->toPaddedString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v3, "\r\n"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v3, "EndFragment:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {v5, v10}, Lcom/sun/glass/ui/win/HTMLCodec;->toPaddedString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v3, "\r\n"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v3, "SourceURL:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v2, "\r\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :try_start_11b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 224
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11b .. :try_end_12a} :catch_14c

    move-result-object v2

    .line 229
    array-length v0, v1

    array-length v3, p0

    add-int/2addr v0, v3

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 232
    array-length v3, v1

    invoke-static {v1, v9, v0, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    array-length v3, v1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v9, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    array-length v1, v1

    array-length v3, p0

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    array-length v3, v2

    invoke-static {v2, v9, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v9, v0, v1

    .line 240
    :goto_14b
    return-object v0

    .line 225
    :catch_14c
    move-exception v0

    .line 226
    const/4 v0, 0x0

    goto :goto_14b
.end method

.method private parseDescription()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v14, 0x1

    const/4 v2, 0x0

    const-wide/16 v12, -0x1

    .line 308
    iput-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->stBaseURL:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->stVersion:Ljava/lang/String;

    .line 313
    iput-wide v12, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelStart:J

    iput-wide v12, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelEnd:J

    iput-wide v12, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragStart:J

    iput-wide v12, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragEnd:J

    iput-wide v12, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLStart:J

    iput-wide v12, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLEnd:J

    .line 320
    iget-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->bufferedStream:Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 321
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "Version:"

    aput-object v0, v4, v2

    const-string v0, "StartHTML:"

    aput-object v0, v4, v14

    const/4 v0, 0x2

    const-string v1, "EndHTML:"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "StartFragment:"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "EndFragment:"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "StartSelection:"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "EndSelection:"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string v1, "SourceURL:"

    aput-object v1, v4, v0

    .line 333
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/sun/glass/ui/win/HTMLCodec;->bufferedStream:Ljava/io/BufferedInputStream;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v1, 0xaaa

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 340
    const-wide/16 v0, 0x0

    .line 341
    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v6, v3

    .line 342
    array-length v8, v4

    move v3, v2

    .line 345
    :goto_61
    if-ge v3, v8, :cond_69

    .line 346
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 347
    if-nez v9, :cond_c1

    .line 394
    :cond_69
    iget-wide v4, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLStart:J

    cmp-long v3, v12, v4

    if-nez v3, :cond_71

    .line 395
    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLStart:J

    .line 396
    :cond_71
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragStart:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_7b

    .line 397
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLStart:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragStart:J

    .line 398
    :cond_7b
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragEnd:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_85

    .line 399
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLEnd:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragEnd:J

    .line 400
    :cond_85
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelStart:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_8f

    .line 401
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragStart:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelStart:J

    .line 402
    :cond_8f
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelEnd:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_99

    .line 403
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragEnd:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelEnd:J

    .line 406
    :cond_99
    sget-object v0, Lcom/sun/glass/ui/win/HTMLCodec$1;->$SwitchMap$com$sun$glass$ui$win$EHTMLReadMode:[I

    iget-object v1, p0, Lcom/sun/glass/ui/win/HTMLCodec;->readMode:Lcom/sun/glass/ui/win/EHTMLReadMode;

    invoke-virtual {v1}, Lcom/sun/glass/ui/win/EHTMLReadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_170

    .line 417
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelStart:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iStartOffset:J

    .line 418
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelEnd:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iEndOffset:J

    .line 422
    :goto_ae
    iget-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->bufferedStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 423
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iStartOffset:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_143

    .line 424
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to parse HTML description: invalid HTML format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_c1
    :goto_c1
    if-ge v3, v8, :cond_e8

    .line 352
    aget-object v10, v4, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_ce

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 355
    :cond_ce
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 356
    aget-object v10, v4, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 357
    if-eqz v9, :cond_e8

    .line 359
    packed-switch v3, :pswitch_data_178

    .line 345
    :cond_e8
    :goto_e8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_61

    .line 361
    :pswitch_ec  #0x0
    :try_start_ec
    iput-object v9, p0, Lcom/sun/glass/ui/win/HTMLCodec;->stVersion:Ljava/lang/String;
    :try_end_ee
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_ee} :catch_ef

    goto :goto_e8

    .line 385
    :catch_ef
    move-exception v0

    .line 386
    new-instance v1, Ljava/io/IOException;

    aget-object v2, v4, v3

    invoke-custom {v2, v0}, call_site_544("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;, "Unable to parse HTML description: \u0001 value \u0001 invalid")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :pswitch_fc  #0x1
    :try_start_fc
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLStart:J

    goto :goto_e8

    .line 367
    :pswitch_104  #0x2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLEnd:J

    goto :goto_e8

    .line 370
    :pswitch_10c  #0x3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragStart:J

    goto :goto_e8

    .line 373
    :pswitch_114  #0x4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragEnd:J

    goto :goto_e8

    .line 376
    :pswitch_11c  #0x5
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelStart:J

    goto :goto_e8

    .line 379
    :pswitch_124  #0x6
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iSelEnd:J

    goto :goto_e8

    .line 382
    :pswitch_12c  #0x7
    iput-object v9, p0, Lcom/sun/glass/ui/win/HTMLCodec;->stBaseURL:Ljava/lang/String;
    :try_end_12e
    .catch Ljava/lang/NumberFormatException; {:try_start_fc .. :try_end_12e} :catch_ef

    goto :goto_e8

    .line 408
    :pswitch_12f  #0x1
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLStart:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iStartOffset:J

    .line 409
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iHTMLEnd:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iEndOffset:J

    goto/16 :goto_ae

    .line 412
    :pswitch_139  #0x2
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragStart:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iStartOffset:J

    .line 413
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iFragEnd:J

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iEndOffset:J

    goto/16 :goto_ae

    :cond_143
    move v0, v2

    .line 428
    :goto_144
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iStartOffset:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_159

    .line 429
    int-to-long v2, v0

    iget-object v1, p0, Lcom/sun/glass/ui/win/HTMLCodec;->bufferedStream:Ljava/io/BufferedInputStream;

    iget-wide v4, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iStartOffset:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_144

    .line 432
    :cond_159
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iReadCount:J

    .line 434
    iget-wide v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iStartOffset:J

    iget-wide v2, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iReadCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16c

    .line 435
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to parse HTML description: Byte stream ends in description."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_16c
    iput-boolean v14, p0, Lcom/sun/glass/ui/win/HTMLCodec;->descriptionParsed:Z

    .line 438
    return-void

    .line 406
    nop

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_12f  #00000001
        :pswitch_139  #00000002
    .end packed-switch

    .line 359
    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_ec  #00000000
        :pswitch_fc  #00000001
        :pswitch_104  #00000002
        :pswitch_10c  #00000003
        :pswitch_114  #00000004
        :pswitch_11c  #00000005
        :pswitch_124  #00000006
        :pswitch_12c  #00000007
    .end packed-switch
.end method

.method private static toPaddedString(II)Ljava/lang/String;
    .registers 5

    .line 114
    invoke-custom {p0}, call_site_58("makeConcatWithConstants", (I)Ljava/lang/String;, "\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 116
    if-ltz p0, :cond_24

    if-ge v1, p1, :cond_24

    .line 117
    sub-int v1, p1, v1

    new-array v1, v1, [C

    .line 118
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 119
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_24
    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->closed:Z

    if-nez v0, :cond_d

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->closed:Z

    .line 463
    iget-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->bufferedStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 465
    :cond_d
    monitor-exit p0

    return-void

    .line 461
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBaseURL()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->descriptionParsed:Z

    if-nez v0, :cond_8

    .line 290
    invoke-direct {p0}, Lcom/sun/glass/ui/win/HTMLCodec;->parseDescription()V

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->stBaseURL:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 289
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->descriptionParsed:Z

    if-nez v0, :cond_8

    .line 297
    invoke-direct {p0}, Lcom/sun/glass/ui/win/HTMLCodec;->parseDescription()V

    .line 299
    :cond_8
    iget-object v0, p0, Lcom/sun/glass/ui/win/HTMLCodec;->stVersion:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 296
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 441
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/sun/glass/ui/win/HTMLCodec;->closed:Z

    if-eqz v1, :cond_11

    .line 442
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    .line 441
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :cond_11
    :try_start_11
    iget-boolean v1, p0, Lcom/sun/glass/ui/win/HTMLCodec;->descriptionParsed:Z

    if-nez v1, :cond_18

    .line 446
    invoke-direct {p0}, Lcom/sun/glass/ui/win/HTMLCodec;->parseDescription()V

    .line 448
    :cond_18
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iEndOffset:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2a

    iget-wide v2, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iReadCount:J

    iget-wide v4, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iEndOffset:J
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_e

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2a

    .line 457
    :cond_28
    :goto_28
    monitor-exit p0

    return v0

    .line 452
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/sun/glass/ui/win/HTMLCodec;->bufferedStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 453
    if-eq v1, v0, :cond_28

    .line 456
    iget-wide v2, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iReadCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/glass/ui/win/HTMLCodec;->iReadCount:J
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_e

    move v0, v1

    .line 457
    goto :goto_28
.end method
