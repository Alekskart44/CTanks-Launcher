.class public Lcom/sun/glass/ui/Window$EventHandler;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLevelEvent(I)V
    .registers 2

    .line 77
    return-void
.end method

.method public handleScreenChangedEvent(Lcom/sun/glass/ui/Window;JLcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V
    .registers 6

    .line 68
    return-void
.end method

.method public handleWindowEvent(Lcom/sun/glass/ui/Window;JI)V
    .registers 5

    .line 42
    return-void
.end method
