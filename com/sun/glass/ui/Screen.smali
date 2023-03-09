.class public final Lcom/sun/glass/ui/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Screen$EventHandler;
    }
.end annotation


# static fields
.field private static final dpiOverride:I

.field private static eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

.field private static volatile screens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile adapter:I

.field private final depth:I

.field private final height:I

.field private final outputScaleX:F

.field private final outputScaleY:F

.field private final platformHeight:I

.field private final platformScaleX:F

.field private final platformScaleY:F

.field private final platformWidth:I

.field private final platformX:I

.field private final platformY:I

.field private volatile ptr:J

.field private final resolutionX:I

.field private final resolutionY:I

.field private final visibleHeight:I

.field private final visibleWidth:I

.field private final visibleX:I

.field private final visibleY:I

.field private final width:I

.field private final x:I

.field private final y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    .line 41
    invoke-custom {}, call_site_548("run", ()Ljava/security/PrivilegedAction;, ()Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/Screen;->lambda$static$0()Ljava/lang/Integer;, ()Ljava/lang/Integer;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/Screen;->dpiOverride:I

    .line 41
    return-void
.end method

.method public constructor <init>(JIIIIIIIIIIIIIIIFFFF)V
    .registers 25

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-wide p1, p0, Lcom/sun/glass/ui/Screen;->ptr:J

    .line 133
    iput p3, p0, Lcom/sun/glass/ui/Screen;->depth:I

    .line 135
    iput p4, p0, Lcom/sun/glass/ui/Screen;->x:I

    .line 136
    iput p5, p0, Lcom/sun/glass/ui/Screen;->y:I

    .line 137
    iput p6, p0, Lcom/sun/glass/ui/Screen;->width:I

    .line 138
    iput p7, p0, Lcom/sun/glass/ui/Screen;->height:I

    .line 140
    iput p8, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    .line 141
    iput p9, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    .line 142
    iput p10, p0, Lcom/sun/glass/ui/Screen;->platformWidth:I

    .line 143
    iput p11, p0, Lcom/sun/glass/ui/Screen;->platformHeight:I

    .line 145
    iput p12, p0, Lcom/sun/glass/ui/Screen;->visibleX:I

    .line 146
    move/from16 v0, p13

    iput v0, p0, Lcom/sun/glass/ui/Screen;->visibleY:I

    .line 147
    move/from16 v0, p14

    iput v0, p0, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    .line 148
    move/from16 v0, p15

    iput v0, p0, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    .line 150
    sget v1, Lcom/sun/glass/ui/Screen;->dpiOverride:I

    if-lez v1, :cond_40

    .line 151
    sget v1, Lcom/sun/glass/ui/Screen;->dpiOverride:I

    iput v1, p0, Lcom/sun/glass/ui/Screen;->resolutionY:I

    iput v1, p0, Lcom/sun/glass/ui/Screen;->resolutionX:I

    .line 157
    :goto_2f
    move/from16 v0, p18

    iput v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    .line 158
    move/from16 v0, p19

    iput v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    .line 159
    move/from16 v0, p20

    iput v0, p0, Lcom/sun/glass/ui/Screen;->outputScaleX:F

    .line 160
    move/from16 v0, p21

    iput v0, p0, Lcom/sun/glass/ui/Screen;->outputScaleY:F

    .line 161
    return-void

    .line 153
    :cond_40
    move/from16 v0, p16

    iput v0, p0, Lcom/sun/glass/ui/Screen;->resolutionX:I

    .line 154
    move/from16 v0, p17

    iput v0, p0, Lcom/sun/glass/ui/Screen;->resolutionY:I

    goto :goto_2f
.end method

.method private dispose()V
    .registers 3

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/Screen;->ptr:J

    .line 356
    return-void
.end method

.method public static getMainScreen()Lcom/sun/glass/ui/Screen;
    .registers 2

    .line 59
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Screen;

    return-object v0
.end method

.method public static getScreens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    if-nez v0, :cond_c

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal graphics not initialized yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_c
    sget-object v0, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    return-object v0
.end method

.method public static getVideoRefreshPeriod()D
    .registers 2

    .line 50
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 51
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticScreen_getVideoRefreshPeriod()D

    move-result-wide v0

    return-wide v0
.end method

.method static initScreens()V
    .registers 2

    .line 409
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 410
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;

    move-result-object v0

    .line 411
    if-nez v0, :cond_15

    .line 412
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal graphics failed to initialize"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    .line 415
    return-void
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Integer;
    .registers 2

    .line 42
    const-string v0, "com.sun.javafx.screenDPI"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static notifySettingsChanged()V
    .registers 10

    .line 376
    sget-object v2, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    .line 379
    invoke-static {}, Lcom/sun/glass/ui/Screen;->initScreens()V

    .line 381
    sget-object v0, Lcom/sun/glass/ui/Screen;->eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

    if-eqz v0, :cond_e

    .line 382
    sget-object v0, Lcom/sun/glass/ui/Screen;->eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen$EventHandler;->handleSettingsChanged()V

    .line 389
    :cond_e
    invoke-static {}, Lcom/sun/glass/ui/Window;->getWindows()Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Window;

    .line 391
    invoke-virtual {v0}, Lcom/sun/glass/ui/Window;->getScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v4

    .line 392
    sget-object v1, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/glass/ui/Screen;

    .line 393
    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2c

    .line 394
    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/Window;->setScreen(Lcom/sun/glass/ui/Screen;)V

    goto :goto_16

    .line 401
    :cond_48
    if-eqz v2, :cond_5e

    .line 402
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Screen;

    .line 403
    invoke-direct {v0}, Lcom/sun/glass/ui/Screen;->dispose()V

    goto :goto_4e

    .line 406
    :cond_5e
    return-void
.end method

.method public static setEventHandler(Lcom/sun/glass/ui/Screen$EventHandler;)V
    .registers 1

    .line 367
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 368
    sput-object p0, Lcom/sun/glass/ui/Screen;->eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

    .line 369
    return-void
.end method


# virtual methods
.method public containsPlatformCoords(II)Z
    .registers 6

    .line 261
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    sub-int v0, p1, v0

    .line 262
    iget v1, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    sub-int v1, p2, v1

    .line 263
    if-ltz v0, :cond_16

    iget v2, p0, Lcom/sun/glass/ui/Screen;->platformWidth:I

    if-ge v0, v2, :cond_16

    if-ltz v1, :cond_16

    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformHeight:I

    if-ge v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public containsPlatformRect(IIII)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/Screen;->containsPlatformCoords(II)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 256
    :cond_9
    :goto_9
    return v0

    .line 255
    :cond_a
    if-lez p3, :cond_9

    if-lez p4, :cond_9

    .line 256
    add-int v2, p1, p3

    iget v3, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    iget v4, p0, Lcom/sun/glass/ui/Screen;->platformWidth:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_20

    add-int v2, p2, p4

    iget v3, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    iget v4, p0, Lcom/sun/glass/ui/Screen;->platformHeight:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_9

    :cond_20
    move v0, v1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    if-ne p0, p1, :cond_5

    .line 447
    :cond_4
    :goto_4
    return v0

    .line 444
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 446
    :cond_13
    check-cast p1, Lcom/sun/glass/ui/Screen;

    .line 447
    iget-wide v2, p0, Lcom/sun/glass/ui/Screen;->ptr:J

    iget-wide v4, p1, Lcom/sun/glass/ui/Screen;->ptr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->adapter:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->adapter:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->depth:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->depth:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->x:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->x:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->y:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->y:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->width:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->width:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->height:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->height:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleX:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->visibleX:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleY:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->visibleY:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->resolutionX:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->resolutionX:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/sun/glass/ui/Screen;->resolutionY:I

    iget v3, p1, Lcom/sun/glass/ui/Screen;->resolutionY:I

    if-ne v2, v3, :cond_8d

    iget v2, p1, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    iget v3, p0, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    .line 460
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_8d

    iget v2, p1, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    iget v3, p0, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    .line 461
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_8d

    iget v2, p1, Lcom/sun/glass/ui/Screen;->outputScaleX:F

    iget v3, p0, Lcom/sun/glass/ui/Screen;->outputScaleX:F

    .line 462
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_8d

    iget v2, p1, Lcom/sun/glass/ui/Screen;->outputScaleY:F

    iget v3, p0, Lcom/sun/glass/ui/Screen;->outputScaleY:F

    .line 463
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    :cond_8d
    move v0, v1

    goto/16 :goto_4
.end method

.method public fromPlatformX(I)F
    .registers 5

    .line 227
    iget v0, p0, Lcom/sun/glass/ui/Screen;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public fromPlatformY(I)F
    .registers 5

    .line 231
    iget v0, p0, Lcom/sun/glass/ui/Screen;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getAdapterOrdinal()I
    .registers 2

    .line 359
    iget v0, p0, Lcom/sun/glass/ui/Screen;->adapter:I

    return v0
.end method

.method public getDepth()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/sun/glass/ui/Screen;->depth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/sun/glass/ui/Screen;->height:I

    return v0
.end method

.method public getNativeScreen()J
    .registers 3

    .line 351
    iget-wide v0, p0, Lcom/sun/glass/ui/Screen;->ptr:J

    return-wide v0
.end method

.method public getPlatformHeight()I
    .registers 2

    .line 223
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformHeight:I

    return v0
.end method

.method public getPlatformScaleX()F
    .registers 2

    .line 274
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    return v0
.end method

.method public getPlatformScaleY()F
    .registers 2

    .line 284
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    return v0
.end method

.method public getPlatformWidth()I
    .registers 2

    .line 216
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformWidth:I

    return v0
.end method

.method public getPlatformX()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    return v0
.end method

.method public getPlatformY()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    return v0
.end method

.method public getRecommendedOutputScaleX()F
    .registers 2

    .line 293
    iget v0, p0, Lcom/sun/glass/ui/Screen;->outputScaleX:F

    return v0
.end method

.method public getRecommendedOutputScaleY()F
    .registers 2

    .line 302
    iget v0, p0, Lcom/sun/glass/ui/Screen;->outputScaleY:F

    return v0
.end method

.method public getResolutionX()I
    .registers 2

    .line 337
    iget v0, p0, Lcom/sun/glass/ui/Screen;->resolutionX:I

    return v0
.end method

.method public getResolutionY()I
    .registers 2

    .line 344
    iget v0, p0, Lcom/sun/glass/ui/Screen;->resolutionY:I

    return v0
.end method

.method public getVisibleHeight()I
    .registers 2

    .line 330
    iget v0, p0, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    return v0
.end method

.method public getVisibleWidth()I
    .registers 2

    .line 323
    iget v0, p0, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    return v0
.end method

.method public getVisibleX()I
    .registers 2

    .line 309
    iget v0, p0, Lcom/sun/glass/ui/Screen;->visibleX:I

    return v0
.end method

.method public getVisibleY()I
    .registers 2

    .line 316
    iget v0, p0, Lcom/sun/glass/ui/Screen;->visibleY:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/sun/glass/ui/Screen;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/sun/glass/ui/Screen;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/sun/glass/ui/Screen;->y:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 467
    .line 468
    iget-wide v2, p0, Lcom/sun/glass/ui/Screen;->ptr:J

    iget-wide v4, p0, Lcom/sun/glass/ui/Screen;->ptr:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 469
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->adapter:I

    add-int/2addr v0, v2

    .line 470
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->depth:I

    add-int/2addr v0, v2

    .line 471
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->x:I

    add-int/2addr v0, v2

    .line 472
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->y:I

    add-int/2addr v0, v2

    .line 473
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->width:I

    add-int/2addr v0, v2

    .line 474
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->height:I

    add-int/2addr v0, v2

    .line 475
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleX:I

    add-int/2addr v0, v2

    .line 476
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleY:I

    add-int/2addr v0, v2

    .line 477
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    add-int/2addr v0, v2

    .line 478
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    add-int/2addr v0, v2

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->resolutionX:I

    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->resolutionY:I

    add-int/2addr v0, v2

    .line 481
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_86

    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_57
    add-int/2addr v0, v2

    .line 482
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_88

    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_66
    add-int/2addr v0, v2

    .line 483
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/sun/glass/ui/Screen;->outputScaleX:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_8a

    iget v0, p0, Lcom/sun/glass/ui/Screen;->outputScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_75
    add-int/2addr v0, v2

    .line 484
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sun/glass/ui/Screen;->outputScaleY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_84

    iget v1, p0, Lcom/sun/glass/ui/Screen;->outputScaleY:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_84
    add-int/2addr v0, v1

    .line 485
    return v0

    :cond_86
    move v0, v1

    .line 481
    goto :goto_57

    :cond_88
    move v0, v1

    .line 482
    goto :goto_66

    :cond_8a
    move v0, v1

    .line 483
    goto :goto_75
.end method

.method public portionIntersectsPlatformRect(IIII)F
    .registers 12

    const/4 v0, 0x0

    .line 243
    iget v1, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 244
    iget v2, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 245
    add-int v3, p1, p3

    iget v4, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    iget v5, p0, Lcom/sun/glass/ui/Screen;->platformWidth:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 246
    add-int v4, p2, p4

    iget v5, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    iget v6, p0, Lcom/sun/glass/ui/Screen;->platformHeight:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 247
    sub-int v1, v3, v1

    if-gtz v1, :cond_28

    .line 250
    :cond_27
    :goto_27
    return v0

    .line 248
    :cond_28
    sub-int v2, v4, v2

    if-lez v2, :cond_27

    .line 249
    mul-int v0, v1, v2

    int-to-float v0, v0

    .line 250
    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p4

    div-float/2addr v0, v1

    goto :goto_27
.end method

.method public setAdapterOrdinal(I)V
    .registers 2

    .line 363
    iput p1, p0, Lcom/sun/glass/ui/Screen;->adapter:I

    .line 364
    return-void
.end method

.method public toPlatformX(F)I
    .registers 5

    .line 235
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformX:I

    iget v1, p0, Lcom/sun/glass/ui/Screen;->x:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sun/glass/ui/Screen;->platformScaleX:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toPlatformY(F)I
    .registers 5

    .line 239
    iget v0, p0, Lcom/sun/glass/ui/Screen;->platformY:I

    iget v1, p0, Lcom/sun/glass/ui/Screen;->y:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sun/glass/ui/Screen;->platformScaleY:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 23

    .line 418
    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v0

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getAdapterOrdinal()I

    move-result v2

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getDepth()I

    move-result v3

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v4

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v5

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v6

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v7

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getPlatformX()I

    move-result v8

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getPlatformY()I

    move-result v9

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getPlatformWidth()I

    move-result v10

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getPlatformHeight()I

    move-result v11

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getVisibleX()I

    move-result v12

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getVisibleY()I

    move-result v13

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getVisibleWidth()I

    move-result v14

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getVisibleHeight()I

    move-result v15

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getPlatformScaleX()F

    move-result v16

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getPlatformScaleY()F

    move-result v17

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleX()F

    move-result v18

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleY()F

    move-result v19

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getResolutionX()I

    move-result v20

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/Screen;->getResolutionY()I

    move-result v21

    invoke-custom/range {v0 .. v21}, call_site_1278("makeConcatWithConstants", (JIIIIIIIIIIIIIIFFFFII)Ljava/lang/String;, "Screen:\n    ptr:\u0001\n    adapter:\u0001\n    depth:\u0001\n    x:\u0001\n    y:\u0001\n    width:\u0001\n    height:\u0001\n    platformX:\u0001\n    platformY:\u0001\n    platformWidth:\u0001\n    platformHeight:\u0001\n    visibleX:\u0001\n    visibleY:\u0001\n    visibleWidth:\u0001\n    visibleHeight:\u0001\n    platformScaleX:\u0001\n    platformScaleY:\u0001\n    outputScaleX:\u0001\n    outputScaleY:\u0001\n    resolutionX:\u0001\n    resolutionY:\u0001\n")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 418
    return-object v0
.end method
