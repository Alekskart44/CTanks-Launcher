.class public Lcom/sun/glass/ui/View$EventHandler;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputMethodCandidatePos(I)[D
    .registers 3

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSceneAccessible()Lcom/sun/glass/ui/Accessible;
    .registers 2

    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V
    .registers 7

    .line 160
    return-void
.end method

.method public handleDragDrop(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .registers 9

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public handleDragEnd(Lcom/sun/glass/ui/View;I)V
    .registers 3

    .line 127
    return-void
.end method

.method public handleDragEnter(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .registers 8

    .line 131
    return p6
.end method

.method public handleDragLeave(Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/ClipboardAssistance;)V
    .registers 3

    .line 140
    return-void
.end method

.method public handleDragOver(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .registers 8

    .line 136
    return p6
.end method

.method public handleDragStart(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V
    .registers 8

    .line 124
    return-void
.end method

.method public handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V
    .registers 4

    .line 204
    return-void
.end method

.method public handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V
    .registers 9

    .line 116
    return-void
.end method

.method public handleKeyEvent(Lcom/sun/glass/ui/View;JII[CI)V
    .registers 8

    .line 70
    return-void
.end method

.method public handleMenuEvent(Lcom/sun/glass/ui/View;IIIIZ)V
    .registers 7

    .line 73
    return-void
.end method

.method public handleMouseEvent(Lcom/sun/glass/ui/View;JIIIIIIIZZ)V
    .registers 13

    .line 78
    return-void
.end method

.method public handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V
    .registers 11

    .line 195
    return-void
.end method

.method public handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V
    .registers 16

    .line 342
    return-void
.end method

.method public handleScrollEvent(Lcom/sun/glass/ui/View;JIIIIDDIIIIIDD)V
    .registers 21

    .line 110
    return-void
.end method

.method public handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V
    .registers 25

    .line 275
    return-void
.end method

.method public handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V
    .registers 14

    .line 365
    return-void
.end method

.method public handleViewEvent(Lcom/sun/glass/ui/View;JI)V
    .registers 5

    .line 67
    return-void
.end method

.method public handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V
    .registers 20

    .line 317
    return-void
.end method
