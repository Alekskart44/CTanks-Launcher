.class public Lcom/sun/javafx/application/PlatformImpl;
.super Ljava/lang/Object;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/application/PlatformImpl$FinishListener;,
        Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FXCANVAS_PERMISSION:Ljavafx/util/FXPermission;

.field private static accessibilityActive:Ljavafx/beans/property/BooleanProperty;

.field private static accessibilityTheme:Ljava/lang/String;

.field private static allNestedLoopsExitedLatch:Ljava/util/concurrent/CountDownLatch;

.field private static applicationType:Ljava/lang/String;

.field private static contextual2DNavigation:Z

.field private static finishListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/javafx/application/PlatformImpl$FinishListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile firstWindowShown:Z

.field private static hasMultiTouch:Ljava/lang/Boolean;

.field private static hasPointer:Ljava/lang/Boolean;

.field private static hasTouch:Ljava/lang/Boolean;

.field private static hasTwoLevelFocus:Ljava/lang/Boolean;

.field private static hasVirtualKeyboard:Ljava/lang/Boolean;

.field private static volatile implicitExit:Z

.field private static initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isCaspian:Z

.field private static isControlsSupported:Ljava/lang/Boolean;

.field private static isFXMLSupported:Ljava/lang/Boolean;

.field private static isGraphicsSupported:Ljava/lang/Boolean;

.field private static isMediaSupported:Ljava/lang/Boolean;

.field private static isModena:Z

.field private static isSWTSupported:Ljava/lang/Boolean;

.field private static isSwingSupported:Ljava/lang/Boolean;

.field private static isThreadMerged:Z

.field private static isWebSupported:Ljava/lang/Boolean;

.field private static volatile lastWindowClosed:Z

.field private static listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final platformExitLatch:Ljava/util/concurrent/CountDownLatch;

.field private static reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final runLaterLock:Ljava/lang/Object;

.field private static startupLatch:Ljava/util/concurrent/CountDownLatch;

.field private static taskbarApplication:Z

.field private static toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static toolkitListener:Lcom/sun/javafx/tk/TKListener;

