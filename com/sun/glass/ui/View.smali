.class public abstract Lcom/sun/glass/ui/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/View$EventHandler;,
        Lcom/sun/glass/ui/View$Capability;
    }
.end annotation


# static fields
.field public static final GESTURE_NO_DOUBLE_VALUE:D = NaN

.field public static final GESTURE_NO_VALUE:I = 0x7fffffff

.field public static final IME_ATTR_CONVERTED:B = 0x2t

.field public static final IME_ATTR_INPUT:B = 0x0t

.field public static final IME_ATTR_INPUT_ERROR:B = 0x4t

.field public static final IME_ATTR_TARGET_CONVERTED:B = 0x1t

.field public static final IME_ATTR_TARGET_NOTCONVERTED:B = 0x3t

.field static final accessible:Z

.field private static clickCount:I

.field private static dragProcessed:Z

.field private static lastClickedButton:I

.field private static lastClickedTime:J

.field private static lastClickedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/glass/ui/View;",
            ">;"
        }
    .end annotation
.end field

.field private static lastClickedX:I

.field private static lastClickedY:I


# instance fields
.field private dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field private eventHandler:Lcom/sun/glass/ui/View$EventHandler;

.field private height:I

.field private inFullscreen:Z

.field private isValid:Z

.field private isVisible:Z

.field private volatile ptr:J

.field private width:I

