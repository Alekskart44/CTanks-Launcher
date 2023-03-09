.class final Lcom/sun/glass/ui/win/WinMenuBarDelegate;
.super Lcom/sun/glass/ui/win/WinMenuImpl;
.source "WinMenuBarDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/MenuBarDelegate;


# instance fields
.field private final owner:Lcom/sun/glass/ui/MenuBar;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/MenuBar;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinMenuImpl;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sun/glass/ui/win/WinMenuBarDelegate;->owner:Lcom/sun/glass/ui/MenuBar;

    .line 37
    return-void
.end method


# virtual methods
.method public createMenuBar()Z
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinMenuBarDelegate;->create()Z

    move-result v0

    return v0
.end method

.method public getNativeMenu()J
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinMenuBarDelegate;->getHMENU()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOwner()Lcom/sun/glass/ui/MenuBar;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinMenuBarDelegate;->owner:Lcom/sun/glass/ui/MenuBar;

    return-object v0
.end method

.method public insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .registers 4

    .line 48
    check-cast p1, Lcom/sun/glass/ui/win/WinMenuDelegate;

    .line 49
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuDelegate;->getParent()Lcom/sun/glass/ui/win/WinMenuImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 52
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/win/WinMenuBarDelegate;->insertSubmenu(Lcom/sun/glass/ui/win/WinMenuDelegate;I)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z
    .registers 4

    .line 56
    check-cast p1, Lcom/sun/glass/ui/win/WinMenuDelegate;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/win/WinMenuBarDelegate;->removeMenu(Lcom/sun/glass/ui/win/WinMenuDelegate;I)Z

    move-result v0

    return v0
.end method
