.class final Lcom/sun/glass/ui/win/WinCommonDialogs;
.super Ljava/lang/Object;
.source "WinCommonDialogs.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/sun/glass/ui/win/WinCommonDialogs;->_initIDs()V

    .line 43
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _initIDs()V
.end method

.method private static native _showFileChooser(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
.end method

.method private static native _showFolderChooser(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static showFileChooser_impl(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .registers 17

    .line 52
    if-eqz p0, :cond_9

    move-object v0, p0

    .line 53
    check-cast v0, Lcom/sun/glass/ui/win/WinWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/win/WinWindow;->setDeferredClosing(Z)V

    .line 56
    :cond_9
    if-eqz p0, :cond_24

    :try_start_b
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v0

    :goto_f
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/sun/glass/ui/win/WinCommonDialogs;->_showFileChooser(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_27

    move-result-object v0

    .line 59
    if-eqz p0, :cond_23

    .line 60
    check-cast p0, Lcom/sun/glass/ui/win/WinWindow;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinWindow;->setDeferredClosing(Z)V

    .line 56
    :cond_23
    return-object v0

    :cond_24
    const-wide/16 v0, 0x0

    goto :goto_f

    .line 59
    :catchall_27
    move-exception v0

    if-eqz p0, :cond_30

    .line 60
    check-cast p0, Lcom/sun/glass/ui/win/WinWindow;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinWindow;->setDeferredClosing(Z)V

    .line 62
    :cond_30
    throw v0
.end method

.method static showFolderChooser_impl(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const/4 v2, 0x0

    .line 66
    if-eqz p0, :cond_a

    move-object v0, p0

    .line 67
    check-cast v0, Lcom/sun/glass/ui/win/WinWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/win/WinWindow;->setDeferredClosing(Z)V

    .line 70
    :cond_a
    if-eqz p0, :cond_23

    :try_start_c
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v0

    :goto_10
    invoke-static {v0, v1, p1, p2}, Lcom/sun/glass/ui/win/WinCommonDialogs;->_showFolderChooser(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_26

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_28

    .line 73
    :goto_1b
    if-eqz p0, :cond_22

    .line 74
    check-cast p0, Lcom/sun/glass/ui/win/WinWindow;

    invoke-virtual {p0, v2}, Lcom/sun/glass/ui/win/WinWindow;->setDeferredClosing(Z)V

    .line 71
    :cond_22
    return-object v0

    .line 70
    :cond_23
    const-wide/16 v0, 0x0

    goto :goto_10

    .line 71
    :cond_26
    const/4 v0, 0x0

    goto :goto_1b

    .line 73
    :catchall_28
    move-exception v0

    if-eqz p0, :cond_30

    .line 74
    check-cast p0, Lcom/sun/glass/ui/win/WinWindow;

    invoke-virtual {p0, v2}, Lcom/sun/glass/ui/win/WinWindow;->setDeferredClosing(Z)V

    .line 76
    :cond_30
    throw v0
.end method
