.class public final Lcom/sun/glass/ui/win/WinPlatformFactory;
.super Lcom/sun/glass/ui/PlatformFactory;
.source "WinPlatformFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/sun/glass/ui/PlatformFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createApplication()Lcom/sun/glass/ui/Application;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinPlatformFactory;->createApplication()Lcom/sun/glass/ui/win/WinApplication;

    move-result-object v0

    return-object v0
.end method

.method public createApplication()Lcom/sun/glass/ui/win/WinApplication;
    .registers 2

    .line 39
    new-instance v0, Lcom/sun/glass/ui/win/WinApplication;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinApplication;-><init>()V

    return-object v0
.end method

.method public createClipboardDelegate()Lcom/sun/glass/ui/delegate/ClipboardDelegate;
    .registers 2

    .line 55
    new-instance v0, Lcom/sun/glass/ui/win/WinClipboardDelegate;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinClipboardDelegate;-><init>()V

    return-object v0
.end method

.method public createMenuBarDelegate(Lcom/sun/glass/ui/MenuBar;)Lcom/sun/glass/ui/delegate/MenuBarDelegate;
    .registers 3

    .line 43
    new-instance v0, Lcom/sun/glass/ui/win/WinMenuBarDelegate;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinMenuBarDelegate;-><init>(Lcom/sun/glass/ui/MenuBar;)V

    return-object v0
.end method

.method public createMenuDelegate(Lcom/sun/glass/ui/Menu;)Lcom/sun/glass/ui/delegate/MenuDelegate;
    .registers 3

    .line 47
    new-instance v0, Lcom/sun/glass/ui/win/WinMenuDelegate;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinMenuDelegate;-><init>(Lcom/sun/glass/ui/Menu;)V

    return-object v0
.end method

.method public createMenuItemDelegate(Lcom/sun/glass/ui/MenuItem;)Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    .registers 3

    .line 51
    new-instance v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;-><init>(Lcom/sun/glass/ui/MenuItem;)V

    return-object v0
.end method
