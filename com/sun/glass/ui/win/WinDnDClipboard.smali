.class final Lcom/sun/glass/ui/win/WinDnDClipboard;
.super Lcom/sun/glass/ui/win/WinSystemClipboard;
.source "WinDnDClipboard.java"


# static fields
.field private static dragButton:I


# instance fields
.field private sourceSupportedActions:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/sun/glass/ui/win/WinDnDClipboard;->dragButton:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/win/WinSystemClipboard;-><init>(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/glass/ui/win/WinDnDClipboard;->sourceSupportedActions:I

    .line 30
    return-void
.end method

.method private static getInstance()Lcom/sun/glass/ui/win/WinDnDClipboard;
    .registers 1

    .line 63
    const-string v0, "DND"

    invoke-static {v0}, Lcom/sun/glass/ui/win/WinDnDClipboard;->get(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinDnDClipboard;

    return-object v0
.end method

.method private setDragButton(I)V
    .registers 2

    .line 87
    sput p1, Lcom/sun/glass/ui/win/WinDnDClipboard;->dragButton:I

    .line 88
    return-void
.end method

.method private setSourceSupportedActions(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/sun/glass/ui/win/WinDnDClipboard;->sourceSupportedActions:I

    .line 106
    return-void
.end method


# virtual methods
.method protected create()V
    .registers 1

    .line 32
    return-void
.end method

.method protected native dispose()V
.end method

.method public getDragButton()I
    .registers 2

    .line 80
    sget v0, Lcom/sun/glass/ui/win/WinDnDClipboard;->dragButton:I

    return v0
.end method

.method protected isOwner()Z
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinDnDClipboard;->getDragButton()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected pop()Z
    .registers 5

    .line 56
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinDnDClipboard;->getPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected native push([Ljava/lang/Object;I)V
.end method

.method protected pushTargetActionToSystem(I)V
    .registers 4

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "[Target Action] not supported! Override View.handleDragDrop instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final supportedSourceActionsFromSystem()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/sun/glass/ui/win/WinDnDClipboard;->sourceSupportedActions:I

    if-eqz v0, :cond_7

    .line 97
    iget v0, p0, Lcom/sun/glass/ui/win/WinDnDClipboard;->sourceSupportedActions:I

    .line 96
    :goto_6
    return v0

    .line 98
    :cond_7
    invoke-super {p0}, Lcom/sun/glass/ui/win/WinSystemClipboard;->supportedSourceActionsFromSystem()I

    move-result v0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "Windows DnD Clipboard"

    return-object v0
.end method
