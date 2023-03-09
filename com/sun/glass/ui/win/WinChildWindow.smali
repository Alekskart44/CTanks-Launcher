.class final Lcom/sun/glass/ui/win/WinChildWindow;
.super Lcom/sun/glass/ui/win/WinWindow;
.source "WinChildWindow.java"


# direct methods
.method protected constructor <init>(J)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sun/glass/ui/win/WinWindow;-><init>(J)V

    .line 38
    return-void
.end method


# virtual methods
.method protected _createWindow(JJI)J
    .registers 8

    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected _enterModal(J)V
    .registers 3

    .line 52
    return-void
.end method

.method protected _enterModalWithWindow(JJ)V
    .registers 5

    .line 53
    return-void
.end method

.method protected _exitModal(J)V
    .registers 3

    .line 54
    return-void
.end method

.method protected _maximize(JZZ)Z
    .registers 6

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected _minimize(JZ)Z
    .registers 5

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected _setAlpha(JF)V
    .registers 4

    .line 48
    return-void
.end method

.method protected _setIcon(JLcom/sun/glass/ui/Pixels;)V
    .registers 4

    .line 51
    return-void
.end method

.method protected _setLevel(JI)V
    .registers 4

    .line 47
    return-void
.end method

.method protected _setMaximumSize(JII)Z
    .registers 6

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected _setMenubar(JJ)Z
    .registers 6

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected _setMinimumSize(JII)Z
    .registers 6

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected _setResizable(JZ)Z
    .registers 5

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected _setTitle(JLjava/lang/String;)Z
    .registers 5

    .line 46
    const/4 v0, 0x0

    return v0
.end method
