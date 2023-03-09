.class final Lcom/sun/glass/ui/win/WinMenuItemDelegate;
.super Ljava/lang/Object;
.source "WinMenuItemDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuItemDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;
    }
.end annotation


# instance fields
.field private cmdID:I

.field private final owner:Lcom/sun/glass/ui/MenuItem;

.field private parent:Lcom/sun/glass/ui/win/WinMenuImpl;


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/MenuItem;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->cmdID:I

    .line 45
    iput-object p1, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->owner:Lcom/sun/glass/ui/MenuItem;

    .line 46
    return-void
.end method

.method private getTitle(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .line 108
    if-nez p2, :cond_2

    .line 111
    :cond_2
    return-object p1
.end method


# virtual methods
.method public createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;ZZ)Z
    .registers 9

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method getCmdID()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->cmdID:I

    return v0
.end method

.method public getOwner()Lcom/sun/glass/ui/MenuItem;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->owner:Lcom/sun/glass/ui/MenuItem;

    return-object v0
.end method

.method getParent()Lcom/sun/glass/ui/win/WinMenuImpl;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    return-object v0
.end method

.method public setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)Z
    .registers 3

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)Z
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    invoke-virtual {v0, p0, p1}, Lcom/sun/glass/ui/win/WinMenuImpl;->checkItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;Z)Z

    move-result v0

    .line 100
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public setEnabled(Z)Z
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    if-eqz v0, :cond_b

    .line 91
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    invoke-virtual {v0, p0, p1}, Lcom/sun/glass/ui/win/WinMenuImpl;->enableItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;Z)Z

    move-result v0

    .line 93
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    if-eqz v0, :cond_c

    .line 121
    iget v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->cmdID:I

    invoke-static {v0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->freeID(I)V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->cmdID:I

    .line 124
    :cond_c
    if-eqz p1, :cond_14

    .line 125
    invoke-static {p0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->getID(Lcom/sun/glass/ui/win/WinMenuItemDelegate;)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->cmdID:I

    .line 127
    :cond_14
    iput-object p1, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    .line 128
    return-void
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .registers 3

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public setShortcut(II)Z
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    if-eqz v0, :cond_17

    .line 77
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getTitle(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    invoke-virtual {v1, p0, v0}, Lcom/sun/glass/ui/win/WinMenuImpl;->setItemTitle(Lcom/sun/glass/ui/win/WinMenuItemDelegate;Ljava/lang/String;)Z

    move-result v0

    .line 81
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public setTitle(Ljava/lang/String;)Z
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    if-eqz v0, :cond_1f

    .line 63
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getShortcutKey()I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/MenuItem;->getShortcutModifiers()I

    move-result v1

    .line 63
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getTitle(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    invoke-virtual {v1, p0, v0}, Lcom/sun/glass/ui/win/WinMenuImpl;->setItemTitle(Lcom/sun/glass/ui/win/WinMenuItemDelegate;Ljava/lang/String;)Z

    move-result v0

    .line 67
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e
.end method
