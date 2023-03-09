.class final Lcom/sun/glass/ui/win/WinMenuDelegate;
.super Lcom/sun/glass/ui/win/WinMenuImpl;
.source "WinMenuDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuDelegate;


# instance fields
.field private final owner:Lcom/sun/glass/ui/Menu;

.field private parent:Lcom/sun/glass/ui/win/WinMenuImpl;


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/Menu;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinMenuImpl;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    .line 38
    iput-object p1, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->owner:Lcom/sun/glass/ui/Menu;

    .line 39
    return-void
.end method


# virtual methods
.method public createMenu(Ljava/lang/String;Z)Z
    .registers 4

    .line 47
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinMenuDelegate;->create()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinMenuDelegate;->destroy()V

    .line 52
    return-void
.end method

.method public getOwner()Lcom/sun/glass/ui/Menu;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->owner:Lcom/sun/glass/ui/Menu;

    return-object v0
.end method

.method getParent()Lcom/sun/glass/ui/win/WinMenuImpl;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    return-object v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .registers 4

    .line 76
    check-cast p1, Lcom/sun/glass/ui/win/WinMenuDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/win/WinMenuDelegate;->insertSubmenu(Lcom/sun/glass/ui/win/WinMenuDelegate;I)Z

    move-result v0

    return v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z
    .registers 4

    .line 81
    check-cast p1, Lcom/sun/glass/ui/win/WinMenuItemDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/win/WinMenuDelegate;->insertItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;I)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .registers 4

    .line 86
    check-cast p1, Lcom/sun/glass/ui/win/WinMenuDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/win/WinMenuDelegate;->removeMenu(Lcom/sun/glass/ui/win/WinMenuDelegate;I)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z
    .registers 4

    .line 91
    check-cast p1, Lcom/sun/glass/ui/win/WinMenuItemDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/win/WinMenuDelegate;->removeItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;I)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)Z
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    if-eqz v0, :cond_b

    .line 65
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    invoke-virtual {v0, p0, p1}, Lcom/sun/glass/ui/win/WinMenuImpl;->enableSubmenu(Lcom/sun/glass/ui/win/WinMenuDelegate;Z)Z

    move-result v0

    .line 67
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    .line 100
    return-void
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .registers 3

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(Ljava/lang/String;)Z
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    if-eqz v0, :cond_b

    .line 58
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuDelegate;->parent:Lcom/sun/glass/ui/win/WinMenuImpl;

    invoke-virtual {v0, p0, p1}, Lcom/sun/glass/ui/win/WinMenuImpl;->setSubmenuTitle(Lcom/sun/glass/ui/win/WinMenuDelegate;Ljava/lang/String;)Z

    move-result v0

    .line 60
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method
