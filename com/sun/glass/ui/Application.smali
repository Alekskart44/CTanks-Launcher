.class public abstract Lcom/sun/glass/ui/Application;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Application$EventHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "java"

.field private static application:Lcom/sun/glass/ui/Application;

.field private static volatile deviceDetails:Ljava/util/Map;

.field private static final disableThreadChecks:Z

.field private static eventThread:Ljava/lang/Thread;

.field private static loaded:Z

.field private static nestedEventLoopCounter:I


# instance fields
.field private eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

.field private initialActiveEventReceived:Z

.field private initialOpenedFiles:[Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field private terminateWhenLastWindowClosed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 96
    sput-boolean v1, Lcom/sun/glass/ui/Application;->loaded:Z

    .line 100
    invoke-custom {}, call_site_82("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/Application;->lambda$static$0()Ljava/lang/Boolean;, ()Ljava/lang/Boolean;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 101
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/Application;->disableThreadChecks:Z

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Application;->deviceDetails:Ljava/util/Map;

    .line 491
    sput v1, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "java"

    iput-object v0, p0, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/glass/ui/Application;->initialActiveEventReceived:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/Application;->terminateWhenLastWindowClosed:Z

    .line 139
    return-void
.end method

.method public static GetApplication()Lcom/sun/glass/ui/Application;
    .registers 1

    .line 408
    sget-object v0, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    return-object v0
.end method

.method public static checkEventThread()V
    .registers 2

    .line 442
    sget-boolean v0, Lcom/sun/glass/ui/Application;->disableThreadChecks:Z

    if-nez v0, :cond_1e

    .line 443
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1e

    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 447
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_2181("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "This operation is permitted on the event thread only; currentThread = \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1e
    return-void
.end method

.method static createPixels(II[IFF)Lcom/sun/glass/ui/Pixels;
    .registers 11

    .line 633
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v3

    move v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/IntBuffer;FF)Lcom/sun/glass/ui/Pixels;

    move-result-object v0

    return-object v0
.end method

.method static enterNestedEventLoop()Ljava/lang/Object;
    .registers 2

    .line 511
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 513
    sget v0, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    .line 515
    :try_start_9
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->_enterNestedEventLoop()Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_18

    move-result-object v0

    .line 517
    sget v1, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    .line 515
    return-object v0

    .line 517
    :catchall_18
    move-exception v0

    sget v1, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    .line 518
    throw v0
.end method

.method public static getDeviceDetails()Ljava/util/Map;
    .registers 1

    .line 135
    sget-object v0, Lcom/sun/glass/ui/Application;->deviceDetails:Ljava/util/Map;

    return-object v0
.end method

.method protected static getEventThread()Ljava/lang/Thread;
    .registers 1

    .line 418
    sget-object v0, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getKeyCodeForChar(C)I
    .registers 2

    .line 752
    sget-object v0, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Application;->_getKeyCodeForChar(C)I

    move-result v0

    return v0
.end method

.method static getScaleFactor(IIII)F
    .registers 12

    const/4 v2, 0x0

    .line 638
    .line 640
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Screen;

    .line 641
    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v5

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v7

    .line 642
    add-int/2addr v6, v4

    if-ge p0, v6, :cond_57

    add-int v6, p0, p2

    if-le v6, v4, :cond_57

    add-int v4, v5, v7

    if-ge p1, v4, :cond_57

    add-int v4, p1, p3

    if-le v4, v5, :cond_57

    .line 643
    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleX()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_41

    .line 644
    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleX()F

    move-result v1

    .line 646
    :cond_41
    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleY()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_57

    .line 647
    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleY()F

    move-result v1

    move v0, v1

    :goto_4e
    move v1, v0

    .line 650
    goto :goto_a

    .line 651
    :cond_50
    cmpl-float v0, v1, v2

    if-nez v0, :cond_56

    const/high16 v1, 0x3f800000  # 1.0f

    :cond_56
    return v1

    :cond_57
    move v0, v1

    goto :goto_4e
.end method

.method public static invokeAndWait(Ljava/lang/Runnable;)V
    .registers 2

    .line 466
    if-nez p0, :cond_3

    .line 474
    :goto_2
    return-void

    .line 469
    :cond_3
    invoke-static {}, Lcom/sun/glass/ui/Application;->isEventThread()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 470
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 472
    :cond_d
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Application;->_invokeAndWait(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public static invokeLater(Ljava/lang/Runnable;)V
    .registers 2

    .line 482
    if-nez p0, :cond_3

    .line 486
    :goto_2
    return-void

    .line 485
    :cond_3
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Application;->_invokeLater(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public static isEventThread()Z
    .registers 2

    .line 425
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNestedLoopRunning()Z
    .registers 1

    .line 548
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 549
    sget v0, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static synthetic lambda$getDataDirectory$2()Ljava/lang/String;
    .registers 1

    .line 219
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$run$1(Ljava/lang/Runnable;)V
    .registers 1

    .line 154
    invoke-static {}, Lcom/sun/glass/ui/Screen;->initScreens()V

    .line 155
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 156
    return-void
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Boolean;
    .registers 2

    .line 102
    const-string v0, "glass.disableThreadChecks"

    const-string v1, "false"

    .line 103
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static leaveNestedEventLoop(Ljava/lang/Object;)V
    .registers 3

    .line 538
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 540
    sget v0, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    if-nez v0, :cond_f

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in a nested event loop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_f
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Application;->_leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method protected static declared-synchronized loadNativeLibrary()V
    .registers 2

    .line 120
    const-class v1, Lcom/sun/glass/ui/Application;

    monitor-enter v1

    :try_start_3
    const-string v0, "glass"

    invoke-static {v0}, Lcom/sun/glass/ui/Application;->loadNativeLibrary(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 121
    monitor-exit v1

    return-void

    .line 120
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized loadNativeLibrary(Ljava/lang/String;)V
    .registers 3

    .line 111
    const-class v1, Lcom/sun/glass/ui/Application;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/sun/glass/ui/Application;->loaded:Z

    if-nez v0, :cond_d

    .line 112
    invoke-static {p0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/glass/ui/Application;->loaded:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 115
    :cond_d
    monitor-exit v1

    return-void

    .line 111
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reportException(Ljava/lang/Throwable;)V
    .registers 3

    .line 454
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 457
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 458
    return-void
.end method

.method public static run(Ljava/lang/Runnable;)V
    .registers 3

    .line 143
    sget-object v0, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    if-eqz v0, :cond_c

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_c
    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/PlatformFactory;->createApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    .line 153
    :try_start_16
    sget-object v0, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    invoke-custom {p0}, call_site_263("run", (Ljava/lang/Runnable;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/glass/ui/Application;->lambda$run$1(Ljava/lang/Runnable;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/Application;->runLoop(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_20

    .line 160
    :goto_1f
    return-void

    .line 157
    :catch_20
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method

.method public static setDeviceDetails(Ljava/util/Map;)V
    .registers 1

    .line 130
    sput-object p0, Lcom/sun/glass/ui/Application;->deviceDetails:Ljava/util/Map;

    .line 131
    return-void
.end method

.method protected static setEventThread(Ljava/lang/Thread;)V
    .registers 1

    .line 413
    sput-object p0, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    .line 414
    return-void
.end method


# virtual methods
.method protected abstract _enterNestedEventLoop()Ljava/lang/Object;
.end method

.method protected abstract _getKeyCodeForChar(C)I
.end method

.method protected abstract _invokeAndWait(Ljava/lang/Runnable;)V
.end method

.method protected abstract _invokeLater(Ljava/lang/Runnable;)V
.end method

.method protected _isKeyLocked(I)I
    .registers 3

    .line 757
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract _leaveNestedEventLoop(Ljava/lang/Object;)V
.end method

.method protected _supportsInputMethods()Z
    .registers 2

    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method protected _supportsSystemMenu()Z
    .registers 2

    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract _supportsTransparentWindows()Z
.end method

.method protected abstract _supportsUnifiedWindows()Z
.end method

.method public createAccessible()Lcom/sun/glass/ui/Accessible;
    .registers 2

    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createCursor(I)Lcom/sun/glass/ui/Cursor;
.end method

.method public abstract createCursor(IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/Cursor;
.end method

.method public final createEventLoop()Lcom/sun/glass/ui/EventLoop;
    .registers 2

    .line 665
    new-instance v0, Lcom/sun/glass/ui/EventLoop;

    invoke-direct {v0}, Lcom/sun/glass/ui/EventLoop;-><init>()V

    return-object v0
.end method

.method public final createMenu(Ljava/lang/String;)Lcom/sun/glass/ui/Menu;
    .registers 3

    .line 597
    new-instance v0, Lcom/sun/glass/ui/Menu;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/Menu;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final createMenu(Ljava/lang/String;Z)Lcom/sun/glass/ui/Menu;
    .registers 4

    .line 601
    new-instance v0, Lcom/sun/glass/ui/Menu;

    invoke-direct {v0, p1, p2}, Lcom/sun/glass/ui/Menu;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final createMenuBar()Lcom/sun/glass/ui/MenuBar;
    .registers 2

    .line 605
    new-instance v0, Lcom/sun/glass/ui/MenuBar;

    invoke-direct {v0}, Lcom/sun/glass/ui/MenuBar;-><init>()V

    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;)Lcom/sun/glass/ui/MenuItem;
    .registers 3

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/glass/ui/Application;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)Lcom/sun/glass/ui/MenuItem;
    .registers 4

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sun/glass/ui/Application;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)Lcom/sun/glass/ui/MenuItem;
    .registers 11

    .line 618
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/glass/ui/Application;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/MenuItem;
    .registers 12

    .line 623
    new-instance v0, Lcom/sun/glass/ui/MenuItem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)V

    return-object v0
.end method

.method public abstract createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;
.end method

.method public abstract createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;
.end method

.method public abstract createPixels(IILjava/nio/IntBuffer;FF)Lcom/sun/glass/ui/Pixels;
.end method

.method public abstract createRobot()Lcom/sun/glass/ui/GlassRobot;
.end method

.method public abstract createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;
.end method

.method public abstract createView()Lcom/sun/glass/ui/View;
.end method

.method public abstract createWindow(J)Lcom/sun/glass/ui/Window;
.end method

.method public final createWindow(Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
    .registers 4

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/glass/ui/Application;->createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;

    move-result-object v0

    return-object v0
.end method

.method public abstract createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
.end method

.method protected finishTerminating()V
    .registers 2

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    .line 170
    return-void
.end method

.method public getDataDirectory()Ljava/lang/String;
    .registers 5

    .line 217
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 219
    invoke-custom {}, call_site_1257("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/Application;->lambda$getDataDirectory$2()Ljava/lang/String;, ()Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-custom {v0, v1, v2, v3}, call_site_86("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001\u0001.\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/sun/glass/ui/Application;->eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

    return-object v0
.end method

.method public getHighContrastScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 680
    return-object p1
.end method

.method public getHighContrastTheme()Ljava/lang/String;
    .registers 2

    .line 688
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 183
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 184
    iget-object v0, p0, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasMultiTouch()Z
    .registers 2

    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public hasPointer()Z
    .registers 2

    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public hasTouch()Z
    .registers 2

    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public hasTwoLevelFocus()Z
    .registers 2

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public hasVirtualKeyboard()Z
    .registers 2

    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public hasWindowManager()Z
    .registers 2

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public installDefaultMenus(Lcom/sun/glass/ui/MenuBar;)V
    .registers 2

    .line 338
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 340
    return-void
.end method

.method public final isKeyLocked(I)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 761
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 762
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/Application;->_isKeyLocked(I)I

    move-result v0

    .line 763
    packed-switch v0, :pswitch_data_24

    .line 769
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_e
    return-object v0

    .line 765
    :pswitch_f  #0x0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_e

    .line 767
    :pswitch_19  #0x1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_e

    .line 763
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_19  #00000001
    .end packed-switch
.end method

.method public menuAboutAction()V
    .registers 3

    .line 554
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "about"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method protected notifyDidBecomeActive()V
    .registers 5

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/Application;->initialActiveEventReceived:Z

    .line 249
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_10

    .line 251
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 253
    :cond_10
    return-void
.end method

.method protected notifyDidFinishLaunching()V
    .registers 5

    .line 234
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_d

    .line 236
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V

    .line 238
    :cond_d
    return-void
.end method

.method protected notifyDidHide()V
    .registers 5

    .line 292
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_d

    .line 294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidHideAction(Lcom/sun/glass/ui/Application;J)V

    .line 296
    :cond_d
    return-void
.end method

.method protected notifyDidReceiveMemoryWarning()V
    .registers 5

    .line 278
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_d

    .line 280
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidReceiveMemoryWarning(Lcom/sun/glass/ui/Application;J)V

    .line 282
    :cond_d
    return-void
.end method

.method protected notifyDidResignActive()V
    .registers 5

    .line 271
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_d

    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidResignActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 275
    :cond_d
    return-void
.end method

.method protected notifyDidUnhide()V
    .registers 5

    .line 306
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_d

    .line 308
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidUnhideAction(Lcom/sun/glass/ui/Application;J)V

    .line 310
    :cond_d
    return-void
.end method

.method protected notifyOpenFiles([Ljava/lang/String;)V
    .registers 6

    .line 314
    iget-boolean v0, p0, Lcom/sun/glass/ui/Application;->initialActiveEventReceived:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    if-nez v0, :cond_a

    .line 316
    iput-object p1, p0, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    .line 318
    :cond_a
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 320
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/sun/glass/ui/Application$EventHandler;->handleOpenFilesAction(Lcom/sun/glass/ui/Application;J[Ljava/lang/String;)V

    .line 322
    :cond_19
    return-void
.end method

.method public notifyRenderingFinished()V
    .registers 1

    .line 385
    return-void
.end method

.method protected notifyThemeChanged(Ljava/lang/String;)Z
    .registers 3

    .line 263
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_b

    .line 265
    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/Application$EventHandler;->handleThemeChanged(Ljava/lang/String;)Z

    move-result v0

    .line 267
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected notifyWillBecomeActive()V
    .registers 5

    .line 241
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_d

    .line 243
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 245
    :cond_d
    return-void
.end method

.method protected notifyWillFinishLaunching()V
    .registers 5

    .line 227
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_d

    .line 229
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V

    .line 231
    :cond_d
    return-void
.end method

.method protected notifyWillHide()V
    .registers 5

    .line 285
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_d

    .line 287
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillHideAction(Lcom/sun/glass/ui/Application;J)V

    .line 289
    :cond_d
    return-void
.end method

.method protected notifyWillQuit()V
    .registers 5

    .line 325
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_d

    .line 327
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleQuitAction(Lcom/sun/glass/ui/Application;J)V

    .line 329
    :cond_d
    return-void
.end method

.method protected notifyWillResignActive()V
    .registers 5

    .line 256
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_d

    .line 258
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillResignActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 260
    :cond_d
    return-void
.end method

.method protected notifyWillUnhide()V
    .registers 5

    .line 299
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_d

    .line 301
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillUnhideAction(Lcom/sun/glass/ui/Application;J)V

    .line 303
    :cond_d
    return-void
.end method

.method protected abstract runLoop(Ljava/lang/Runnable;)V
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Application$EventHandler;)V
    .registers 4

    const/4 v1, 0x1

    .line 350
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 351
    iget-object v0, p0, Lcom/sun/glass/ui/Application;->eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    if-eqz v0, :cond_17

    move v0, v1

    .line 352
    :goto_d
    iput-object p1, p0, Lcom/sun/glass/ui/Application;->eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

    .line 353
    if-ne v0, v1, :cond_16

    .line 355
    iget-object v0, p0, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Application;->notifyOpenFiles([Ljava/lang/String;)V

    .line 357
    :cond_16
    return-void

    .line 351
    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    .line 200
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 201
    if-eqz p1, :cond_11

    const-string v0, "java"

    iget-object v1, p0, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 202
    iput-object p1, p0, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    .line 204
    :cond_11
    return-void
.end method

.method public final setTerminateWhenLastWindowClosed(Z)V
    .registers 2

    .line 365
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 366
    iput-boolean p1, p0, Lcom/sun/glass/ui/Application;->terminateWhenLastWindowClosed:Z

    .line 367
    return-void
.end method

.method public final shouldTerminateWhenLastWindowClosed()Z
    .registers 2

    .line 361
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 362
    iget-boolean v0, p0, Lcom/sun/glass/ui/Application;->terminateWhenLastWindowClosed:Z

    return v0
.end method

.method public shouldUpdateWindow()Z
    .registers 2

    .line 370
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
.end method

.method protected abstract staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method protected abstract staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;
.end method

.method protected abstract staticCursor_setVisible(Z)V
.end method

.method protected abstract staticPixels_getNativeFormat()I
.end method

.method protected abstract staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;
.end method

.method protected abstract staticScreen_getVideoRefreshPeriod()D
.end method

.method protected abstract staticTimer_getMaxPeriod()I
.end method

.method protected abstract staticTimer_getMinPeriod()I
.end method

.method protected abstract staticView_getMultiClickMaxX()I
.end method

.method protected abstract staticView_getMultiClickMaxY()I
.end method

.method protected abstract staticView_getMultiClickTime()J
.end method

.method public final supportsInputMethods()Z
    .registers 2

    .line 697
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 698
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->_supportsInputMethods()Z

    move-result v0

    return v0
.end method

.method public final supportsSystemMenu()Z
    .registers 2

    .line 738
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 739
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->_supportsSystemMenu()Z

    move-result v0

    return v0
.end method

.method public final supportsTransparentWindows()Z
    .registers 2

    .line 703
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 704
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->_supportsTransparentWindows()Z

    move-result v0

    return v0
.end method

.method public final supportsUnifiedWindows()Z
    .registers 2

    .line 729
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 730
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->_supportsUnifiedWindows()Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .registers 5

    .line 388
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 390
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {}, Lcom/sun/glass/ui/Window;->getWindows()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 391
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Window;

    .line 393
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sun/glass/ui/Window;->setVisible(Z)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_20} :catch_21
    .catchall {:try_start_3 .. :try_end_20} :catchall_3d

    goto :goto_10

    .line 399
    :catch_21
    move-exception v0

    .line 400
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3d

    .line 402
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 404
    :goto_28
    return-void

    .line 395
    :cond_29
    :try_start_29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Window;

    .line 397
    invoke-virtual {v0}, Lcom/sun/glass/ui/Window;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_3c} :catch_21
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3d

    goto :goto_2d

    .line 402
    :catchall_3d
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 403
    throw v0

    .line 402
    :cond_42
    invoke-virtual {p0}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    goto :goto_28
.end method
