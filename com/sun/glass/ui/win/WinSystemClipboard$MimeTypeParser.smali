.class final Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;
.super Ljava/lang/Object;
.source "WinSystemClipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/win/WinSystemClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MimeTypeParser"
.end annotation


# static fields
.field protected static final externalBodyMime:Ljava/lang/String; = "message/external-body"


# instance fields
.field protected bInMemoryFile:Z

.field protected index:I

.field protected mime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->parse(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->parse(Ljava/lang/String;)V

    .line 168
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->index:I

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public isInMemoryFile()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->bInMemoryFile:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .registers 12

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 171
    iput-object p1, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->mime:Ljava/lang/String;

    .line 172
    iput-boolean v9, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->bInMemoryFile:Z

    .line 173
    iput v3, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->index:I

    .line 176
    const-string v0, "message/external-body"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 177
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 178
    const-string v4, ""

    move v0, v1

    move v2, v3

    .line 181
    :goto_1b
    array-length v6, v5

    if-ge v0, v6, :cond_4a

    .line 182
    aget-object v6, v5, v0

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 183
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_42

    .line 184
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "index"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 187
    aget-object v2, v6, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 192
    :cond_42
    :goto_42
    if-eq v2, v3, :cond_70

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_70

    .line 200
    :cond_4a
    const-string v0, "clipboard"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 201
    iput-boolean v1, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->bInMemoryFile:Z

    .line 202
    aget-object v0, v5, v9

    iput-object v0, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->mime:Ljava/lang/String;

    .line 203
    iput v2, p0, Lcom/sun/glass/ui/win/WinSystemClipboard$MimeTypeParser;->index:I

    .line 206
    :cond_5a
    return-void

    .line 188
    :cond_5b
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "access-type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 189
    aget-object v4, v6, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_42

    .line 181
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method
