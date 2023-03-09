.class final Lcom/sun/glass/ui/win/WinHTMLCodec;
.super Ljava/lang/Object;
.source "WinHTMLCodec.java"


# static fields
.field public static final defaultCharset:Ljava/lang/String; = "UTF-8"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .registers 5

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 56
    new-instance v1, Lcom/sun/glass/ui/win/HTMLCodec;

    sget-object v2, Lcom/sun/glass/ui/win/EHTMLReadMode;->HTML_READ_SELECTION:Lcom/sun/glass/ui/win/EHTMLReadMode;

    invoke-direct {v1, v0, v2}, Lcom/sun/glass/ui/win/HTMLCodec;-><init>(Ljava/io/InputStream;Lcom/sun/glass/ui/win/EHTMLReadMode;)V

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 64
    :goto_12
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 65
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 69
    :catch_1d
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected IOException caught"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_1d

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)[B
    .registers 2

    .line 50
    invoke-static {p0}, Lcom/sun/glass/ui/win/HTMLCodec;->convertToHTMLFormat([B)[B

    move-result-object v0

    return-object v0
.end method
