.class public Lcom/sun/glass/ui/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# static fields
.field public static final ACTION_ANY:I = 0x4fffffff

.field public static final ACTION_COPY:I = 0x1

.field public static final ACTION_COPY_OR_MOVE:I = 0x3

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_REFERENCE:I = 0x40000000

.field public static final DND:Ljava/lang/String; = "DND"

.field public static final DRAG_IMAGE:Ljava/lang/String; = "application/x-java-drag-image"

.field public static final DRAG_IMAGE_OFFSET:Ljava/lang/String; = "application/x-java-drag-image-offset"

.field public static final FILE_LIST_TYPE:Ljava/lang/String; = "application/x-java-file-list"

.field public static final HTML_TYPE:Ljava/lang/String; = "text/html"

.field public static final IE_URL_SHORTCUT_FILENAME:Ljava/lang/String; = "text/ie-shortcut-filename"

.field public static final RAW_IMAGE_TYPE:Ljava/lang/String; = "application/x-java-rawimage"

.field public static final RTF_TYPE:Ljava/lang/String; = "text/rtf"

.field public static final SELECTION:Ljava/lang/String; = "SELECTION"

.field public static final SYSTEM:Ljava/lang/String; = "SYSTEM"

.field public static final TEXT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final URI_TYPE:Ljava/lang/String; = "text/uri-list"

.field private static final clipboards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/glass/ui/Clipboard;",
            ">;"
        }
    .end annotation
.end field

.field private static final delegate:Lcom/sun/glass/ui/delegate/ClipboardDelegate;


# instance fields
.field private final assistants:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sun/glass/ui/ClipboardAssistance;",
            ">;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

.field private final localDataProtector:Ljava/lang/Object;

.field private localSharedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field protected supportedActions:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    .line 70
    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/PlatformFactory;->createClipboardDelegate()Lcom/sun/glass/ui/delegate/ClipboardDelegate;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/Clipboard;->delegate:Lcom/sun/glass/ui/delegate/ClipboardDelegate;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/glass/ui/Clipboard;->supportedActions:I

    .line 84
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 85
    iput-object p1, p0, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method protected static get(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;
    .registers 4

    .line 213
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 215
    sget-object v1, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    monitor-enter v1

    .line 216
    :try_start_6
    sget-object v0, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 217
    sget-object v0, Lcom/sun/glass/ui/Clipboard;->delegate:Lcom/sun/glass/ui/delegate/ClipboardDelegate;

    invoke-interface {v0, p0}, Lcom/sun/glass/ui/delegate/ClipboardDelegate;->createClipboard(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1f

    .line 219
    new-instance v0, Lcom/sun/glass/ui/Clipboard;

    invoke-direct {v0, p0}, Lcom/sun/glass/ui/Clipboard;-><init>(Ljava/lang/String;)V

    .line 221
    :cond_1f
    sget-object v2, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_24
    sget-object v0, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Clipboard;

    monitor-exit v1

    return-object v0

    .line 224
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public static getActionString(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v6, 0x3

    .line 254
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    new-array v2, v6, [I

    fill-array-data v2, :array_40

    .line 260
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "copy"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-string v5, "move"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "link"

    aput-object v5, v3, v4

    .line 264
    :goto_21
    if-ge v0, v6, :cond_3b

    .line 265
    aget v4, v2, v0

    and-int/2addr v4, p0

    if-lez v4, :cond_38

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_33

    .line 267
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_33
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 272
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :array_40
    .array-data 4
        0x1
        0x2
        0x40000000  # 2.0f
    .end array-data
.end method


# virtual methods
.method public actionPerformed(I)V
    .registers 4

    .line 171
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 172
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v0, :cond_f

    .line 174
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/ClipboardAssistance;->actionPerformed(I)V

    .line 176
    :cond_f
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public add(Lcom/sun/glass/ui/ClipboardAssistance;)V
    .registers 4

    .line 89
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 90
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    monitor-enter v1

    .line 91
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected close()V
    .registers 3

    .line 242
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 243
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 245
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public contentChanged()V
    .registers 3

    .line 155
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 157
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    monitor-enter v1

    .line 158
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 159
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_23

    .line 160
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/ClipboardAssistance;

    .line 161
    invoke-virtual {v0}, Lcom/sun/glass/ui/ClipboardAssistance;->contentChanged()V

    goto :goto_13

    .line 159
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0

    .line 163
    :cond_26
    return-void
.end method

.method public flush(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/ClipboardAssistance;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/glass/ui/Clipboard;->setSharedData(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V

    .line 141
    invoke-virtual {p0}, Lcom/sun/glass/ui/Clipboard;->contentChanged()V

    .line 142
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 181
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 182
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 184
    const/4 v0, 0x0

    monitor-exit v1

    .line 187
    :goto_c
    return-object v0

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    instance-of v2, v0, Lcom/sun/glass/ui/DelayedCallback;

    if-eqz v2, :cond_1d

    .line 188
    check-cast v0, Lcom/sun/glass/ui/DelayedCallback;

    invoke-interface {v0}, Lcom/sun/glass/ui/DelayedCallback;->providedData()Ljava/lang/Object;

    move-result-object v0

    .line 189
    :cond_1d
    monitor-exit v1

    goto :goto_c

    .line 190
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .registers 7

    .line 194
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 195
    iget-object v4, p0, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    monitor-enter v4

    .line 196
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 197
    const/4 v0, 0x0

    monitor-exit v4

    .line 205
    :goto_c
    return-object v0

    .line 199
    :cond_d
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 200
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    .line 202
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    add-int/lit8 v3, v2, 0x1

    aput-object v0, v1, v2

    move v2, v3

    .line 204
    goto :goto_1f

    .line 205
    :cond_31
    monitor-exit v4

    move-object v0, v1

    goto :goto_c

    .line 206
    :catchall_34
    move-exception v0

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 249
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 250
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPixelsForRawImage([B)Lcom/sun/glass/ui/Pixels;
    .registers 6

    const/16 v3, 0x8

    .line 228
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 229
    const/4 v0, 0x0

    invoke-static {p1, v0, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 231
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 233
    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    invoke-static {p1, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 234
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3, v1, v0, v2}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSourceActions()I
    .registers 2

    .line 145
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 146
    iget v0, p0, Lcom/sun/glass/ui/Clipboard;->supportedActions:I

    return v0
.end method

.method public remove(Lcom/sun/glass/ui/ClipboardAssistance;)V
    .registers 5

    .line 96
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 97
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    if-ne p1, v0, :cond_d

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 101
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_2e

    .line 103
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    monitor-enter v1

    .line 104
    :try_start_11
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 106
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_31

    .line 108
    if-eqz v0, :cond_2d

    .line 109
    sget-object v1, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    monitor-enter v1

    .line 110
    :try_start_22
    sget-object v0, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    iget-object v2, p0, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_34

    .line 112
    invoke-virtual {p0}, Lcom/sun/glass/ui/Clipboard;->close()V

    .line 114
    :cond_2d
    return-void

    .line 101
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 106
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 111
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method protected setSharedData(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/ClipboardAssistance;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 122
    iget-object v1, p0, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_6
    invoke-virtual {p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    .line 124
    iput p3, p0, Lcom/sun/glass/ui/Clipboard;->supportedActions:I

    .line 125
    iput-object p1, p0, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public setTargetAction(I)V
    .registers 2

    .line 150
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 151
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/Clipboard;->actionPerformed(I)V

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-custom {v0, v1}, call_site_1040("makeConcatWithConstants", (Ljava/lang/String;I)Ljava/lang/String;, "Clipboard: \u0001@\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method
