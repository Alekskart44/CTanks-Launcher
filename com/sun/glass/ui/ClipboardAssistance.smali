.class public Lcom/sun/glass/ui/ClipboardAssistance;
.super Ljava/lang/Object;
.source "ClipboardAssistance.java"


# instance fields
.field private final cacheData:Ljava/util/HashMap;
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

.field private final clipboard:Lcom/sun/glass/ui/Clipboard;

.field private supportedActions:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    .line 33
    const v0, 0x4fffffff  # 8.5899341E9f

    iput v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->supportedActions:I

    .line 40
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 41
    invoke-static {p1}, Lcom/sun/glass/ui/Clipboard;->get(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    .line 42
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Clipboard;->add(Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 43
    return-void
.end method


# virtual methods
.method public actionPerformed(I)V
    .registers 2

    .line 136
    return-void
.end method

.method public close()V
    .registers 2

    .line 49
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 50
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Clipboard;->remove(Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 51
    return-void
.end method

.method public contentChanged()V
    .registers 1

    .line 129
    return-void
.end method

.method public emptyCache()V
    .registers 2

    .line 66
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 67
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    return-void
.end method

.method public flush()V
    .registers 4

    .line 58
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 59
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    iget-object v1, p0, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    iget v2, p0, Lcom/sun/glass/ui/ClipboardAssistance;->supportedActions:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/sun/glass/ui/Clipboard;->flush(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V

    .line 60
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 94
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 95
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/Clipboard;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .registers 2

    .line 139
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 140
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Clipboard;->getMimeTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSourceActions()I
    .registers 2

    .line 113
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 114
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Clipboard;->getSupportedSourceActions()I

    move-result v0

    return v0
.end method

.method public isCacheEmpty()Z
    .registers 2

    .line 71
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 72
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 83
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 84
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setSupportedActions(I)V
    .registers 2

    .line 104
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 105
    iput p1, p0, Lcom/sun/glass/ui/ClipboardAssistance;->supportedActions:I

    .line 106
    return-void
.end method

.method public setTargetAction(I)V
    .registers 3

    .line 122
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 123
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/Clipboard;->setTargetAction(I)V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-custom {v0}, call_site_777("makeConcatWithConstants", (Lcom/sun/glass/ui/Clipboard;)Ljava/lang/String;, "ClipboardAssistance[\u0001]")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method