.field private window:Lcom/sun/glass/ui/Window;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    invoke-custom {}, call_site_1031("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/View;->lambda$static$0()Ljava/lang/Boolean;, ()Ljava/lang/Boolean;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/View;->accessible:Z

    .line 901
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    .line 906
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/glass/ui/View;->dragProcessed:Z

    return-void
.end method

.method protected constructor <init>()V
    .registers 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput v1, p0, Lcom/sun/glass/ui/View;->width:I

    .line 400
    iput v1, p0, Lcom/sun/glass/ui/View;->height:I

    .line 402
    iput-boolean v0, p0, Lcom/sun/glass/ui/View;->isValid:Z

    .line 403
    iput-boolean v0, p0, Lcom/sun/glass/ui/View;->isVisible:Z

    .line 404
    iput-boolean v0, p0, Lcom/sun/glass/ui/View;->inFullscreen:Z

    .line 426
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 427
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    invoke-static {}, Lcom/sun/glass/ui/Application;->getDeviceDetails()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/View;->_create(Ljava/util/Map;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    .line 428
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not create platform view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2f
    return-void
.end method

.method private checkNotClosed()V
    .registers 5

    .line 434
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The view has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_10
    return-void
.end method

.method private getInputMethodCandidatePos(I)[D
    .registers 3

    .line 668
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_b

    .line 669
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/View$EventHandler;->getInputMethodCandidatePos(I)[D

    move-result-object v0

    .line 671
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getMultiClickMaxX()I
    .registers 1

    .line 378
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 379
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticView_getMultiClickMaxX()I

    move-result v0

    return v0
.end method

.method public static getMultiClickMaxY()I
    .registers 1

    .line 383
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 384
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticView_getMultiClickMaxY()I

    move-result v0

    return v0
.end method

.method public static getMultiClickTime()J
    .registers 2

    .line 373
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 374
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticView_getMultiClickTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private handleDragDrop(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .registers 15

    .line 713
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_12

    .line 714
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/glass/ui/View$EventHandler;->handleDragDrop(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v0

    .line 716
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private handleDragEnd(I)V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_9

    .line 683
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-virtual {v0, p0, p1}, Lcom/sun/glass/ui/View$EventHandler;->handleDragEnd(Lcom/sun/glass/ui/View;I)V

    .line 685
    :cond_9
    return-void
.end method

.method private handleDragEnter(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .registers 15

    .line 689
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_11

    .line 690
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/glass/ui/View$EventHandler;->handleDragEnter(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result p5

    .line 692
    :cond_11
    return p5
.end method

.method private handleDragLeave(Lcom/sun/glass/ui/ClipboardAssistance;)V
    .registers 3

    .line 706
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_9

    .line 707
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-virtual {v0, p0, p1}, Lcom/sun/glass/ui/View$EventHandler;->handleDragLeave(Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 709
    :cond_9
    return-void
.end method

.method private handleDragOver(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .registers 15

    .line 698
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_11

    .line 699
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/glass/ui/View$EventHandler;->handleDragOver(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result p5

    .line 701
    :cond_11
    return p5
.end method

.method private handleDragStart(IIIIILcom/sun/glass/ui/ClipboardAssistance;)V
    .registers 15

    .line 676
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_10

    .line 677
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/glass/ui/View$EventHandler;->handleDragStart(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V

    .line 679
    :cond_10
    return-void
.end method

.method private handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V
    .registers 20

    .line 648
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_14

    .line 649
    iget-object v1, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sun/glass/ui/View$EventHandler;->handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V

    .line 653
    :cond_14
    return-void
.end method

.method private handleKeyEvent(JII[CI)V
    .registers 16

    .line 547
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_f

    .line 548
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/glass/ui/View$EventHandler;->handleKeyEvent(Lcom/sun/glass/ui/View;JII[CI)V

    .line 550
    :cond_f
    return-void
.end method

.method private handleMenuEvent(IIIIZ)V
    .registers 13

    .line 564
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_f

    .line 565
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/glass/ui/View$EventHandler;->handleMenuEvent(Lcom/sun/glass/ui/View;IIIIZ)V

    .line 567
    :cond_f
    return-void
.end method

.method private handleMouseEvent(JIIIIIIIZZ)V
    .registers 25

    .line 556
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_1d

    .line 557
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/sun/glass/ui/View$EventHandler;->handleMouseEvent(Lcom/sun/glass/ui/View;JIIIIIIIZZ)V

    .line 561
    :cond_1d
    return-void
.end method

.method private handleViewEvent(JI)V
    .registers 5

    .line 540
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_9

    .line 541
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sun/glass/ui/View$EventHandler;->handleViewEvent(Lcom/sun/glass/ui/View;JI)V

    .line 543
    :cond_9
    return-void
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Boolean;
    .registers 6

    const/4 v1, 0x0

    .line 49
    const-string v0, "glass.accessible.force"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_12

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    :goto_11
    return-object v0

    .line 54
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/sun/glass/ui/Platform;->determinePlatform()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(\\d+)\\.\\d+.*"

    const-string v4, "$1"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string v3, "os.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\d+\\.(\\d+).*"

    const-string v5, "$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 58
    const-string v3, "Mac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v3, 0x3f1

    if-ge v2, v3, :cond_55

    :cond_49
    const-string v3, "Win"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v0, 0x259

    if-lt v2, v0, :cond_5b

    :cond_55
    const/4 v0, 0x1

    .line 58
    :goto_56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_59} :catch_5d

    move-result-object v0

    goto :goto_11

    :cond_5b
    move v0, v1

    .line 59
    goto :goto_56

    .line 60
    :catch_5d
    move-exception v0

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method protected abstract _begin(J)V
.end method

.method protected abstract _close(J)Z
.end method

.method protected abstract _create(Ljava/util/Map;)J
.end method

.method protected abstract _enableInputMethodEvents(JZ)V
.end method

.method protected abstract _end(J)V
.end method

.method protected abstract _enterFullscreen(JZZZ)Z
.end method

.method protected abstract _exitFullscreen(JZ)V
.end method

.method protected _finishInputMethodComposition(J)V
    .registers 3

    .line 390
    return-void
.end method

.method protected abstract _getNativeFrameBuffer(J)I
.end method

.method protected abstract _getNativeView(J)J
.end method

.method protected abstract _getX(J)I
.end method

.method protected abstract _getY(J)I
.end method

.method protected abstract _scheduleRepaint(J)V
.end method

.method protected abstract _setParent(JJ)V
.end method

.method protected abstract _uploadPixels(JLcom/sun/glass/ui/Pixels;)V
.end method

.method public close()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 511
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 512
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_d

    .line 525
    :goto_c
    return-void

    .line 515
    :cond_d
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->isInFullscreen()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 516
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/View;->_exitFullscreen(JZ)V

    .line 518
    :cond_18
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_22

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/Window;->setView(Lcom/sun/glass/ui/View;)V

    .line 522
    :cond_22
    iput-boolean v2, p0, Lcom/sun/glass/ui/View;->isValid:Z

    .line 523
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_close(J)Z

    .line 524
    iput-wide v4, p0, Lcom/sun/glass/ui/View;->ptr:J

    goto :goto_c
.end method

.method public enableInputMethodEvents(Z)V
    .registers 4

    .line 656
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 657
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 658
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/View;->_enableInputMethodEvents(JZ)V

    .line 659
    return-void
.end method

.method public enterFullscreen(ZZZ)Z
    .registers 11

    .line 784
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 785
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 786
    iget-wide v2, p0, Lcom/sun/glass/ui/View;->ptr:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/View;->_enterFullscreen(JZZZ)Z

    move-result v0

    return v0
.end method

.method public exitFullscreen(Z)V
    .registers 4

    .line 791
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 792
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 793
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/View;->_exitFullscreen(JZ)V

    .line 794
    return-void
.end method

.method public finishInputMethodComposition()V
    .registers 3

    .line 662
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 663
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 664
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_finishInputMethodComposition(J)V

    .line 665
    return-void
.end method

.method getAccessible()J
    .registers 3

    .line 1115
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1116
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 1117
    sget-boolean v0, Lcom/sun/glass/ui/View;->accessible:Z

    if-eqz v0, :cond_1a

    .line 1118
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-virtual {v0}, Lcom/sun/glass/ui/View$EventHandler;->getSceneAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    .line 1119
    if-eqz v0, :cond_1a

    .line 1120
    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Accessible;->setView(Lcom/sun/glass/ui/View;)V

    .line 1121
    invoke-virtual {v0}, Lcom/sun/glass/ui/Accessible;->getNativeAccessible()J

    move-result-wide v0

    .line 1124
    :goto_19
    return-wide v0

    :cond_1a
    const-wide/16 v0, 0x0

    goto :goto_19
.end method

.method public getEventHandler()Lcom/sun/glass/ui/View$EventHandler;
    .registers 2

    .line 528
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 529
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 489
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 490
    iget v0, p0, Lcom/sun/glass/ui/View;->height:I

    return v0
.end method

.method public getNativeFrameBuffer()I
    .registers 3

    .line 757
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_getNativeFrameBuffer(J)I

    move-result v0

    return v0
.end method

.method public getNativeRemoteLayerId(Ljava/lang/String;)I
    .registers 4

    .line 458
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 459
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This operation is not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNativeView()J
    .registers 3

    .line 451
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 452
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 453
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_getNativeView(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    .line 484
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 485
    iget v0, p0, Lcom/sun/glass/ui/View;->width:I

    return v0
.end method

.method public getWindow()Lcom/sun/glass/ui/Window;
    .registers 2

    .line 463
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 464
    iget-object v0, p0, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    return-object v0
.end method

.method public getX()I
    .registers 3

    .line 470
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 471
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 472
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_getX(J)I

    move-result v0

    return v0
.end method

.method public getY()I
    .registers 3

    .line 478
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 479
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 480
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_getY(J)I

    move-result v0

    return v0
.end method

.method public handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V
    .registers 15

    .line 571
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_e

    .line 572
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sun/glass/ui/View$EventHandler;->handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V

    .line 575
    :cond_e
    return-void
.end method

.method public handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V
    .registers 6

    .line 586
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_9

    .line 587
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/glass/ui/View$EventHandler;->handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V

    .line 589
    :cond_9
    return-void
.end method

.method public handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V
    .registers 22

    .line 580
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_16

    .line 581
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/sun/glass/ui/View$EventHandler;->handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V

    .line 583
    :cond_16
    return-void
.end method

.method public handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V
    .registers 34

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v2, :cond_25

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    invoke-virtual/range {v2 .. v17}, Lcom/sun/glass/ui/View$EventHandler;->handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V

    .line 631
    :cond_25
    return-void
.end method

.method public handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V
    .registers 54

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v2, :cond_2f

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    move-wide/from16 v24, p21

    move-wide/from16 v26, p23

    invoke-virtual/range {v3 .. v27}, Lcom/sun/glass/ui/View$EventHandler;->handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V

    .line 603
    :cond_2f
    return-void
.end method

.method public handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V
    .registers 28

    .line 638
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v0, :cond_20

    .line 639
    iget-object v0, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/sun/glass/ui/View$EventHandler;->handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V

    .line 643
    :cond_20
    return-void
.end method

.method public handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V
    .registers 42

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v2, :cond_29

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    move-wide/from16 v20, p18

    invoke-virtual/range {v2 .. v21}, Lcom/sun/glass/ui/View$EventHandler;->handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V

    .line 618
    :cond_29
    return-void
.end method

.method public isClosed()Z
    .registers 5

    .line 440
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 441
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isInFullscreen()Z
    .registers 2

    .line 797
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 798
    iget-boolean v0, p0, Lcom/sun/glass/ui/View;->inFullscreen:Z

    return v0
.end method

.method public lock()V
    .registers 3

    .line 736
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 737
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_begin(J)V

    .line 738
    return-void
.end method

.method public notifyBeginTouchEvent(IZI)V
    .registers 11

    .line 1050
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sun/glass/ui/View;->handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V

    .line 1052
    return-void
.end method

.method protected notifyDragDrop(IIIII)I
    .registers 13

    .line 1043
    iget-object v6, p0, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/glass/ui/View;->handleDragDrop(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v0

    .line 1044
    iget-object v1, p0, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v1}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1045
    return v0
.end method

.method protected notifyDragEnd(I)V
    .registers 3

    .line 1011
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/View;->handleDragEnd(I)V

    .line 1012
    iget-object v0, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v0, :cond_f

    .line 1013
    iget-object v0, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v0}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 1016
    :cond_f
    return-void
.end method

.method protected notifyDragEnter(IIIII)I
    .registers 13

    .line 1021
    new-instance v0, Lcom/sun/glass/ui/View$2;

    const-string v1, "DND"

    invoke-direct {v0, p0, v1}, Lcom/sun/glass/ui/View$2;-><init>(Lcom/sun/glass/ui/View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 1026
    iget-object v6, p0, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/glass/ui/View;->handleDragEnter(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v0

    return v0
.end method

.method protected notifyDragLeave()V
    .registers 2

    .line 1036
    iget-object v0, p0, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-direct {p0, v0}, Lcom/sun/glass/ui/View;->handleDragLeave(Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 1037
    iget-object v0, p0, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v0}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1038
    return-void
.end method

.method protected notifyDragOver(IIIII)I
    .registers 13

    .line 1031
    iget-object v6, p0, Lcom/sun/glass/ui/View;->dropTargetAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/glass/ui/View;->handleDragOver(IIIIILcom/sun/glass/ui/ClipboardAssistance;)I

    move-result v0

    return v0
.end method

.method protected notifyDragStart(IIIII)V
    .registers 13

    .line 994
    new-instance v0, Lcom/sun/glass/ui/View$1;

    const-string v1, "DND"

    invoke-direct {v0, p0, v1}, Lcom/sun/glass/ui/View$1;-><init>(Lcom/sun/glass/ui/View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 1002
    iget-object v6, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/glass/ui/View;->handleDragStart(IIIIILcom/sun/glass/ui/ClipboardAssistance;)V

    .line 1004
    iget-object v0, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v0, :cond_20

    .line 1005
    iget-object v0, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v0}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/View;->dropSourceAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 1008
    :cond_20
    return-void
.end method

.method public notifyEndTouchEvent()V
    .registers 3

    .line 1061
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/sun/glass/ui/View;->handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V

    .line 1062
    return-void
.end method

.method protected notifyInputMethod(Ljava/lang/String;[I[I[BIII)V
    .registers 18

    .line 978
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sun/glass/ui/View;->handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V

    .line 980
    return-void
.end method

.method protected notifyInputMethodCandidatePosRequest(I)[D
    .registers 6

    const-wide/16 v2, 0x0

    .line 983
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/View;->getInputMethodCandidatePos(I)[D

    move-result-object v0

    .line 984
    if-nez v0, :cond_11

    .line 985
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 986
    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 987
    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 989
    :cond_11
    return-object v0
.end method

.method protected notifyKey(II[CI)V
    .registers 13

    .line 972
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sun/glass/ui/View;->handleKeyEvent(JII[CI)V

    .line 973
    return-void
.end method

.method protected notifyMenu(IIIIZ)V
    .registers 6

    .line 895
    invoke-direct/range {p0 .. p5}, Lcom/sun/glass/ui/View;->handleMenuEvent(IIIIZ)V

    .line 896
    return-void
.end method

.method protected notifyMouse(IIIIIIIZZ)V
    .registers 23

    .line 912
    iget-object v0, p0, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    if-eqz v0, :cond_17

    .line 914
    iget-object v0, p0, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sun/glass/ui/Window;->handleMouseEvent(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 955
    :cond_16
    :goto_16
    return-void

    .line 920
    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 921
    const/16 v0, 0xdd

    if-ne p1, v0, :cond_5e

    .line 922
    sget-object v0, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_8b

    const/4 v0, 0x0

    .line 924
    :goto_24
    if-ne v0, p0, :cond_94

    sget v0, Lcom/sun/glass/ui/View;->lastClickedButton:I

    if-ne v0, p2, :cond_94

    sget-wide v0, Lcom/sun/glass/ui/View;->lastClickedTime:J

    sub-long v0, v2, v0

    const-wide/32 v4, 0xf4240

    .line 926
    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickTime()J

    move-result-wide v6

    mul-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gtz v0, :cond_94

    sget v0, Lcom/sun/glass/ui/View;->lastClickedX:I

    sub-int v0, p3, v0

    .line 927
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickMaxX()I

    move-result v1

    if-gt v0, v1, :cond_94

    sget v0, Lcom/sun/glass/ui/View;->lastClickedY:I

    sub-int v0, p4, v0

    .line 928
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickMaxY()I

    move-result v1

    if-gt v0, v1, :cond_94

    .line 930
    sget v0, Lcom/sun/glass/ui/View;->clickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sun/glass/ui/View;->clickCount:I

    .line 940
    :goto_5c
    sput-wide v2, Lcom/sun/glass/ui/View;->lastClickedTime:J

    :cond_5e
    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    .line 943
    invoke-direct/range {v1 .. v12}, Lcom/sun/glass/ui/View;->handleMouseEvent(JIIIIIIIZZ)V

    .line 946
    const/16 v0, 0xdf

    if-ne p1, v0, :cond_a5

    .line 948
    sget-boolean v0, Lcom/sun/glass/ui/View;->dragProcessed:Z

    if-nez v0, :cond_16

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 949
    invoke-virtual/range {v0 .. v5}, Lcom/sun/glass/ui/View;->notifyDragStart(IIIII)V

    .line 950
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/glass/ui/View;->dragProcessed:Z

    goto :goto_16

    .line 922
    :cond_8b
    sget-object v0, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/View;

    goto :goto_24

    .line 932
    :cond_94
    const/4 v0, 0x1

    sput v0, Lcom/sun/glass/ui/View;->clickCount:I

    .line 934
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sun/glass/ui/View;->lastClickedView:Ljava/lang/ref/WeakReference;

    .line 935
    sput p2, Lcom/sun/glass/ui/View;->lastClickedButton:I

    .line 936
    sput p3, Lcom/sun/glass/ui/View;->lastClickedX:I

    .line 937
    sput p4, Lcom/sun/glass/ui/View;->lastClickedY:I

    goto :goto_5c

    .line 953
    :cond_a5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/glass/ui/View;->dragProcessed:Z

    goto/16 :goto_16
.end method

.method public notifyNextTouchEvent(IJIIII)V
    .registers 20

    .line 1056
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/sun/glass/ui/View;->handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V

    .line 1058
    return-void
.end method

.method protected notifyRepaint(IIII)V
    .registers 6

    .line 888
    const/16 v0, 0x1a5

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/View;->notifyView(I)V

    .line 889
    return-void
.end method

.method protected notifyResize(II)V
    .registers 6

    .line 875
    iget v0, p0, Lcom/sun/glass/ui/View;->width:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/sun/glass/ui/View;->height:I

    if-ne v0, p2, :cond_9

    .line 882
    :goto_8
    return-void

    .line 879
    :cond_9
    iput p1, p0, Lcom/sun/glass/ui/View;->width:I

    .line 880
    iput p2, p0, Lcom/sun/glass/ui/View;->height:I

    .line 881
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x1a6

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    goto :goto_8
.end method

.method public notifyRotateGestureEvent(IIZZIIIIDD)V
    .registers 30

    .line 1092
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    invoke-virtual/range {v0 .. v15}, Lcom/sun/glass/ui/View;->handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V

    .line 1095
    return-void
.end method

.method protected notifyScroll(IIIIDDIIIIIDD)V
    .registers 41

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    if-eqz v2, :cond_2d

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    invoke-virtual/range {v2 .. v22}, Lcom/sun/glass/ui/View$EventHandler;->handleScrollEvent(Lcom/sun/glass/ui/View;JIIIIDDIIIIIDD)V

    .line 969
    :cond_2d
    return-void
.end method

.method public notifyScrollGestureEvent(IIZZIIIIIDDDDDD)V
    .registers 48

    .line 1070
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    move-wide/from16 v20, p16

    move-wide/from16 v22, p18

    move-wide/from16 v24, p20

    invoke-virtual/range {v1 .. v25}, Lcom/sun/glass/ui/View;->handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V

    .line 1073
    return-void
.end method

.method public notifySwipeGestureEvent(IIZZIIIIII)V
    .registers 25

    .line 1102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lcom/sun/glass/ui/View;->handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V

    .line 1105
    return-void
.end method

.method protected notifyView(I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 824
    const/16 v2, 0x1a5

    if-ne p1, v2, :cond_12

    .line 825
    iget-boolean v0, p0, Lcom/sun/glass/ui/View;->isValid:Z

    if-eqz v0, :cond_11

    .line 826
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    .line 872
    :cond_11
    :goto_11
    return-void

    .line 833
    :cond_12
    sparse-switch p1, :sswitch_data_5a

    .line 860
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p1}, call_site_2600("makeConcatWithConstants", (I)Ljava/lang/String;, "Unknown view event type: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 835
    :sswitch_1f
    iput-boolean v1, p0, Lcom/sun/glass/ui/View;->isValid:Z

    .line 864
    :cond_21
    :goto_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    .line 866
    if-eqz v0, :cond_11

    .line 869
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x1a7

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/glass/ui/View;->handleViewEvent(JI)V

    goto :goto_11

    .line 839
    :sswitch_34
    iput-boolean v0, p0, Lcom/sun/glass/ui/View;->isValid:Z

    goto :goto_21

    .line 843
    :sswitch_37
    iput-boolean v0, p0, Lcom/sun/glass/ui/View;->inFullscreen:Z

    .line 845
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 846
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/glass/ui/Window;->notifyFullscreen(Z)V

    goto :goto_21

    .line 850
    :sswitch_47
    iput-boolean v1, p0, Lcom/sun/glass/ui/View;->inFullscreen:Z

    .line 852
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 853
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/glass/ui/Window;->notifyFullscreen(Z)V

    goto :goto_21

    :sswitch_57
    move v0, v1

    .line 858
    goto :goto_21

    .line 833
    nop

    :sswitch_data_5a
    .sparse-switch
        0x19b -> :sswitch_34
        0x19c -> :sswitch_1f
        0x1a6 -> :sswitch_57
        0x1a7 -> :sswitch_57
        0x1af -> :sswitch_37
        0x1b0 -> :sswitch_47
    .end sparse-switch
.end method

.method public notifyZoomGestureEvent(IIZZIIIIDDDD)V
    .registers 38

    .line 1081
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-virtual/range {v0 .. v19}, Lcom/sun/glass/ui/View;->handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V

    .line 1085
    return-void
.end method

.method public scheduleRepaint()V
    .registers 3

    .line 725
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 726
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 727
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_scheduleRepaint(J)V

    .line 728
    return-void
.end method

.method public setEventHandler(Lcom/sun/glass/ui/View$EventHandler;)V
    .registers 2

    .line 533
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 534
    iput-object p1, p0, Lcom/sun/glass/ui/View;->eventHandler:Lcom/sun/glass/ui/View$EventHandler;

    .line 535
    return-void
.end method

.method setVisible(Z)V
    .registers 2

    .line 506
    iput-boolean p1, p0, Lcom/sun/glass/ui/View;->isVisible:Z

    .line 507
    return-void
.end method

.method setWindow(Lcom/sun/glass/ui/Window;)V
    .registers 8

    const-wide/16 v2, 0x0

    .line 497
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 498
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 499
    iput-object p1, p0, Lcom/sun/glass/ui/View;->window:Lcom/sun/glass/ui/Window;

    .line 500
    iget-wide v4, p0, Lcom/sun/glass/ui/View;->ptr:J

    if-nez p1, :cond_1e

    move-wide v0, v2

    :goto_f
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/sun/glass/ui/View;->_setParent(JJ)V

    .line 501
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/sun/glass/ui/View;->isValid:Z

    .line 502
    return-void

    .line 500
    :cond_1e
    invoke-virtual {p1}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v0

    goto :goto_f

    .line 501
    :cond_23
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public toggleFullscreen(ZZZ)Z
    .registers 6

    .line 802
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 803
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 804
    iget-boolean v0, p0, Lcom/sun/glass/ui/View;->inFullscreen:Z

    if-nez v0, :cond_15

    .line 805
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/glass/ui/View;->enterFullscreen(ZZZ)Z

    .line 810
    :goto_d
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_scheduleRepaint(J)V

    .line 812
    iget-boolean v0, p0, Lcom/sun/glass/ui/View;->inFullscreen:Z

    return v0

    .line 807
    :cond_15
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/View;->exitFullscreen(Z)V

    goto :goto_d
.end method

.method public unlock()V
    .registers 3

    .line 747
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 748
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/View;->_end(J)V

    .line 749
    return-void
.end method

.method public updateLocation()V
    .registers 2

    .line 816
    const/16 v0, 0x1a7

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/View;->notifyView(I)V

    .line 817
    return-void
.end method

.method public uploadPixels(Lcom/sun/glass/ui/Pixels;)V
    .registers 4

    .line 769
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 770
    invoke-direct {p0}, Lcom/sun/glass/ui/View;->checkNotClosed()V

    .line 771
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->lock()V

    .line 773
    :try_start_9
    iget-wide v0, p0, Lcom/sun/glass/ui/View;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/View;->_uploadPixels(JLcom/sun/glass/ui/Pixels;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 775
    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->unlock()V

    .line 777
    return-void

    .line 775
    :catchall_12
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/glass/ui/View;->unlock()V

    .line 776
    throw v0
.end method
