.class final Lcom/sun/glass/ui/win/WinClipboardDelegate;
.super Ljava/lang/Object;
.source "WinClipboardDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/ClipboardDelegate;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClipboard(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;
    .registers 3

    .line 32
    const-string v0, "SYSTEM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 33
    new-instance v0, Lcom/sun/glass/ui/win/WinSystemClipboard;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinSystemClipboard;-><init>(Ljava/lang/String;)V

    .line 37
    :goto_d
    return-object v0

    .line 34
    :cond_e
    const-string v0, "DND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 35
    new-instance v0, Lcom/sun/glass/ui/win/WinDnDClipboard;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinDnDClipboard;-><init>(Ljava/lang/String;)V

    goto :goto_d

    .line 37
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method
