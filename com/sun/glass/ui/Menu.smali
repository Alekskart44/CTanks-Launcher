.class public final Lcom/sun/glass/ui/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Menu$EventHandler;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

.field private enabled:Z

.field private eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/glass/ui/Menu;-><init>(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 71
    iput-object p1, p0, Lcom/sun/glass/ui/Menu;->title:Ljava/lang/String;

    .line 72
    iput-boolean p2, p0, Lcom/sun/glass/ui/Menu;->enabled:Z

    .line 73
    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/PlatformFactory;->createMenuDelegate(Lcom/sun/glass/ui/Menu;)Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    .line 74
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    invoke-interface {v0, p1, p2}, Lcom/sun/glass/ui/delegate/MenuDelegate;->createMenu(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Menu creation error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2b
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/glass/ui/Menu;)V
    .registers 3

    .line 118
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 119
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/glass/ui/Menu;->insert(Lcom/sun/glass/ui/Menu;I)V

    .line 120
    return-void
.end method

.method public add(Lcom/sun/glass/ui/MenuItem;)V
    .registers 3

    .line 123
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 124
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/glass/ui/Menu;->insert(Lcom/sun/glass/ui/MenuItem;I)V

    .line 125
    return-void
.end method

.method getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    return-object v0
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Menu$EventHandler;
    .registers 2

    .line 48
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 49
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 114
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 80
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 81
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->title:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcom/sun/glass/ui/Menu;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 129
    if-nez p1, :cond_b

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 132
    :cond_b
    iget-object v1, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    monitor-enter v1

    .line 133
    if-ltz p2, :cond_18

    :try_start_10
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_21

    .line 134
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 140
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0

    .line 136
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    invoke-interface {v2, v0, p2}, Lcom/sun/glass/ui/delegate/MenuDelegate;->insert(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 138
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_1e

    .line 141
    return-void
.end method

.method public insert(Lcom/sun/glass/ui/MenuItem;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 145
    iget-object v1, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    monitor-enter v1

    .line 146
    if-ltz p2, :cond_10

    :try_start_8
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_19

    .line 147
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 153
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0

    .line 149
    :cond_19
    if-eqz p1, :cond_2e

    :try_start_1b
    invoke-virtual {p1}, Lcom/sun/glass/ui/MenuItem;->getDelegate()Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-result-object v0

    .line 150
    :goto_1f
    iget-object v2, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    invoke-interface {v2, v0, p2}, Lcom/sun/glass/ui/delegate/MenuDelegate;->insert(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 151
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_16

    .line 154
    return-void

    .line 149
    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public isEnabled()Z
    .registers 2

    .line 92
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 93
    iget-boolean v0, p0, Lcom/sun/glass/ui/Menu;->enabled:Z

    return v0
.end method

.method protected notifyMenuClosed()V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Menu$EventHandler;->handleMenuClosed(Lcom/sun/glass/ui/Menu;J)V

    .line 195
    :cond_d
    return-void
.end method

.method protected notifyMenuOpening()V
    .registers 5

    .line 186
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    if-eqz v0, :cond_d

    .line 187
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Menu$EventHandler;->handleMenuOpening(Lcom/sun/glass/ui/Menu;J)V

    .line 189
    :cond_d
    return-void
.end method

.method public remove(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 158
    iget-object v1, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    monitor-enter v1

    .line 159
    :try_start_6
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 161
    sget-object v2, Lcom/sun/glass/ui/MenuItem;->Separator:Lcom/sun/glass/ui/MenuItem;

    if-ne v0, v2, :cond_22

    .line 162
    iget-object v2, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    const/4 v0, 0x0

    check-cast v0, Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    invoke-interface {v2, v0, p1}, Lcom/sun/glass/ui/delegate/MenuDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z

    move-result v0

    .line 168
    :goto_19
    if-eqz v0, :cond_20

    .line 169
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 171
    :cond_20
    monitor-exit v1

    .line 172
    return-void

    .line 163
    :cond_22
    instance-of v2, v0, Lcom/sun/glass/ui/MenuItem;

    if-eqz v2, :cond_33

    .line 164
    iget-object v2, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    check-cast v0, Lcom/sun/glass/ui/MenuItem;

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getDelegate()Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Lcom/sun/glass/ui/delegate/MenuDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuItemDelegate;I)Z

    move-result v0

    goto :goto_19

    .line 166
    :cond_33
    iget-object v2, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    check-cast v0, Lcom/sun/glass/ui/Menu;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Menu;->getDelegate()Lcom/sun/glass/ui/delegate/MenuDelegate;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Lcom/sun/glass/ui/delegate/MenuDelegate;->remove(Lcom/sun/glass/ui/delegate/MenuDelegate;I)Z

    move-result v0

    goto :goto_19

    .line 171
    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 97
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 98
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuDelegate;->setEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    iput-boolean p1, p0, Lcom/sun/glass/ui/Menu;->enabled:Z

    .line 101
    :cond_d
    return-void
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Menu$EventHandler;)V
    .registers 2

    .line 53
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 54
    iput-object p1, p0, Lcom/sun/glass/ui/Menu;->eventHandler:Lcom/sun/glass/ui/Menu$EventHandler;

    .line 55
    return-void
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .registers 3

    .line 104
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 105
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuDelegate;->setPixels(Lcom/sun/glass/ui/Pixels;)Z

    move-result v0

    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 85
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 86
    iget-object v0, p0, Lcom/sun/glass/ui/Menu;->delegate:Lcom/sun/glass/ui/delegate/MenuDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuDelegate;->setTitle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    iput-object p1, p0, Lcom/sun/glass/ui/Menu;->title:Ljava/lang/String;

    .line 89
    :cond_d
    return-void
.end method
