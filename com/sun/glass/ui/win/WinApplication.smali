.class final Lcom/sun/glass/ui/win/WinApplication;
.super Lcom/sun/glass/ui/Application;
.source "WinApplication.java"

# interfaces
.implements Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;


# static fields
.field private static final BASE_NAME:Ljava/lang/String; = "com/sun/glass/ui/win/themes"

.field private static final Process_DPI_Unaware:I = 0x0

.field private static final Process_Per_Monitor_DPI_Aware:I = 0x2

.field private static final Process_System_DPI_Aware:I = 0x1

.field static overrideUIScale:F

.field private static verbose:Z


# instance fields
.field private final invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Lcom/sun/glass/ui/win/WinApplication$1;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinApplication$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    .line 111
    sget v0, Lcom/sun/glass/ui/win/WinApplication;->overrideUIScale:F

    invoke-static {v0}, Lcom/sun/glass/ui/win/WinApplication;->initIDs(F)V

    .line 112
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/sun/glass/ui/Application;-><init>()V

    .line 118
    invoke-custom {}, call_site_1208("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/win/WinApplication;->lambda$new$0()Ljava/lang/Boolean;, ()Ljava/lang/Boolean;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 120
    if-nez v0, :cond_20

    .line 121
    new-instance v0, Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-direct {v0, p0}, Lcom/sun/glass/ui/InvokeLaterDispatcher;-><init>(Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;)V

    iput-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    .line 122
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->start()V

    .line 126
    :goto_1f
    return-void

    .line 124
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    goto :goto_1f
.end method

.method private native _enterNestedEventLoopImpl()Ljava/lang/Object;
.end method

.method private native _getHighContrastTheme()Ljava/lang/String;
.end method

.method private native _init(I)J
.end method

.method private native _leaveNestedEventLoopImpl(Ljava/lang/Object;)V
.end method

.method private native _runLoop(Ljava/lang/Runnable;)V
.end method

.method private native _setClassLoader(Ljava/lang/ClassLoader;)V
.end method

.method private native _submitForLaterInvocation(Ljava/lang/Runnable;)V
.end method

.method private native _terminateLoop()V
.end method

.method static synthetic access$000()V
    .registers 0

    .line 43
    invoke-static {}, Lcom/sun/glass/ui/win/WinApplication;->loadNativeLibrary()V

    return-void
.end method

.method private static getBoolean(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6

    .line 48
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_a

    .line 50
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_a
    if-nez v0, :cond_d

    .line 59
    :goto_c
    return p1

    .line 55
    :cond_d
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 56
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v0, :cond_2a

    .line 57
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, ""

    :goto_23
    invoke-custom {v0, p2}, call_site_616("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_c

    .line 57
    :cond_2f
    const-string v0, "not "

    goto :goto_23
.end method

.method private static getDesiredAwarenesslevel()I
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 141
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-nez v0, :cond_8

    move v0, v1

    .line 161
    :goto_7
    return v0

    .line 145
    :cond_8
    invoke-custom {}, call_site_869("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/win/WinApplication;->lambda$getDesiredAwarenesslevel$1()Ljava/lang/String;, ()Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 146
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    if-eqz v0, :cond_3f

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v3, "aware"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 151
    const/4 v0, 0x1

    goto :goto_7

    .line 152
    :cond_22
    const-string v3, "permonitor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move v0, v2

    .line 153
    goto :goto_7

    .line 155
    :cond_2c
    const-string v2, "unaware"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 156
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v0}, call_site_1100("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "unrecognized DPI awareness request, defaulting to unaware: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    move v0, v1

    .line 158
    goto :goto_7

    :cond_3f
    move v0, v2

    .line 161
    goto :goto_7
.end method

.method private static getFloat(Ljava/lang/String;FLjava/lang/String;)F
    .registers 6

    const/4 v2, 0x0

    .line 63
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez v0, :cond_b

    .line 65
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_b
    if-nez v0, :cond_e

    .line 82
    :goto_d
    return p1

    .line 70
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    .line 79
    :goto_2c
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_39

    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-custom {p2, v0}, call_site_2281("makeConcatWithConstants", (Ljava/lang/String;F)Ljava/lang/String;, "\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_39
    move p1, v0

    .line 82
    goto :goto_d

    .line 74
    :cond_3b
    const-string v1, "DPI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 75
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c00000  # 96.0f

    div-float/2addr v0, v1

    goto :goto_2c

    .line 77
    :cond_5e
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_2c
.end method

.method private static native initIDs(F)V
.end method

.method private static synthetic lambda$getDataDirectory$5()Ljava/lang/String;
    .registers 1

    .line 368
    const-string v0, "APPDATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getDesiredAwarenesslevel$1()Ljava/lang/String;
    .registers 1

    .line 147
    const-string v0, "javafx.glass.winDPIawareness"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$0()Ljava/lang/Boolean;
    .registers 1

    .line 119
    const-string v0, "javafx.embed.isEventThread"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$runLoop$2()Ljava/lang/Boolean;
    .registers 1

    .line 168
    const-string v0, "javafx.embed.isEventThread"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$runLoop$3(ILjava/lang/Runnable;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/win/WinApplication;->_init(I)J

    .line 184
    invoke-direct {p0, p2}, Lcom/sun/glass/ui/win/WinApplication;->_runLoop(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private synthetic lambda$runLoop$4(ILjava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6

    .line 182
    new-instance v0, Ljava/lang/Thread;

    invoke-custom {p0, p1, p2}, call_site_3030("run", (Lcom/sun/glass/ui/win/WinApplication;ILjava/lang/Runnable;)Ljava/lang/Runnable;, ()V, invoke-direct@Lcom/sun/glass/ui/win/WinApplication;->lambda$runLoop$3(ILjava/lang/Runnable;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    const-string v2, "WindowsNativeRunloopThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected _enterNestedEventLoop()Ljava/lang/Object;
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyEnteringNestedEventLoop()V

    .line 211
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinApplication;->_enterNestedEventLoopImpl()Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_17

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v1, :cond_16

    .line 214
    iget-object v1, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v1}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyLeftNestedEventLoop()V

    .line 211
    :cond_16
    return-object v0

    .line 213
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v1, :cond_21

    .line 214
    iget-object v1, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v1}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyLeftNestedEventLoop()V

    .line 216
    :cond_21
    throw v0
.end method

.method protected native _getKeyCodeForChar(C)I
.end method

.method protected native _invokeAndWait(Ljava/lang/Runnable;)V
.end method

.method protected _invokeLater(Ljava/lang/Runnable;)V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v0, :cond_a

    .line 336
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 340
    :goto_9
    return-void

    .line 338
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/win/WinApplication;->submitForLaterInvocation(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method protected native _isKeyLocked(I)I
.end method

.method protected _leaveNestedEventLoop(Ljava/lang/Object;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyLeavingNestedEventLoop()V

    .line 223
    :cond_9
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/win/WinApplication;->_leaveNestedEventLoopImpl(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method protected _supportsInputMethods()Z
    .registers 2

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method protected _supportsTransparentWindows()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method protected native _supportsUnifiedWindows()Z
.end method

.method public createAccessible()Lcom/sun/glass/ui/Accessible;
    .registers 2

    .line 296
    new-instance v0, Lcom/sun/glass/ui/win/WinAccessible;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinAccessible;-><init>()V

    return-object v0
.end method

.method public createCursor(I)Lcom/sun/glass/ui/Cursor;
    .registers 3

    .line 241
    new-instance v0, Lcom/sun/glass/ui/win/WinCursor;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinCursor;-><init>(I)V

    return-object v0
.end method

.method public createCursor(IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/Cursor;
    .registers 5

    .line 245
    new-instance v0, Lcom/sun/glass/ui/win/WinCursor;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/glass/ui/win/WinCursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    return-object v0
.end method

.method public createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;
    .registers 5

    .line 257
    new-instance v0, Lcom/sun/glass/ui/win/WinPixels;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/glass/ui/win/WinPixels;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;
    .registers 5

    .line 261
    new-instance v0, Lcom/sun/glass/ui/win/WinPixels;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/glass/ui/win/WinPixels;-><init>(IILjava/nio/IntBuffer;)V

    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;FF)Lcom/sun/glass/ui/Pixels;
    .registers 12

    .line 266
    new-instance v0, Lcom/sun/glass/ui/win/WinPixels;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/glass/ui/win/WinPixels;-><init>(IILjava/nio/IntBuffer;FF)V

    return-object v0
.end method

.method public createRobot()Lcom/sun/glass/ui/GlassRobot;
    .registers 2

    .line 274
    new-instance v0, Lcom/sun/glass/ui/win/WinRobot;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinRobot;-><init>()V

    return-object v0
.end method

.method public createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;
    .registers 3

    .line 284
    new-instance v0, Lcom/sun/glass/ui/win/WinTimer;

    invoke-direct {v0, p1}, Lcom/sun/glass/ui/win/WinTimer;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public createView()Lcom/sun/glass/ui/View;
    .registers 2

    .line 237
    new-instance v0, Lcom/sun/glass/ui/win/WinView;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinView;-><init>()V

    return-object v0
.end method

.method public createWindow(J)Lcom/sun/glass/ui/Window;
    .registers 4

    .line 233
    new-instance v0, Lcom/sun/glass/ui/win/WinChildWindow;

    invoke-direct {v0, p1, p2}, Lcom/sun/glass/ui/win/WinChildWindow;-><init>(J)V

    return-object v0
.end method

.method public createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
    .registers 5

    .line 229
    new-instance v0, Lcom/sun/glass/ui/win/WinWindow;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/glass/ui/win/WinWindow;-><init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V

    return-object v0
.end method

.method protected finishTerminating()V
    .registers 2

    .line 191
    invoke-static {}, Lcom/sun/glass/ui/win/WinApplication;->getEventThread()Ljava/lang/Thread;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_d

    .line 193
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinApplication;->_terminateLoop()V

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sun/glass/ui/win/WinApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 196
    :cond_d
    invoke-super {p0}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 197
    return-void
.end method

.method public getDataDirectory()Ljava/lang/String;
    .registers 5

    .line 366
    invoke-static {}, Lcom/sun/glass/ui/win/WinApplication;->checkEventThread()V

    .line 368
    invoke-custom {}, call_site_2013("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/win/WinApplication;->lambda$getDataDirectory$5()Ljava/lang/String;, ()Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 370
    :cond_15
    invoke-super {p0}, Lcom/sun/glass/ui/Application;->getDataDirectory()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_19
    return-object v0

    :cond_1a
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/glass/ui/win/WinApplication;->name:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-custom {v0, v1, v2, v3}, call_site_39("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "\u0001\u0001\u0001\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    goto :goto_19
.end method

.method public getHighContrastScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 344
    const-string v0, "com/sun/glass/ui/win/themes"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-custom {v0}, call_site_448("apply", (Ljava/util/ResourceBundle;)Ljava/util/function/Function;, (Ljava/lang/Object;)Ljava/lang/Object;, invoke-instance@Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;, (Ljava/lang/String;)Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->fromThemeName(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighContrastTheme()Ljava/lang/String;
    .registers 2

    .line 349
    invoke-static {}, Lcom/sun/glass/ui/win/WinApplication;->checkEventThread()V

    .line 350
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinApplication;->_getHighContrastTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinApplication;->getHighContrastScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected runLoop(Ljava/lang/Runnable;)V
    .registers 5

    .line 167
    invoke-custom {}, call_site_2978("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/win/WinApplication;->lambda$runLoop$2()Ljava/lang/Boolean;, ()Ljava/lang/Boolean;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 168
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    invoke-static {}, Lcom/sun/glass/ui/win/WinApplication;->getDesiredAwarenesslevel()I

    move-result v1

    .line 171
    const-class v2, Lcom/sun/glass/ui/win/WinApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 172
    invoke-direct {p0, v2}, Lcom/sun/glass/ui/win/WinApplication;->_setClassLoader(Ljava/lang/ClassLoader;)V

    .line 174
    if-eqz v0, :cond_2b

    .line 175
    invoke-direct {p0, v1}, Lcom/sun/glass/ui/win/WinApplication;->_init(I)J

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/glass/ui/win/WinApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 177
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 188
    :goto_2a
    return-void

    .line 181
    :cond_2b
    invoke-custom {p0, v1, p1}, call_site_2016("run", (Lcom/sun/glass/ui/win/WinApplication;ILjava/lang/Runnable;)Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-direct@Lcom/sun/glass/ui/win/WinApplication;->lambda$runLoop$4(ILjava/lang/Runnable;)Ljava/lang/Thread;, ()Ljava/lang/Thread;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 186
    invoke-static {v0}, Lcom/sun/glass/ui/win/WinApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2a
.end method

.method public shouldUpdateWindow()Z
    .registers 2

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .registers 10

    .line 301
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyEnteringNestedEventLoop()V

    .line 304
    :cond_9
    invoke-static/range {p1 .. p8}, Lcom/sun/glass/ui/win/WinCommonDialogs;->showFileChooser_impl(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    move-result-object v0

    return-object v0
.end method

.method protected staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 308
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v0, :cond_9

    .line 309
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v0}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyEnteringNestedEventLoop()V

    .line 311
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/sun/glass/ui/win/WinCommonDialogs;->showFolderChooser_impl(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;
    .registers 4

    .line 253
    invoke-static {p1, p2}, Lcom/sun/glass/ui/win/WinCursor;->getBestSize_impl(II)Lcom/sun/glass/ui/Size;

    move-result-object v0

    return-object v0
.end method

.method protected staticCursor_setVisible(Z)V
    .registers 2

    .line 249
    invoke-static {p1}, Lcom/sun/glass/ui/win/WinCursor;->setVisible_impl(Z)V

    .line 250
    return-void
.end method

.method protected staticPixels_getNativeFormat()I
    .registers 2

    .line 270
    invoke-static {}, Lcom/sun/glass/ui/win/WinPixels;->getNativeFormat_impl()I

    move-result v0

    return v0
.end method

.method protected native staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;
.end method

.method protected staticScreen_getVideoRefreshPeriod()D
    .registers 3

    .line 278
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected staticTimer_getMaxPeriod()I
    .registers 2

    .line 292
    invoke-static {}, Lcom/sun/glass/ui/win/WinTimer;->getMaxPeriod_impl()I

    move-result v0

    return v0
.end method

.method protected staticTimer_getMinPeriod()I
    .registers 2

    .line 288
    invoke-static {}, Lcom/sun/glass/ui/win/WinTimer;->getMinPeriod_impl()I

    move-result v0

    return v0
.end method

.method protected staticView_getMultiClickMaxX()I
    .registers 2

    .line 319
    invoke-static {}, Lcom/sun/glass/ui/win/WinView;->getMultiClickMaxX_impl()I

    move-result v0

    return v0
.end method

.method protected staticView_getMultiClickMaxY()I
    .registers 2

    .line 323
    invoke-static {}, Lcom/sun/glass/ui/win/WinView;->getMultiClickMaxY_impl()I

    move-result v0

    return v0
.end method

.method protected staticView_getMultiClickTime()J
    .registers 3

    .line 315
    invoke-static {}, Lcom/sun/glass/ui/win/WinView;->getMultiClickTime_impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public submitForLaterInvocation(Ljava/lang/Runnable;)V
    .registers 2

    .line 331
    invoke-direct {p0, p1}, Lcom/sun/glass/ui/win/WinApplication;->_submitForLaterInvocation(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
