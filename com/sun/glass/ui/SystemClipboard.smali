.class public abstract Lcom/sun/glass/ui/SystemClipboard;
.super Lcom/sun/glass/ui/Clipboard;
.source "SystemClipboard.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/Clipboard;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 33
    return-void
.end method


# virtual methods
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

    .line 47
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/glass/ui/SystemClipboard;->setSharedData(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/sun/glass/ui/SystemClipboard;->pushToSystem(Ljava/util/HashMap;I)V

    .line 52
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 72
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 73
    invoke-virtual {p0}, Lcom/sun/glass/ui/SystemClipboard;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 74
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/SystemClipboard;->getLocalData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/SystemClipboard;->popFromSystem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public getLocalData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 68
    invoke-super {p0, p1}, Lcom/sun/glass/ui/Clipboard;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .registers 2

    .line 80
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 81
    invoke-virtual {p0}, Lcom/sun/glass/ui/SystemClipboard;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 82
    invoke-super {p0}, Lcom/sun/glass/ui/Clipboard;->getMimeTypes()[Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/sun/glass/ui/SystemClipboard;->mimesFromSystem()[Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getSupportedSourceActions()I
    .registers 2

    .line 55
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 56
    invoke-virtual {p0}, Lcom/sun/glass/ui/SystemClipboard;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    invoke-super {p0}, Lcom/sun/glass/ui/Clipboard;->getSupportedSourceActions()I

    move-result v0

    .line 59
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/sun/glass/ui/SystemClipboard;->supportedSourceActionsFromSystem()I

    move-result v0

    goto :goto_d
.end method

.method protected abstract isOwner()Z
.end method

.method protected abstract mimesFromSystem()[Ljava/lang/String;
.end method

.method protected abstract popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract pushTargetActionToSystem(I)V
.end method

.method protected abstract pushToSystem(Ljava/util/HashMap;I)V
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
.end method

.method public setTargetAction(I)V
    .registers 2

    .line 63
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/SystemClipboard;->pushTargetActionToSystem(I)V

    .line 65
    return-void
.end method

.method protected abstract supportedSourceActionsFromSystem()I
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 89
    const-string v0, "System Clipboard"

    return-object v0
.end method