.field private static final verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    .line 71
    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    .line 72
    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    sput-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->firstWindowShown:Z

    .line 77
    sput-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->runLaterLock:Ljava/lang/Object;

    .line 94
    sput-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->applicationType:Ljava/lang/String;

    .line 96
    new-instance v0, Ljavafx/beans/property/SimpleBooleanProperty;

    invoke-direct {v0}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityActive:Ljavafx/beans/property/BooleanProperty;

    .line 97
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->allNestedLoopsExitedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 100
    invoke-custom {}, call_site_941("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$static$0()Ljava/lang/Boolean;, ()Ljava/lang/Boolean;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 101
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->verbose:Z

    .line 105
    invoke-custom {}, call_site_324("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$static$1()Ljava/lang/Boolean;, ()Ljava/lang/Boolean;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->DEBUG:Z

    .line 110
    new-instance v0, Ljavafx/util/FXPermission;

    const-string v1, "accessFXCanvasInternals"

    invoke-direct {v0, v1}, Ljavafx/util/FXPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->FXCANVAS_PERMISSION:Ljavafx/util/FXPermission;

    .line 593
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 690
    sput-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    .line 691
    sput-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _setAccessibilityTheme(Ljava/lang/String;)V
    .registers 4

    .line 800
    invoke-custom {}, call_site_2059("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$_setAccessibilityTheme$18()Ljava/lang/String;, ()Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 803
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isCaspian()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 804
    if-nez p0, :cond_14

    if-eqz v0, :cond_18

    .line 806
    :cond_14
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/highcontrast.css"

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 842
    :cond_18
    :goto_18
    return-void

    .line 808
    :cond_19
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isModena()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 810
    if-eqz v0, :cond_5e

    .line 811
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    :cond_2d
    :goto_2d
    packed-switch v0, :pswitch_data_8e

    goto :goto_18

    .line 813
    :pswitch_31  #0x0
    const-string v0, "com/sun/javafx/scene/control/skin/modena/blackOnWhite.css"

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    goto :goto_18

    .line 811
    :sswitch_36
    const-string v2, "BLACKONWHITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x0

    goto :goto_2d

    :sswitch_40
    const-string v2, "WHITEONBLACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    goto :goto_2d

    :sswitch_4a
    const-string v2, "YELLOWONBLACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x2

    goto :goto_2d

    .line 816
    :pswitch_54  #0x1
    const-string v0, "com/sun/javafx/scene/control/skin/modena/whiteOnBlack.css"

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    goto :goto_18

    .line 819
    :pswitch_59  #0x2
    const-string v0, "com/sun/javafx/scene/control/skin/modena/yellowOnBlack.css"

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    goto :goto_18

    .line 824
    :cond_5e
    if-eqz p0, :cond_18

    .line 826
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$com$sun$javafx$application$PlatformImpl$HighContrastScheme:[I

    invoke-static {p0}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    goto :goto_18

    .line 828
    :pswitch_70  #0x1
    const-string v0, "com/sun/javafx/scene/control/skin/modena/blackOnWhite.css"

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    goto :goto_18

    .line 831
    :pswitch_75  #0x2
    const-string v0, "com/sun/javafx/scene/control/skin/modena/whiteOnBlack.css"

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    goto :goto_18

    .line 835
    :pswitch_7a  #0x3, 0x4
    const-string v0, "com/sun/javafx/scene/control/skin/modena/yellowOnBlack.css"

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    goto :goto_18

    .line 811
    nop

    :sswitch_data_80
    .sparse-switch
        -0x5d4e2194 -> :sswitch_4a
        -0x574bdec9 -> :sswitch_40
        0x504abccb -> :sswitch_36
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_54  #00000001
        :pswitch_59  #00000002
    .end packed-switch

    .line 826
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_70  #00000001
        :pswitch_75  #00000002
        :pswitch_7a  #00000003
        :pswitch_7a  #00000004
    .end packed-switch
.end method

.method private static _setPlatformUserAgentStylesheet(Ljava/lang/String;)V
    .registers 5

    const/4 v3, 0x1

    .line 845
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    .line 848
    invoke-custom {}, call_site_1968("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$_setPlatformUserAgentStylesheet$19()Ljava/lang/String;, ()Ljava/lang/String;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 851
    if-eqz v0, :cond_101

    .line 855
    :goto_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 858
    const-string v2, "CASPIAN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 859
    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    .line 861
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/caspian.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v0, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 864
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/embedded.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isQVGAScreen()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 866
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/embedded-qvga.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_3e
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 869
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/android.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_49
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 872
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/ios.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_54
    sget-object v0, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 877
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/two-level-focus.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_61
    sget-object v0, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 881
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/fxvk.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_6e
    sget-object v0, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 885
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/caspian-no-transparency.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_7b
    :goto_7b
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getThemeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->_setAccessibilityTheme(Ljava/lang/String;)V

    .line 925
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    if-eqz v0, :cond_8f

    .line 926
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_8f
    invoke-custom {v1}, call_site_67("run", (Ljava/util/List;)Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$_setPlatformUserAgentStylesheet$20(Ljava/util/List;)Ljava/lang/Object;, ()Ljava/lang/Object;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 935
    return-void

    .line 888
    :cond_97
    const-string v2, "MODENA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 889
    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    .line 891
    const-string v0, "com/sun/javafx/scene/control/skin/modena/modena.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    sget-object v0, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 894
    const-string v0, "com/sun/javafx/scene/control/skin/modena/touch.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_b3
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 898
    const-string v0, "com/sun/javafx/scene/control/skin/modena/modena-embedded-performance.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_be
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 901
    const-string v0, "com/sun/javafx/scene/control/skin/modena/android.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_c9
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 904
    const-string v0, "com/sun/javafx/scene/control/skin/modena/ios.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_d4
    sget-object v0, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 908
    const-string v0, "com/sun/javafx/scene/control/skin/modena/two-level-focus.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_e1
    sget-object v0, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 912
    const-string v0, "com/sun/javafx/scene/control/skin/caspian/fxvk.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_ee
    sget-object v0, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 916
    const-string v0, "com/sun/javafx/scene/control/skin/modena/modena-no-transparency.css"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 920
    :cond_fc
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    :cond_101
    move-object v0, p0

    goto/16 :goto_12
.end method

.method public static accessibilityActiveProperty()Ljavafx/beans/property/BooleanProperty;
    .registers 1

    .line 638
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityActive:Ljavafx/beans/property/BooleanProperty;

    return-object v0
.end method

.method private static addExportsToFXCanvas(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 328
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.sun.glass.ui"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "com.sun.javafx.cursor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.sun.javafx.embed"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.sun.javafx.stage"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.sun.javafx.tk"

    aput-object v3, v1, v2

    .line 336
    sget-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->DEBUG:Z

    if-eqz v2, :cond_29

    .line 337
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p0}, call_site_418("makeConcatWithConstants", (Ljava/lang/Class;)Ljava/lang/String;, "addExportsToFXCanvas: class = \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    :cond_29
    const-class v2, Lcom/sun/javafx/application/PlatformImpl;

    invoke-static {v2}, Lcom/sun/javafx/util/ModuleHelper;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-static {p0}, Lcom/sun/javafx/util/ModuleHelper;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 341
    array-length v4, v1

    :goto_34
    if-ge v0, v4, :cond_4b

    aget-object v5, v1, v0

    .line 342
    sget-boolean v6, Lcom/sun/javafx/application/PlatformImpl;->DEBUG:Z

    if-eqz v6, :cond_45

    .line 343
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v5, v2, v3}, call_site_3065("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;, "add export of \u0001 from \u0001 to \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    :cond_45
    invoke-static {v2, v5, v3}, Lcom/sun/javafx/util/ModuleHelper;->addExports(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 348
    :cond_4b
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V
    .registers 3

    .line 512
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 513
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method public static addNoTransparencyStylesheetToScene(Ljavafx/scene/Scene;)V
    .registers 2

    .line 939
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isCaspian()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 940
    invoke-custom {p0}, call_site_1377("run", (Ljavafx/scene/Scene;)Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$addNoTransparencyStylesheetToScene$21(Ljavafx/scene/Scene;)Ljava/lang/Object;, ()Ljava/lang/Object;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 952
    :cond_d
    :goto_d
    return-void

    .line 945
    :cond_e
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isModena()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 946
    invoke-custom {p0}, call_site_2482("run", (Ljavafx/scene/Scene;)Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$addNoTransparencyStylesheetToScene$22(Ljavafx/scene/Scene;)Ljava/lang/Object;, ()Ljava/lang/Object;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto :goto_d
.end method

.method private static checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 648
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/sun/javafx/application/PlatformImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 649
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_c} :catch_d

    .line 651
    :goto_c
    return-object v0

    .line 650
    :catch_d
    move-exception v0

    .line 651
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c
.end method

.method private static checkIdle()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 543
    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_b

    .line 590
    :cond_a
    :goto_a
    return-void

    .line 547
    :cond_b
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isFxApplicationThread()Z

    move-result v2

    if-nez v2, :cond_19

    .line 550
    invoke-custom {}, call_site_467("run", ()Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$checkIdle$13()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 557
    :cond_19
    const-class v2, Lcom/sun/javafx/application/PlatformImpl;

    monitor-enter v2

    .line 558
    :try_start_1c
    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 559
    if-lez v3, :cond_61

    .line 560
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->firstWindowShown:Z

    .line 561
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    .line 562
    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 571
    :cond_30
    :goto_30
    sget-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    if-eqz v3, :cond_75

    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_75

    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 572
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->isNestedLoopRunning()Z

    move-result v3

    if-nez v3, :cond_75

    .line 574
    :cond_4e
    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 577
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    .line 585
    :goto_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_1c .. :try_end_5b} :catchall_6b

    .line 587
    if-eqz v0, :cond_a

    .line 588
    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->notifyFinishListeners(Z)V

    goto :goto_a

    .line 563
    :cond_61
    if-nez v3, :cond_30

    :try_start_63
    sget-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->firstWindowShown:Z

    if-eqz v3, :cond_30

    .line 564
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    goto :goto_30

    .line 585
    :catchall_6b
    move-exception v0

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6b

    throw v0

    .line 580
    :cond_6e
    :try_start_6e
    invoke-custom {}, call_site_1935("run", ()Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$checkIdle$14()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_6b

    :cond_75
    move v0, v1

    goto :goto_5a
.end method

.method public static exit()V
    .registers 2

    const/4 v1, 0x1

    .line 642
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 643
    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->notifyFinishListeners(Z)V

    .line 644
    return-void
.end method

.method private static initDeviceDetailsFXCanvas()V
    .registers 4

    .line 310
    invoke-custom {}, call_site_1499("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$initDeviceDetailsFXCanvas$6()Ljava/lang/Long;, ()Ljava/lang/Long;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_33

    .line 315
    invoke-static {}, Lcom/sun/glass/ui/Application;->getDeviceDetails()Ljava/util/Map;

    move-result-object v0

    .line 316
    if-nez v0, :cond_22

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    invoke-static {v0}, Lcom/sun/glass/ui/Application;->setDeviceDetails(Ljava/util/Map;)V

    .line 320
    :cond_22
    const-string v1, "javafx.embed.eventProc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_33

    .line 321
    const-string v1, "javafx.embed.eventProc"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_33
    return-void
.end method

.method private static initFXCanvas()V
    .registers 3

    .line 354
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_b

    .line 357
    :try_start_6
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->FXCANVAS_PERMISSION:Ljavafx/util/FXPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_53

    .line 366
    :cond_b
    invoke-custom {}, call_site_2542("test", ()Ljava/util/function/Predicate;, (Ljava/lang/Object;)Z, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$initFXCanvas$7(Ljava/lang/StackWalker$StackFrame;)Z, (Ljava/lang/StackWalker$StackFrame;)Z)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 371
    invoke-custom {}, call_site_2204("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$initFXCanvas$8()Ljava/lang/StackWalker;, ()Ljava/lang/StackWalker;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackWalker;

    .line 373
    invoke-custom {v1}, call_site_689("apply", (Ljava/util/function/Predicate;)Ljava/util/function/Function;, (Ljava/lang/Object;)Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$initFXCanvas$9(Ljava/util/function/Predicate;Ljava/util/stream/Stream;)Ljava/util/Optional;, (Ljava/util/stream/Stream;)Ljava/util/Optional;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StackWalker;->walk(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 376
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 377
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackWalker$StackFrame;

    invoke-interface {v0}, Ljava/lang/StackWalker$StackFrame;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 378
    sget-boolean v1, Lcom/sun/javafx/application/PlatformImpl;->DEBUG:Z

    if-eqz v1, :cond_40

    .line 379
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {v0}, call_site_1466("makeConcatWithConstants", (Ljava/lang/Class;)Ljava/lang/String;, "callerClassName = \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    :cond_40
    const-string v1, "javafx.embed.swt.FXCanvas"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 384
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->initDeviceDetailsFXCanvas()V

    .line 385
    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->addExportsToFXCanvas(Ljava/lang/Class;)V

    .line 388
    :cond_52
    :goto_52
    return-void

    .line 358
    :catch_53
    move-exception v0

    .line 359
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "FXCanvas: no permission to access JavaFX internals"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_52
.end method

.method private static installFwEventQueue()V
    .registers 1

    .line 391
    const-string v0, "installFwEventQueue"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->invokeSwingFXUtilsMethod(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private static invokeSwingFXUtilsMethod(Ljava/lang/String;)V
    .registers 4

    .line 401
    :try_start_0
    const-string v0, "com.sun.javafx.embed.swing.SwingFXUtilsImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 402
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 404
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->waitForStart()V

    .line 405
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_17} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_17} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_17} :catch_21

    .line 412
    return-void

    .line 407
    :catch_18
    move-exception v0

    .line 408
    :goto_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Property javafx.embed.singleThread is not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :catch_21
    move-exception v0

    .line 410
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 407
    :catch_28
    move-exception v0

    goto :goto_19

    :catch_2a
    move-exception v0

    goto :goto_19
.end method

.method public static isCaspian()Z
    .registers 1

    .line 714
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    return v0
.end method

.method public static isContextual2DNavigation()Z
    .registers 1

    .line 152
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->contextual2DNavigation:Z

    return v0
.end method

.method public static isFxApplicationThread()Z
    .registers 1

    .line 428
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v0

    return v0
.end method

.method public static isImplicitExit()Z
    .registers 1

    .line 508
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    return v0
.end method

.method public static isModena()Z
    .registers 1

    .line 702
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    return v0
.end method

.method public static isSupported(Ljavafx/application/ConditionalFeature;)Z
    .registers 3

    .line 656
    invoke-static {p0}, Lcom/sun/javafx/application/PlatformImpl;->isSupportedImpl(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    .line 657
    if-eqz v0, :cond_16

    sget-object v1, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    if-ne p0, v1, :cond_16

    .line 663
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_15

    .line 666
    :try_start_10
    sget-object v1, Lcom/sun/javafx/FXPermissions;->CREATE_TRANSPARENT_WINDOW_PERMISSION:Ljavafx/util/FXPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_15} :catch_17

    .line 672
    :cond_15
    const/4 v0, 0x1

    .line 675
    :cond_16
    :goto_16
    return v0

    .line 667
    :catch_17
    move-exception v0

    .line 668
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static isSupportedImpl(Ljavafx/application/ConditionalFeature;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 955
    sget-object v2, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    invoke-virtual {p0}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_16c

    .line 1045
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    :goto_15
    return v0

    .line 957
    :pswitch_16  #0x1
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isGraphicsSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_22

    .line 958
    const-string v0, "javafx.stage.Stage"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isGraphicsSupported:Ljava/lang/Boolean;

    .line 960
    :cond_22
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isGraphicsSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    .line 962
    :pswitch_29  #0x2
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isControlsSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_35

    .line 963
    const-string v0, "javafx.scene.control.Control"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isControlsSupported:Ljava/lang/Boolean;

    .line 966
    :cond_35
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isControlsSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    .line 968
    :pswitch_3c  #0x3
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_60

    .line 969
    const-string v0, "javafx.scene.media.MediaView"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    .line 971
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 973
    invoke-custom {}, call_site_2035("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$isSupportedImpl$23()Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    .line 983
    :cond_60
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    .line 985
    :pswitch_67  #0x4
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_8b

    .line 986
    const-string v0, "javafx.scene.web.WebView"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    .line 987
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 989
    invoke-custom {}, call_site_3149("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$isSupportedImpl$24()Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    .line 999
    :cond_8b
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    .line 1001
    :pswitch_92  #0x5
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isSWTSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_9e

    .line 1002
    const-string v0, "javafx.embed.swt.FXCanvas"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isSWTSupported:Ljava/lang/Boolean;

    .line 1004
    :cond_9e
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isSWTSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    .line 1006
    :pswitch_a6  #0x6
    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->isSwingSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_c8

    .line 1007
    const-string v2, "javax.swing.JComponent"

    .line 1009
    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d0

    const-string v2, "javafx.embed.swing.JFXPanel"

    .line 1010
    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1009
    :goto_c2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isSwingSupported:Ljava/lang/Boolean;

    .line 1012
    :cond_c8
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isSwingSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    :cond_d0
    move v0, v1

    .line 1010
    goto :goto_c2

    .line 1014
    :pswitch_d2  #0x7
    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->isFXMLSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_f4

    .line 1015
    const-string v2, "javafx.fxml.FXMLLoader"

    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string v2, "javax.xml.stream.XMLInputFactory"

    .line 1016
    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 1015
    :goto_ee
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isFXMLSupported:Ljava/lang/Boolean;

    .line 1018
    :cond_f4
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->isFXMLSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    :cond_fc
    move v0, v1

    .line 1016
    goto :goto_ee

    .line 1020
    :pswitch_fe  #0x8
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasTwoLevelFocus:Ljava/lang/Boolean;

    if-nez v0, :cond_10c

    .line 1021
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    goto/16 :goto_15

    .line 1023
    :cond_10c
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasTwoLevelFocus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    .line 1025
    :pswitch_114  #0x9
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    if-nez v0, :cond_122

    .line 1026
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    goto/16 :goto_15

    .line 1028
    :cond_122
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    .line 1030
    :pswitch_12a  #0xa
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasTouch:Ljava/lang/Boolean;

    if-nez v0, :cond_138

    .line 1031
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    goto/16 :goto_15

    .line 1033
    :cond_138
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasTouch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    .line 1035
    :pswitch_140  #0xb
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasMultiTouch:Ljava/lang/Boolean;

    if-nez v0, :cond_14e

    .line 1036
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    goto/16 :goto_15

    .line 1038
    :cond_14e
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasMultiTouch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    .line 1040
    :pswitch_156  #0xc
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasPointer:Ljava/lang/Boolean;

    if-nez v0, :cond_164

    .line 1041
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    goto/16 :goto_15

    .line 1043
    :cond_164
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasPointer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_15

    .line 955
    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_29  #00000002
        :pswitch_3c  #00000003
        :pswitch_67  #00000004
        :pswitch_92  #00000005
        :pswitch_a6  #00000006
        :pswitch_d2  #00000007
        :pswitch_fe  #00000008
        :pswitch_114  #00000009
        :pswitch_12a  #0000000a
        :pswitch_140  #0000000b
        :pswitch_156  #0000000c
    .end packed-switch
.end method

.method public static isTaskbarApplication()Z
    .registers 1

    .line 129
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    return v0
.end method

.method private static synthetic lambda$_setAccessibilityTheme$18()Ljava/lang/String;
    .registers 1

    .line 801
    const-string v0, "com.sun.javafx.highContrastTheme"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$_setPlatformUserAgentStylesheet$19()Ljava/lang/String;
    .registers 1

    .line 849
    const-string v0, "javafx.userAgentStylesheetUrl"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$_setPlatformUserAgentStylesheet$20(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 931
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/javafx/css/StyleManager;->setUserAgentStylesheets(Ljava/util/List;)V

    .line 932
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$addNoTransparencyStylesheetToScene$21(Ljavafx/scene/Scene;)Ljava/lang/Object;
    .registers 3

    .line 941
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v0

    const-string v1, "com/sun/javafx/scene/control/skin/caspian/caspian-no-transparency.css"

    invoke-virtual {v0, p0, v1}, Lcom/sun/javafx/css/StyleManager;->addUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$addNoTransparencyStylesheetToScene$22(Ljavafx/scene/Scene;)Ljava/lang/Object;
    .registers 3

    .line 947
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v0

    const-string v1, "com/sun/javafx/scene/control/skin/modena/modena-no-transparency.css"

    invoke-virtual {v0, p0, v1}, Lcom/sun/javafx/css/StyleManager;->addUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V

    .line 949
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$checkIdle$13()V
    .registers 0

    .line 551
    return-void
.end method

.method private static synthetic lambda$checkIdle$14()V
    .registers 0

    .line 582
    return-void
.end method

.method private static synthetic lambda$initDeviceDetailsFXCanvas$6()Ljava/lang/Long;
    .registers 4

    .line 311
    const-string v0, "javafx.embed.eventProc"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$initFXCanvas$7(Ljava/lang/StackWalker$StackFrame;)Z
    .registers 3

    .line 367
    invoke-interface {p0}, Ljava/lang/StackWalker$StackFrame;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javafx.application."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 368
    invoke-interface {p0}, Ljava/lang/StackWalker$StackFrame;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sun.javafx.application."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 367
    :goto_19
    return v0

    .line 368
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static synthetic lambda$initFXCanvas$8()Ljava/lang/StackWalker;
    .registers 1

    .line 372
    sget-object v0, Ljava/lang/StackWalker$Option;->RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/lang/StackWalker;->getInstance(Ljava/lang/StackWalker$Option;)Ljava/lang/StackWalker;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$initFXCanvas$9(Ljava/util/function/Predicate;Ljava/util/stream/Stream;)Ljava/util/Optional;
    .registers 3

    .line 374
    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$isSupportedImpl$23()Ljava/lang/Void;
    .registers 2

    .line 974
    const-string v0, "com.sun.javafx.experimental.embedded.media"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    .line 978
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$isSupportedImpl$24()Ljava/lang/Void;
    .registers 2

    .line 990
    const-string v0, "com.sun.javafx.experimental.embedded.web"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    .line 994
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$runAndWait$12(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 484
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 486
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 488
    return-void

    .line 486
    :catchall_7
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 487
    throw v0
.end method

.method private static synthetic lambda$runLater$10(Ljava/lang/Runnable;)Ljava/lang/Void;
    .registers 2

    .line 457
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$runLater$11(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .registers 4

    .line 456
    :try_start_0
    invoke-custom {p0}, call_site_2902("run", (Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$runLater$10(Ljava/lang/Runnable;)Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_13

    .line 461
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 462
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 464
    return-void

    .line 461
    :catchall_13
    move-exception v0

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 462
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 463
    throw v0
.end method

.method private static synthetic lambda$setApplicationName$2(Ljava/lang/Class;)V
    .registers 3

    .line 142
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/Application;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setPlatformUserAgentStylesheet$17(Ljava/lang/String;)V
    .registers 1

    .line 725
    invoke-static {p0}, Lcom/sun/javafx/application/PlatformImpl;->_setPlatformUserAgentStylesheet(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startup$3()Ljava/lang/Void;
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    const-string v0, "com.sun.javafx.application.type"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->applicationType:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->applicationType:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->applicationType:Ljava/lang/String;

    .line 217
    :cond_12
    const-string v0, "com.sun.javafx.isContextual2DNavigation"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->contextual2DNavigation:Z

    .line 219
    const-string v0, "com.sun.javafx.twoLevelFocus"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_28

    .line 221
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasTwoLevelFocus:Ljava/lang/Boolean;

    .line 223
    :cond_28
    const-string v0, "com.sun.javafx.virtualKeyboard"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_3e

    .line 225
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 226
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    .line 233
    :cond_3e
    :goto_3e
    const-string v0, "com.sun.javafx.touch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_4c

    .line 235
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasTouch:Ljava/lang/Boolean;

    .line 237
    :cond_4c
    const-string v0, "com.sun.javafx.multiTouch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_5a

    .line 239
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasMultiTouch:Ljava/lang/Boolean;

    .line 241
    :cond_5a
    const-string v0, "com.sun.javafx.pointer"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_68

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasPointer:Ljava/lang/Boolean;

    .line 245
    :cond_68
    const-string v0, "javafx.embed.singleThread"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_93

    .line 247
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    .line 248
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    if-eqz v0, :cond_93

    sget-object v0, Ljavafx/application/ConditionalFeature;->SWING:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 249
    sput-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    .line 250
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->verbose:Z

    if-eqz v0, :cond_93

    .line 251
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: javafx.embed.singleThread ignored (javafx.swing module not found)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    :cond_93
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_95
    const-string v1, "javafx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 228
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    goto :goto_3e

    .line 229
    :cond_a4
    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 230
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    goto :goto_3e
.end method

.method private static synthetic lambda$startup$4()Ljava/lang/Void;
    .registers 2

    .line 270
    const-string v0, "glass.taskbarApplication"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$startup$5(Ljava/lang/Runnable;)V
    .registers 2

    .line 294
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 295
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 296
    return-void
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 102
    const-string v0, "javafx.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$1()Ljava/lang/Boolean;
    .registers 1

    .line 107
    const-string v0, "com.sun.javafx.application.debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$tkExit$15()V
    .registers 1

    .line 606
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->isNestedLoopRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 607
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->exitAllNestedEventLoops()V

    .line 611
    :goto_11
    return-void

    .line 609
    :cond_12
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->allNestedLoopsExitedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_11
.end method

.method private static synthetic lambda$tkExit$16()V
    .registers 1

    .line 624
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->exit()V

    .line 625
    return-void
.end method

.method private static notifyFinishListeners(Z)V
    .registers 4

    .line 526
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 527
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/javafx/application/PlatformImpl$FinishListener;

    .line 528
    if-eqz p0, :cond_20

    .line 529
    invoke-interface {v0}, Lcom/sun/javafx/application/PlatformImpl$FinishListener;->exitCalled()V

    goto :goto_e

    .line 531
    :cond_20
    sget-boolean v2, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    invoke-interface {v0, v2}, Lcom/sun/javafx/application/PlatformImpl$FinishListener;->idle(Z)V

    goto :goto_e

    .line 534
    :cond_26
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    if-nez v0, :cond_32

    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 535
    :cond_32
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->tkExit()V

    .line 537
    :cond_35
    return-void
.end method

.method private static removeFwEventQueue()V
    .registers 1

    .line 395
    const-string v0, "removeFwEventQueue"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->invokeSwingFXUtilsMethod(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V
    .registers 3

    .line 517
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 518
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 520
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 522
    :cond_1e
    return-void

    .line 518
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static runAndWait(Ljava/lang/Runnable;)V
    .registers 2

    .line 469
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;Z)V

    .line 470
    return-void
.end method

.method private static runAndWait(Ljava/lang/Runnable;Z)V
    .registers 5

    .line 473
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isFxApplicationThread()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 475
    :try_start_6
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    .line 500
    :goto_9
    return-void

    .line 476
    :catch_a
    move-exception v0

    .line 477
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception in runnable"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 481
    :cond_16
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 482
    invoke-custom {p0, v0}, call_site_2960("run", (Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$runAndWait$12(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;Z)V

    .line 490
    if-nez p1, :cond_35

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Toolkit has exited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_35
    :try_start_35
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_9

    .line 496
    :catch_39
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9
.end method

.method public static runLater(Ljava/lang/Runnable;)V
    .registers 2

    .line 432
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;Z)V

    .line 433
    return-void
.end method

.method private static runLater(Ljava/lang/Runnable;Z)V
    .registers 5

    .line 436
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Toolkit not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_10
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 441
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->waitForStart()V

    .line 443
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->runLaterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    if-nez p1, :cond_2c

    :try_start_1d
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 446
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 447
    monitor-exit v1

    .line 466
    :goto_2b
    return-void

    .line 451
    :cond_2c
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 453
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-custom {p0, v0}, call_site_1207("run", (Ljava/lang/Runnable;Ljava/security/AccessControlContext;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$runLater$11(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/javafx/tk/Toolkit;->defer(Ljava/lang/Runnable;)V

    .line 465
    monitor-exit v1

    goto :goto_2b

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public static setAccessibilityTheme(Ljava/lang/String;)Z
    .registers 3

    .line 781
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 782
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/css/StyleManager;->removeUserAgentStylesheet(Ljava/lang/String;)V

    .line 783
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 786
    :cond_10
    invoke-static {p0}, Lcom/sun/javafx/application/PlatformImpl;->_setAccessibilityTheme(Ljava/lang/String;)V

    .line 788
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 789
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/css/StyleManager;->addUserAgentStylesheet(Ljava/lang/String;)V

    .line 790
    const/4 v0, 0x1

    .line 792
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static setApplicationName(Ljava/lang/Class;)V
    .registers 2

    .line 142
    invoke-custom {p0}, call_site_2254("run", (Ljava/lang/Class;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$setApplicationName$2(Ljava/lang/Class;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public static setDefaultPlatformUserAgentStylesheet()V
    .registers 1

    .line 687
    const-string v0, "MODENA"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->setPlatformUserAgentStylesheet(Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public static setImplicitExit(Z)V
    .registers 1

    .line 503
    sput-boolean p0, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    .line 504
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 505
    return-void
.end method

.method public static setPlatformUserAgentStylesheet(Ljava/lang/String;)V
    .registers 2

    .line 722
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isFxApplicationThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 723
    invoke-static {p0}, Lcom/sun/javafx/application/PlatformImpl;->_setPlatformUserAgentStylesheet(Ljava/lang/String;)V

    .line 727
    :goto_9
    return-void

    .line 725
    :cond_a
    invoke-custom {p0}, call_site_3059("run", (Ljava/lang/String;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$setPlatformUserAgentStylesheet$17(Ljava/lang/String;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public static setTaskbarApplication(Z)V
    .registers 1

    .line 120
    sput-boolean p0, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    .line 121
    return-void
.end method

.method public static startup(Ljava/lang/Runnable;)V
    .registers 2

    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/javafx/application/PlatformImpl;->startup(Ljava/lang/Runnable;Z)V

    .line 164
    return-void
.end method

.method public static startup(Ljava/lang/Runnable;Z)V
    .registers 6

    .line 181
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Platform.exit has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_10
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 186
    if-eqz p1, :cond_23

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Toolkit already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_23
    invoke-static {p0}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 302
    :cond_26
    :goto_26
    return-void

    .line 195
    :cond_27
    const-class v0, Lcom/sun/javafx/application/PlatformImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getModule()Ljava/lang/Module;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Module;->getDescriptor()Ljava/lang/module/ModuleDescriptor;

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Ljava/lang/Module;->isNamed()Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "javafx.graphics"

    .line 198
    invoke-virtual {v0}, Ljava/lang/Module;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    if-eqz v1, :cond_51

    .line 200
    invoke-virtual {v1}, Ljava/lang/module/ModuleDescriptor;->isAutomatic()Z

    move-result v2

    if-nez v2, :cond_51

    .line 201
    invoke-virtual {v1}, Ljava/lang/module/ModuleDescriptor;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 203
    :cond_51
    invoke-custom {v0}, call_site_3015("makeConcatWithConstants", (Ljava/lang/Module;)Ljava/lang/String;, "Unsupported JavaFX configuration: classes were loaded from \'\u0001\'")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 205
    if-eqz v1, :cond_67

    .line 206
    invoke-virtual {v1}, Ljava/lang/module/ModuleDescriptor;->isAutomatic()Z

    move-result v2

    invoke-custom {v0, v2}, call_site_1096("makeConcatWithConstants", (Ljava/lang/String;Z)Ljava/lang/String;, "\u0001, isAutomatic: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 207
    invoke-virtual {v1}, Ljava/lang/module/ModuleDescriptor;->isOpen()Z

    move-result v1

    invoke-custom {v0, v1}, call_site_671("makeConcatWithConstants", (Ljava/lang/String;Z)Ljava/lang/String;, "\u0001, isOpen: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 209
    :cond_67
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getJavaFXLogger()Lcom/sun/javafx/logging/PlatformLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/javafx/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 213
    :cond_6e
    invoke-custom {}, call_site_2006("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$startup$3()Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    .line 259
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->DEBUG:Z

    if-eqz v0, :cond_87

    .line 260
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->applicationType:Ljava/lang/String;

    invoke-custom {v1}, call_site_1258("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "PlatformImpl::startup : applicationType = \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    :cond_87
    const-string v0, "FXCanvas"

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->applicationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 264
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->initFXCanvas()V

    .line 267
    :cond_94
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    if-nez v0, :cond_a2

    .line 269
    invoke-custom {}, call_site_213("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$startup$4()Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    .line 277
    :cond_a2
    new-instance v0, Lcom/sun/javafx/application/PlatformImpl$1;

    invoke-direct {v0}, Lcom/sun/javafx/application/PlatformImpl$1;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    .line 291
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->addTkListener(Lcom/sun/javafx/tk/TKListener;)V

    .line 293
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-custom {p0}, call_site_118("run", (Ljava/lang/Runnable;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$startup$5(Ljava/lang/Runnable;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->startup(Ljava/lang/Runnable;)V

    .line 299
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    if-eqz v0, :cond_26

    .line 300
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->installFwEventQueue()V

    goto/16 :goto_26
.end method

.method static test_getPlatformExitLatch()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 595
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static tkExit()V
    .registers 2

    const/4 v1, 0x1

    .line 599
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 635
    :cond_9
    :goto_9
    return-void

    .line 603
    :cond_a
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 604
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 605
    invoke-custom {}, call_site_3023("run", ()Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$tkExit$15()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;Z)V

    .line 614
    :try_start_21
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->allNestedLoopsExitedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_46

    .line 622
    :cond_26
    invoke-custom {}, call_site_1816("run", ()Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/javafx/application/PlatformImpl;->lambda$tkExit$16()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;Z)V

    .line 627
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    if-eqz v0, :cond_34

    .line 628
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->removeFwEventQueue()V

    .line 631
    :cond_34
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->removeTkListener(Lcom/sun/javafx/tk/TKListener;)V

    .line 632
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    .line 633
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_9

    .line 615
    :catch_46
    move-exception v0

    .line 616
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not exit all nested event loops"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static waitForStart()V
    .registers 4

    .line 418
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 420
    :try_start_c
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    .line 425
    :cond_11
    :goto_11
    return-void

    .line 421
    :catch_12
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11
.end method
