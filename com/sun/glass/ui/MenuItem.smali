.class public final Lcom/sun/glass/ui/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/MenuItem$Callback;
    }
.end annotation


# static fields
.field public static final Separator:Lcom/sun/glass/ui/MenuItem;


# instance fields
.field private callback:Lcom/sun/glass/ui/MenuItem$Callback;

.field private checked:Z

.field private final delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

.field private enabled:Z

.field private shortcutKey:I

.field private shortcutModifiers:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/MenuItem;->Separator:Lcom/sun/glass/ui/MenuItem;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)V
    .registers 4

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)V
    .registers 11

    .line 59
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)V
    .registers 14

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 65
    iput-object p1, p0, Lcom/sun/glass/ui/MenuItem;->title:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/sun/glass/ui/MenuItem;->callback:Lcom/sun/glass/ui/MenuItem$Callback;

    .line 67
    iput p3, p0, Lcom/sun/glass/ui/MenuItem;->shortcutKey:I

    .line 68
    iput p4, p0, Lcom/sun/glass/ui/MenuItem;->shortcutModifiers:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/glass/ui/MenuItem;->checked:Z

    .line 71
    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/PlatformFactory;->createMenuItemDelegate(Lcom/sun/glass/ui/MenuItem;)Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    .line 72
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    iget-boolean v6, p0, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    iget-boolean v7, p0, Lcom/sun/glass/ui/MenuItem;->checked:Z

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;ZZ)Z

    move-result v0

    if-nez v0, :cond_37

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MenuItem creation error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_37
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/sun/glass/ui/MenuItem$Callback;
    .registers 2

    .line 91
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 92
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->callback:Lcom/sun/glass/ui/MenuItem$Callback;

    return-object v0
.end method

.method getDelegate()Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    return-object v0
.end method

.method public getShortcutKey()I
    .registers 2

    .line 130
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 131
    iget v0, p0, Lcom/sun/glass/ui/MenuItem;->shortcutKey:I

    return v0
.end method

.method public getShortcutModifiers()I
    .registers 2

    .line 138
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 139
    iget v0, p0, Lcom/sun/glass/ui/MenuItem;->shortcutModifiers:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 80
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .line 115
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 116
    iget-boolean v0, p0, Lcom/sun/glass/ui/MenuItem;->checked:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 103
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 104
    iget-boolean v0, p0, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    return v0
.end method

.method public setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)V
    .registers 3

    .line 96
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 97
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 98
    iput-object p1, p0, Lcom/sun/glass/ui/MenuItem;->callback:Lcom/sun/glass/ui/MenuItem$Callback;

    .line 100
    :cond_d
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 120
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 121
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setChecked(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 122
    iput-boolean p1, p0, Lcom/sun/glass/ui/MenuItem;->checked:Z

    .line 124
    :cond_d
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 108
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 109
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 110
    iput-boolean p1, p0, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    .line 112
    :cond_d
    return-void
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .registers 3

    .line 151
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 152
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setPixels(Lcom/sun/glass/ui/Pixels;)Z

    move-result v0

    return v0
.end method

.method public setShortcut(II)V
    .registers 4

    .line 143
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 144
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    invoke-interface {v0, p1, p2}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setShortcut(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    iput p1, p0, Lcom/sun/glass/ui/MenuItem;->shortcutKey:I

    .line 146
    iput p2, p0, Lcom/sun/glass/ui/MenuItem;->shortcutModifiers:I

    .line 148
    :cond_f
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 84
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 85
    iget-object v0, p0, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    invoke-interface {v0, p1}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setTitle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    iput-object p1, p0, Lcom/sun/glass/ui/MenuItem;->title:Ljava/lang/String;

    .line 88
    :cond_d
    return-void
.end method
