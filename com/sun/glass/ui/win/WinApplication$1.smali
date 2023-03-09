.class Lcom/sun/glass/ui/win/WinApplication$1;
.super Ljava/lang/Object;
.source "WinApplication.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/win/WinApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinApplication$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 4

    const/high16 v2, -0x40800000  # -1.0f

    .line 90
    const-string v0, "javafx.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/win/WinApplication;->verbose:Z

    .line 91
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-eqz v0, :cond_3c

    .line 92
    const-string v0, "glass.win.uiScale"

    const-string v1, "Forcing UI scaling factor: "

    invoke-static {v0, v2, v1}, Lcom/sun/glass/ui/win/WinApplication;->getFloat(Ljava/lang/String;FLjava/lang/String;)F

    move-result v0

    sput v0, Lcom/sun/glass/ui/win/WinApplication;->overrideUIScale:F

    .line 94
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v0, :cond_34

    .line 95
    const-string v0, "glass.win.renderScale"

    const-string v1, "(No longer supported) Rendering scaling factor: "

    invoke-static {v0, v2, v1}, Lcom/sun/glass/ui/win/WinApplication;->getFloat(Ljava/lang/String;FLjava/lang/String;)F

    .line 97
    const-string v0, "glass.win.minHiDPI"

    const/high16 v1, 0x3fc00000  # 1.5f

    const-string v2, "(No longer supported) UI scaling threshold: "

    invoke-static {v0, v1, v2}, Lcom/sun/glass/ui/win/WinApplication;->getFloat(Ljava/lang/String;FLjava/lang/String;)F

    .line 99
    const-string v0, "glass.win.forceIntegerRenderScale"

    const/4 v1, 0x1

    const-string v2, "(No longer supported) force integer rendering scale"

    invoke-static {v0, v1, v2}, Lcom/sun/glass/ui/win/WinApplication;->getBoolean(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 106
    :cond_34
    :goto_34
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->loadMSWindowsLibraries()V

    .line 107
    invoke-static {}, Lcom/sun/glass/ui/win/WinApplication;->access$000()V

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_3c
    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lcom/sun/glass/ui/win/WinApplication;->overrideUIScale:F

    goto :goto_34
.end method
