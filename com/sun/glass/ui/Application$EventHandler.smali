.class public Lcom/sun/glass/ui/Application$EventHandler;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDidBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 58
    return-void
.end method

.method public handleDidFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 52
    return-void
.end method

.method public handleDidHideAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 73
    return-void
.end method

.method public handleDidReceiveMemoryWarning(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 67
    return-void
.end method

.method public handleDidResignActiveAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 64
    return-void
.end method

.method public handleDidUnhideAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 79
    return-void
.end method

.method public handleOpenFilesAction(Lcom/sun/glass/ui/Application;J[Ljava/lang/String;)V
    .registers 5

    .line 83
    return-void
.end method

.method public handleQuitAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 86
    return-void
.end method

.method public handleThemeChanged(Ljava/lang/String;)Z
    .registers 3

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public handleWillBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 55
    return-void
.end method

.method public handleWillFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 49
    return-void
.end method

.method public handleWillHideAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 70
    return-void
.end method

.method public handleWillResignActiveAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 61
    return-void
.end method

.method public handleWillUnhideAction(Lcom/sun/glass/ui/Application;J)V
    .registers 4

    .line 76
    return-void
.end method
