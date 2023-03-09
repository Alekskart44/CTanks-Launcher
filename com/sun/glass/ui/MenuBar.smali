.class public final Lcom/sun/glass/ui/MenuBar;
.super Ljava/lang/Object;
.source "MenuBar.java"


# instance fields
.field private final delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

.field private final menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 40
    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/PlatformFactory;->createMenuBarDelegate(Lcom/sun/glass/ui/MenuBar;)Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    .line 41
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    invoke-interface {v0}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->createMenuBar()Z

    move-result v0

    if-nez v0, :cond_27

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MenuBar creation error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_27
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/glass/ui/Menu;)V
    .registers 3

    .line 51
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 52
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/glass/ui/MenuBar;->insert(Lcom/sun/glass/ui/Menu;I)V

    .line 53
    return-void
.end method

.method public getMenus()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Menu;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 90
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getNativeMenu()J
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    invoke-interface {v0}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->getNativeMenu()J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lcom/sun/glass/ui/Menu;I)V
    .registers 6

    .line 56
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 57
    iget-object v1, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    monitor-enter v1

    .line 58
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    invoke-virtual {p1}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 59
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    :cond_17
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public remove(I)V
    .registers 5

    .line 65
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 66
    iget-object v1, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    monitor-enter v1

    .line 67
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Menu;

    .line 68
    iget-object v2, p0, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 69
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    :cond_1f
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public remove(Lcom/sun/glass/ui/Menu;)V
    .registers 6

    .line 75
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 76
    iget-object v1, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    monitor-enter v1

    .line 77
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 78
    if-ltz v0, :cond_1f

    .line 79
    iget-object v2, p0, Lcom/sun/glass/ui/MenuBar;->delegate:Lcom/sun/glass/ui/delegate/MenuBarDelegate;

    invoke-virtual {p1}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/sun/glass/ui/delegate/MenuBarDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 80
    iget-object v2, p0, Lcom/sun/glass/ui/MenuBar;->menus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_1f
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v0
.end method
