.class Lcom/sun/glass/ui/win/WinMenuImpl;
.super Ljava/lang/Object;
.source "WinMenuImpl.java"


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/sun/glass/ui/win/WinMenuImpl;->_initIDs()V

    .line 45
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    .line 50
    return-void
.end method

.method private native _checkItem(JIZ)Z
.end method

.method private native _create()J
.end method

.method private native _destroy(J)V
.end method

.method private native _enableItem(JIZ)Z
.end method

.method private native _enableSubmenu(JJZ)Z
.end method

.method private static native _initIDs()V
.end method

.method private native _insertItem(JIILjava/lang/String;ZZLcom/sun/glass/ui/MenuItem$Callback;II)Z
.end method

.method private native _insertSeparator(JI)Z
.end method

.method private native _insertSubmenu(JIJLjava/lang/String;Z)Z
.end method

.method private native _removeAtPos(JI)Z
.end method

.method private native _setItemTitle(JILjava/lang/String;)Z
.end method

.method private native _setSubmenuTitle(JJLjava/lang/String;)Z
.end method

.method private static notifyCommand(Lcom/sun/glass/ui/Window;I)Z
    .registers 3

    .line 139
    invoke-static {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->getHandler(I)Lcom/sun/glass/ui/win/WinMenuItemDelegate;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_15

    .line 141
    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getCallback()Lcom/sun/glass/ui/MenuItem$Callback;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_15

    .line 143
    invoke-interface {v0}, Lcom/sun/glass/ui/MenuItem$Callback;->action()V

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public checkItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;Z)Z
    .registers 6

    .line 134
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getCmdID()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sun/glass/ui/win/WinMenuImpl;->_checkItem(JIZ)Z

    move-result v0

    return v0
.end method

.method create()Z
    .registers 5

    .line 57
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinMenuImpl;->_create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    .line 58
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method destroy()V
    .registers 5

    const-wide/16 v2, 0x0

    .line 62
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 63
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinMenuImpl;->_destroy(J)V

    .line 64
    iput-wide v2, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    .line 66
    :cond_f
    return-void
.end method

.method enableItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;Z)Z
    .registers 6

    .line 130
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getCmdID()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sun/glass/ui/win/WinMenuImpl;->_enableItem(JIZ)Z

    move-result v0

    return v0
.end method

.method enableSubmenu(Lcom/sun/glass/ui/win/WinMenuDelegate;Z)Z
    .registers 10

    .line 126
    iget-wide v2, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuDelegate;->getHMENU()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/glass/ui/win/WinMenuImpl;->_enableSubmenu(JJZ)Z

    move-result v0

    return v0
.end method

.method getHMENU()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    return-wide v0
.end method

.method insertItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;I)Z
    .registers 15

    .line 80
    if-nez p1, :cond_9

    .line 81
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/glass/ui/win/WinMenuImpl;->_insertSeparator(JI)Z

    move-result v0

    .line 96
    :goto_8
    return v0

    .line 84
    :cond_9
    invoke-virtual {p1, p0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V

    .line 86
    iget-wide v2, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getCmdID()I

    move-result v5

    .line 87
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->isEnabled()Z

    move-result v7

    .line 89
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->isChecked()Z

    move-result v8

    .line 90
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getCallback()Lcom/sun/glass/ui/MenuItem$Callback;

    move-result-object v9

    .line 91
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getShortcutKey()I

    move-result v10

    .line 92
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getOwner()Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/MenuItem;->getShortcutModifiers()I

    move-result v11

    move-object v1, p0

    move v4, p2

    .line 86
    invoke-direct/range {v1 .. v11}, Lcom/sun/glass/ui/win/WinMenuImpl;->_insertItem(JIILjava/lang/String;ZZLcom/sun/glass/ui/MenuItem$Callback;II)Z

    move-result v0

    if-nez v0, :cond_50

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V

    .line 94
    const/4 v0, 0x0

    goto :goto_8

    .line 96
    :cond_50
    const/4 v0, 0x1

    goto :goto_8
.end method

.method insertSubmenu(Lcom/sun/glass/ui/win/WinMenuDelegate;I)Z
    .registers 11

    .line 69
    invoke-virtual {p1, p0}, Lcom/sun/glass/ui/win/WinMenuDelegate;->setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V

    .line 70
    iget-wide v1, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuDelegate;->getHMENU()J

    move-result-wide v4

    .line 71
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuDelegate;->getOwner()Lcom/sun/glass/ui/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Menu;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuDelegate;->getOwner()Lcom/sun/glass/ui/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Menu;->isEnabled()Z

    move-result v7

    move-object v0, p0

    move v3, p2

    .line 70
    invoke-direct/range {v0 .. v7}, Lcom/sun/glass/ui/win/WinMenuImpl;->_insertSubmenu(JIJLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_27

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/glass/ui/win/WinMenuDelegate;->setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x1

    goto :goto_26
.end method

.method removeItem(Lcom/sun/glass/ui/win/WinMenuItemDelegate;I)Z
    .registers 5

    .line 108
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/glass/ui/win/WinMenuImpl;->_removeAtPos(JI)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 109
    if-eqz p1, :cond_e

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V

    .line 112
    :cond_e
    const/4 v0, 0x1

    .line 114
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method removeMenu(Lcom/sun/glass/ui/win/WinMenuDelegate;I)Z
    .registers 5

    .line 100
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/glass/ui/win/WinMenuImpl;->_removeAtPos(JI)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/glass/ui/win/WinMenuDelegate;->setParent(Lcom/sun/glass/ui/win/WinMenuImpl;)V

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method setItemTitle(Lcom/sun/glass/ui/win/WinMenuItemDelegate;Ljava/lang/String;)Z
    .registers 6

    .line 122
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuItemDelegate;->getCmdID()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sun/glass/ui/win/WinMenuImpl;->_setItemTitle(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setSubmenuTitle(Lcom/sun/glass/ui/win/WinMenuDelegate;Ljava/lang/String;)Z
    .registers 10

    .line 118
    iget-wide v2, p0, Lcom/sun/glass/ui/win/WinMenuImpl;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinMenuDelegate;->getHMENU()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/glass/ui/win/WinMenuImpl;->_setSubmenuTitle(JJLjava/lang/String;)Z

    move-result v0

    return v0
.end method
