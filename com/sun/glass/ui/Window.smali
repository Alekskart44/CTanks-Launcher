.class public abstract Lcom/sun/glass/ui/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;,
        Lcom/sun/glass/ui/Window$State;,
        Lcom/sun/glass/ui/Window$Level;,
        Lcom/sun/glass/ui/Window$EventHandler;,
        Lcom/sun/glass/ui/Window$TrackingRectangle;
    }
.end annotation


# static fields
.field public static final CLOSABLE:I = 0x10

.field public static final MAXIMIZABLE:I = 0x40

.field public static final MINIMIZABLE:I = 0x20

.field public static final MODAL:I = 0x200

.field public static final NORMAL:I = 0x0

.field public static final POPUP:I = 0x8

.field public static final RIGHT_TO_LEFT:I = 0x80

.field public static final TITLED:I = 0x1

.field public static final TRANSPARENT:I = 0x2

.field public static final UNIFIED:I = 0x100

.field public static final UNTITLED:I = 0x0

.field public static final UTILITY:I = 0x4

.field private static final visibleWindows:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/glass/ui/Window;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alpha:F

.field private appletMode:Z

.field private volatile delegatePtr:J

.field private volatile disableCount:I

.field private embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

.field private eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

.field protected height:I

.field private helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

.field private final isDecorated:Z

.field private volatile isFocusable:Z

.field private volatile isFocused:Z

.field private volatile isModal:Z

.field private volatile isResizable:Z

.field private volatile isVisible:Z

.field private lastKnownEmbeddedX:I

.field private lastKnownEmbeddedY:I

.field private level:I

.field private maximumHeight:I

.field private maximumWidth:I

.field private menubar:Lcom/sun/glass/ui/MenuBar;

.field private minimumHeight:I

.field private minimumWidth:I

.field private outputScaleX:F

.field private outputScaleY:F

.field private final owner:Lcom/sun/glass/ui/Window;

.field private final parent:J

.field protected platformScaleX:F

.field protected platformScaleY:F

.field private ptr:J

.field private renderScaleX:F

.field private renderScaleY:F

.field protected screen:Lcom/sun/glass/ui/Screen;

.field private shouldStartUndecoratedMove:Z

.field private state:I

.field private final styleMask:I

.field private title:Ljava/lang/String;

.field protected view:Lcom/sun/glass/ui/View;

.field protected width:I

.field protected x:I

.field protected y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    return-void
.end method

.method protected constructor <init>(J)V
    .registers 10

    const v6, 0x7fffffff

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/Window;->delegatePtr:J

    .line 201
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    .line 203
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 204
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 205
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    .line 207
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    .line 209
    iput v5, p0, Lcom/sun/glass/ui/Window;->state:I

    .line 210
    iput v5, p0, Lcom/sun/glass/ui/Window;->level:I

    .line 211
    iput v2, p0, Lcom/sun/glass/ui/Window;->x:I

    .line 212
    iput v2, p0, Lcom/sun/glass/ui/Window;->y:I

    .line 213
    iput v2, p0, Lcom/sun/glass/ui/Window;->width:I

    .line 214
    iput v2, p0, Lcom/sun/glass/ui/Window;->height:I

    .line 215
    iput v3, p0, Lcom/sun/glass/ui/Window;->alpha:F

    .line 216
    iput v3, p0, Lcom/sun/glass/ui/Window;->platformScaleX:F

    .line 217
    iput v3, p0, Lcom/sun/glass/ui/Window;->platformScaleY:F

    .line 218
    iput v3, p0, Lcom/sun/glass/ui/Window;->outputScaleX:F

    .line 219
    iput v3, p0, Lcom/sun/glass/ui/Window;->outputScaleY:F

    .line 220
    iput v3, p0, Lcom/sun/glass/ui/Window;->renderScaleX:F

    .line 221
    iput v3, p0, Lcom/sun/glass/ui/Window;->renderScaleY:F

    .line 222
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->appletMode:Z

    .line 228
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    .line 229
    iput v2, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    .line 230
    iput v2, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    .line 232
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    .line 233
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 234
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isFocused:Z

    .line 235
    iput-boolean v5, p0, Lcom/sun/glass/ui/Window;->isFocusable:Z

    .line 236
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 240
    iput v2, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    .line 242
    iput v2, p0, Lcom/sun/glass/ui/Window;->minimumWidth:I

    iput v2, p0, Lcom/sun/glass/ui/Window;->minimumHeight:I

    .line 243
    iput v6, p0, Lcom/sun/glass/ui/Window;->maximumWidth:I

    iput v6, p0, Lcom/sun/glass/ui/Window;->maximumHeight:I

    .line 303
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 304
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->owner:Lcom/sun/glass/ui/Window;

    .line 305
    iput-wide p1, p0, Lcom/sun/glass/ui/Window;->parent:J

    .line 306
    iput v2, p0, Lcom/sun/glass/ui/Window;->styleMask:I

    .line 307
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    .line 310
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/sun/glass/ui/Window;->_createChildWindow(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    .line 313
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_76

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not create platform window"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_76
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    if-nez v0, :cond_a4

    .line 318
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 320
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-eqz v0, :cond_a4

    .line 321
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getPlatformScaleX()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->platformScaleX:F

    .line 322
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getPlatformScaleY()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->platformScaleY:F

    .line 323
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleX()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->outputScaleX:F

    .line 324
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleY()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->outputScaleY:F

    .line 327
    :cond_a4
    return-void
.end method

.method protected constructor <init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide v8, p0, Lcom/sun/glass/ui/Window;->delegatePtr:J

    .line 201
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    .line 203
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 204
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 205
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    .line 207
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    .line 209
    iput v1, p0, Lcom/sun/glass/ui/Window;->state:I

    .line 210
    iput v1, p0, Lcom/sun/glass/ui/Window;->level:I

    .line 211
    iput v2, p0, Lcom/sun/glass/ui/Window;->x:I

    .line 212
    iput v2, p0, Lcom/sun/glass/ui/Window;->y:I

    .line 213
    iput v2, p0, Lcom/sun/glass/ui/Window;->width:I

    .line 214
    iput v2, p0, Lcom/sun/glass/ui/Window;->height:I

    .line 215
    iput v3, p0, Lcom/sun/glass/ui/Window;->alpha:F

    .line 216
    iput v3, p0, Lcom/sun/glass/ui/Window;->platformScaleX:F

    .line 217
    iput v3, p0, Lcom/sun/glass/ui/Window;->platformScaleY:F

    .line 218
    iput v3, p0, Lcom/sun/glass/ui/Window;->outputScaleX:F

    .line 219
    iput v3, p0, Lcom/sun/glass/ui/Window;->outputScaleY:F

    .line 220
    iput v3, p0, Lcom/sun/glass/ui/Window;->renderScaleX:F

    .line 221
    iput v3, p0, Lcom/sun/glass/ui/Window;->renderScaleY:F

    .line 222
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->appletMode:Z

    .line 228
    iput-object v4, p0, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    .line 229
    iput v2, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    .line 230
    iput v2, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    .line 232
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    .line 233
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 234
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isFocused:Z

    .line 235
    iput-boolean v1, p0, Lcom/sun/glass/ui/Window;->isFocusable:Z

    .line 236
    iput-boolean v2, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 240
    iput v2, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    .line 242
    iput v2, p0, Lcom/sun/glass/ui/Window;->minimumWidth:I

    iput v2, p0, Lcom/sun/glass/ui/Window;->minimumHeight:I

    .line 243
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sun/glass/ui/Window;->maximumWidth:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/sun/glass/ui/Window;->maximumHeight:I

    .line 249
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 250
    and-int/lit8 v0, p3, 0x3

    packed-switch v0, :pswitch_data_fa

    .line 256
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The visual kind should be UNTITLED, TITLED, or TRANSPARENT, but not a combination of these"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_66  #0x0, 0x1, 0x2
    and-int/lit8 v0, p3, 0xc

    sparse-switch v0, :sswitch_data_104

    .line 264
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The functional type should be NORMAL, POPUP, or UTILITY, but not a combination of these"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :sswitch_73
    and-int/lit16 v0, p3, 0x100

    if-eqz v0, :cond_f8

    .line 268
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->supportsUnifiedWindows()Z

    move-result v0

    if-nez v0, :cond_f8

    .line 269
    and-int/lit16 p3, p3, -0x101

    move v0, p3

    .line 272
    :goto_84
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_94

    .line 273
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/Application;->supportsTransparentWindows()Z

    move-result v3

    if-nez v3, :cond_94

    .line 274
    and-int/lit8 v0, v0, -0x3

    .line 278
    :cond_94
    iput-object p1, p0, Lcom/sun/glass/ui/Window;->owner:Lcom/sun/glass/ui/Window;

    .line 279
    iput-wide v8, p0, Lcom/sun/glass/ui/Window;->parent:J

    .line 280
    iput v0, p0, Lcom/sun/glass/ui/Window;->styleMask:I

    .line 281
    iget v0, p0, Lcom/sun/glass/ui/Window;->styleMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_ee

    move v0, v1

    :goto_a1
    iput-boolean v0, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    .line 283
    if-eqz p2, :cond_f0

    :goto_a5
    iput-object p2, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 284
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-eqz v0, :cond_cb

    .line 285
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getPlatformScaleX()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->platformScaleX:F

    .line 286
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getPlatformScaleY()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->platformScaleY:F

    .line 287
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleX()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->outputScaleX:F

    .line 288
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleY()F

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->outputScaleY:F

    .line 291
    :cond_cb
    if-eqz p1, :cond_f5

    invoke-virtual {p1}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v2

    :goto_d1
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 292
    invoke-virtual {v0}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v4

    iget v6, p0, Lcom/sun/glass/ui/Window;->styleMask:I

    move-object v1, p0

    .line 291
    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/Window;->_createWindow(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    .line 293
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_f7

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not create platform window"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ee
    move v0, v2

    .line 281
    goto :goto_a1

    .line 283
    :cond_f0
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object p2

    goto :goto_a5

    :cond_f5
    move-wide v2, v8

    .line 291
    goto :goto_d1

    .line 296
    :cond_f7
    return-void

    :cond_f8
    move v0, p3

    goto :goto_84

    .line 250
    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_66  #00000001
        :pswitch_66  #00000002
    .end packed-switch

    .line 258
    :sswitch_data_104
    .sparse-switch
        0x0 -> :sswitch_73
        0x4 -> :sswitch_73
        0x8 -> :sswitch_73
    .end sparse-switch
.end method

.method protected static add(Lcom/sun/glass/ui/Window;)V
    .registers 2

    .line 102
    sget-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method protected static addFirst(Lcom/sun/glass/ui/Window;)V
    .registers 2

    .line 106
    sget-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method private checkNotClosed()V
    .registers 5

    .line 335
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The window has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_10
    return-void
.end method

.method private checkScreenLocation()V
    .registers 4

    .line 565
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_getEmbeddedX(J)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->x:I

    .line 566
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_getEmbeddedY(J)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window;->y:I

    .line 567
    iget v0, p0, Lcom/sun/glass/ui/Window;->x:I

    iget v1, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/sun/glass/ui/Window;->y:I

    iget v1, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    if-eq v0, v1, :cond_2d

    .line 568
    :cond_1c
    iget v0, p0, Lcom/sun/glass/ui/Window;->x:I

    iput v0, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    .line 569
    iget v0, p0, Lcom/sun/glass/ui/Window;->y:I

    iput v0, p0, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    .line 570
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x200

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 572
    :cond_2d
    return-void
.end method

.method public static declared-synchronized getWindows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Window;",
            ">;"
        }
    .end annotation

    .line 91
    const-class v1, Lcom/sun/glass/ui/Window;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 92
    sget-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWindowsClone()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Window;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 97
    sget-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private isChild()Z
    .registers 5

    .line 357
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 358
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->parent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isInFullscreen()Z
    .registers 2

    .line 925
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    .line 926
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/sun/glass/ui/View;->isInFullscreen()Z

    move-result v0

    goto :goto_7
.end method

.method private synthetic lambda$setVisible$0()V
    .registers 1

    .line 701
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkScreenLocation()V

    return-void
.end method

.method private static synthetic lambda$setVisible$1(Ljava/lang/Runnable;)V
    .registers 1

    .line 702
    invoke-static {p0}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static remove(Lcom/sun/glass/ui/Window;)V
    .registers 2

    .line 111
    sget-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private synthesizeViewMoveEvent()V
    .registers 3

    .line 668
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_b

    .line 670
    const/16 v1, 0x1a7

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/View;->notifyView(I)V

    .line 672
    :cond_b
    return-void
.end method


# virtual methods
.method protected abstract _close(J)Z
.end method

.method protected abstract _createChildWindow(J)J
.end method

.method protected abstract _createWindow(JJI)J
.end method

.method protected abstract _enterModal(J)V
.end method

.method protected abstract _enterModalWithWindow(JJ)V
.end method

.method protected abstract _exitModal(J)V
.end method

.method protected abstract _getEmbeddedX(J)I
.end method

.method protected abstract _getEmbeddedY(J)I
.end method

.method protected abstract _grabFocus(J)Z
.end method

.method protected abstract _maximize(JZZ)Z
.end method

.method protected abstract _minimize(JZ)Z
.end method

.method protected abstract _releaseInput(J)V
.end method

.method protected abstract _requestFocus(JI)Z
.end method

.method protected abstract _requestInput(JLjava/lang/String;IDDDDDDDDDDDDDD)V
.end method

.method protected abstract _setAlpha(JF)V
.end method

.method protected abstract _setBackground(JFFF)Z
.end method

.method protected abstract _setBounds(JIIZZIIIIFF)V
.end method

.method protected abstract _setCursor(JLcom/sun/glass/ui/Cursor;)V
.end method

.method protected abstract _setEnabled(JZ)V
.end method

.method protected abstract _setFocusable(JZ)V
.end method

.method protected abstract _setIcon(JLcom/sun/glass/ui/Pixels;)V
.end method

.method protected abstract _setLevel(JI)V
.end method

.method protected abstract _setMaximumSize(JII)Z
.end method

.method protected abstract _setMenubar(JJ)Z
.end method

.method protected abstract _setMinimumSize(JII)Z
.end method

.method protected abstract _setResizable(JZ)Z
.end method

.method protected abstract _setTitle(JLjava/lang/String;)Z
.end method

.method protected abstract _setView(JLcom/sun/glass/ui/View;)Z
.end method

.method protected abstract _setVisible(JZ)Z
.end method

.method protected abstract _toBack(J)V
.end method

.method protected abstract _toFront(J)V
.end method

.method protected abstract _ungrabFocus(J)V
.end method

.method public close()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 342
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 343
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    if-eqz v0, :cond_21

    .line 344
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    .line 345
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->_setView(JLcom/sun/glass/ui/View;)Z

    .line 347
    :cond_15
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v0, v2}, Lcom/sun/glass/ui/View;->setWindow(Lcom/sun/glass/ui/Window;)V

    .line 348
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v0}, Lcom/sun/glass/ui/View;->close()V

    .line 349
    iput-object v2, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 351
    :cond_21
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2c

    .line 352
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_close(J)Z

    .line 354
    :cond_2c
    return-void
.end method

.method public dispatchNpapiEvent(Ljava/util/Map;)V
    .registers 4

    .line 1214
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This operation is not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enterModal()V
    .registers 3

    .line 1179
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1180
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    if-nez v0, :cond_f

    .line 1181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 1182
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_enterModal(J)V

    .line 1184
    :cond_f
    return-void
.end method

.method public enterModal(Lcom/sun/glass/ui/Window;)V
    .registers 6

    .line 1192
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1193
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    if-nez v0, :cond_13

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 1195
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sun/glass/ui/Window;->_enterModalWithWindow(JJ)V

    .line 1197
    :cond_13
    return-void
.end method

.method public exitModal()V
    .registers 3

    .line 1201
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1202
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1203
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_exitModal(J)V

    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 1206
    :cond_10
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 970
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 971
    iget v0, p0, Lcom/sun/glass/ui/Window;->alpha:F

    return v0
.end method

.method public getAppletMode()Z
    .registers 2

    .line 975
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->appletMode:Z

    return v0
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Window$EventHandler;
    .registers 2

    .line 1219
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1220
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 590
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 591
    iget v0, p0, Lcom/sun/glass/ui/Window;->height:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 920
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 921
    iget v0, p0, Lcom/sun/glass/ui/Window;->level:I

    return v0
.end method

.method public getMaximumHeight()I
    .registers 2

    .line 1072
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1073
    iget v0, p0, Lcom/sun/glass/ui/Window;->maximumHeight:I

    return v0
.end method

.method public getMaximumWidth()I
    .registers 2

    .line 1067
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1068
    iget v0, p0, Lcom/sun/glass/ui/Window;->maximumWidth:I

    return v0
.end method

.method public getMenuBar()Lcom/sun/glass/ui/MenuBar;
    .registers 2

    .line 453
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 454
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    return-object v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 1062
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1063
    iget v0, p0, Lcom/sun/glass/ui/Window;->minimumHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 1057
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1058
    iget v0, p0, Lcom/sun/glass/ui/Window;->minimumWidth:I

    return v0
.end method

.method public getNativeHandle()J
    .registers 5

    .line 375
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 376
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->delegatePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->delegatePtr:J

    :goto_d
    return-wide v0

    :cond_e
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    goto :goto_d
.end method

.method public getNativeWindow()J
    .registers 5

    .line 365
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 366
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 367
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->delegatePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->delegatePtr:J

    :goto_10
    return-wide v0

    :cond_11
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    goto :goto_10
.end method

.method public getOutputScaleX()F
    .registers 2

    .line 554
    iget v0, p0, Lcom/sun/glass/ui/Window;->outputScaleX:F

    return v0
.end method

.method public getOutputScaleY()F
    .registers 2

    .line 558
    iget v0, p0, Lcom/sun/glass/ui/Window;->outputScaleY:F

    return v0
.end method

.method public getOwner()Lcom/sun/glass/ui/Window;
    .registers 2

    .line 388
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 389
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->owner:Lcom/sun/glass/ui/Window;

    return-object v0
.end method

.method public final getPlatformScaleX()F
    .registers 2

    .line 515
    iget v0, p0, Lcom/sun/glass/ui/Window;->platformScaleX:F

    return v0
.end method

.method public final getPlatformScaleY()F
    .registers 2

    .line 524
    iget v0, p0, Lcom/sun/glass/ui/Window;->platformScaleY:F

    return v0
.end method

.method public getRawHandle()J
    .registers 3

    .line 384
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    return-wide v0
.end method

.method public final getRenderScaleX()F
    .registers 2

    .line 542
    iget v0, p0, Lcom/sun/glass/ui/Window;->renderScaleX:F

    return v0
.end method

.method public final getRenderScaleY()F
    .registers 2

    .line 550
    iget v0, p0, Lcom/sun/glass/ui/Window;->renderScaleY:F

    return v0
.end method

.method public getScreen()Lcom/sun/glass/ui/Screen;
    .registers 2

    .line 429
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 430
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    return-object v0
.end method

.method public getStyleMask()I
    .registers 2

    .line 448
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 449
    iget v0, p0, Lcom/sun/glass/ui/Window;->styleMask:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 882
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 883
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Lcom/sun/glass/ui/View;
    .registers 2

    .line 393
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 394
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 585
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 586
    iget v0, p0, Lcom/sun/glass/ui/Window;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 575
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 576
    iget v0, p0, Lcom/sun/glass/ui/Window;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 580
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 581
    iget v0, p0, Lcom/sun/glass/ui/Window;->y:I

    return v0
.end method

.method public grabFocus()Z
    .registers 3

    .line 855
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 856
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 858
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isFocused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 859
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The window must be focused when calling grabFocus()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_14
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_grabFocus(J)Z

    move-result v0

    return v0
.end method

.method handleMouseEvent(IIIIII)Z
    .registers 14

    .line 1430
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    if-nez v0, :cond_11

    .line 1431
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->handleMouseEvent(IIIIII)Z

    move-result v0

    .line 1433
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected handleWindowEvent(JI)V
    .registers 5

    .line 1335
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    if-eqz v0, :cond_9

    .line 1336
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sun/glass/ui/Window$EventHandler;->handleWindowEvent(Lcom/sun/glass/ui/Window;JI)V

    .line 1338
    :cond_9
    return-void
.end method

.method public isClosed()Z
    .registers 5

    .line 330
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 331
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

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

.method public isDecorated()Z
    .registers 2

    .line 467
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 468
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1002
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1003
    iget v0, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2

    .line 742
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 743
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isFocused:Z

    return v0
.end method

.method public isMaximized()Z
    .registers 3

    .line 486
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 487
    iget v0, p0, Lcom/sun/glass/ui/Window;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMinimized()Z
    .registers 3

    .line 472
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 473
    iget v0, p0, Lcom/sun/glass/ui/Window;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isModal()Z
    .registers 2

    .line 1209
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isModal:Z

    return v0
.end method

.method public isResizable()Z
    .registers 2

    .line 727
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 728
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    return v0
.end method

.method public isTransparentWindow()Z
    .registers 2

    .line 738
    iget v0, p0, Lcom/sun/glass/ui/Window;->styleMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isUnifiedWindow()Z
    .registers 2

    .line 733
    iget v0, p0, Lcom/sun/glass/ui/Window;->styleMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isVisible()Z
    .registers 2

    .line 660
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 661
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    return v0
.end method

.method public maximize(Z)Z
    .registers 5

    .line 492
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 493
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 494
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isMaximized()Z

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/sun/glass/ui/Window;->_maximize(JZZ)Z

    .line 495
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isMaximized()Z

    move-result v0

    return v0
.end method

.method public minimize(Z)Z
    .registers 4

    .line 478
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 479
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 480
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_minimize(JZ)Z

    .line 482
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isMinimized()Z

    move-result v0

    return v0
.end method

.method protected notifyClose()V
    .registers 4

    .line 1241
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x209

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1242
    return-void
.end method

.method protected notifyDelegatePtr(J)V
    .registers 4

    .line 1328
    iput-wide p1, p0, Lcom/sun/glass/ui/Window;->delegatePtr:J

    .line 1329
    return-void
.end method

.method protected notifyDestroy()V
    .registers 7

    const-wide/16 v4, 0x0

    .line 1246
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    .line 1256
    :goto_8
    return-void

    .line 1250
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x20a

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1252
    iput-wide v4, p0, Lcom/sun/glass/ui/Window;->ptr:J

    .line 1255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Window;->setVisible(Z)V

    goto :goto_8
.end method

.method protected notifyFocus(I)V
    .registers 4

    .line 1311
    const/16 v0, 0x21d

    if-eq p1, v0, :cond_13

    const/4 v0, 0x1

    .line 1313
    :goto_5
    iget-boolean v1, p0, Lcom/sun/glass/ui/Window;->isFocused:Z

    if-eq v1, v0, :cond_12

    .line 1314
    iput-boolean v0, p0, Lcom/sun/glass/ui/Window;->isFocused:Z

    .line 1315
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1317
    :cond_12
    return-void

    .line 1311
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected notifyFocusDisabled()V
    .registers 4

    .line 1320
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x221

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1321
    return-void
.end method

.method protected notifyFocusUngrab()V
    .registers 4

    .line 1324
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x222

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1325
    return-void
.end method

.method notifyFullscreen(Z)V
    .registers 5

    const/high16 v2, 0x3f800000  # 1.0f

    .line 931
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getAlpha()F

    move-result v0

    .line 932
    cmpg-float v1, v0, v2

    if-gez v1, :cond_11

    .line 933
    if-eqz p1, :cond_12

    .line 935
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->_setAlpha(JF)V

    .line 941
    :cond_11
    :goto_11
    return-void

    .line 938
    :cond_12
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Window;->setAlpha(F)V

    goto :goto_11
.end method

.method protected notifyLevelChanged(I)V
    .registers 3

    .line 1465
    iput p1, p0, Lcom/sun/glass/ui/Window;->level:I

    .line 1466
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    if-eqz v0, :cond_b

    .line 1467
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/Window$EventHandler;->handleLevelEvent(I)V

    .line 1469
    :cond_b
    return-void
.end method

.method protected notifyMove(II)V
    .registers 6

    .line 1259
    iput p1, p0, Lcom/sun/glass/ui/Window;->x:I

    .line 1260
    iput p2, p0, Lcom/sun/glass/ui/Window;->y:I

    .line 1261
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x200

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1262
    return-void
.end method

.method protected notifyMoveToAnotherScreen(Lcom/sun/glass/ui/Screen;)V
    .registers 2

    .line 1269
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/Window;->setScreen(Lcom/sun/glass/ui/Screen;)V

    .line 1270
    return-void
.end method

.method protected notifyRescale()V
    .registers 4

    .line 1265
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x201

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1266
    return-void
.end method

.method protected notifyResize(III)V
    .registers 7

    const/16 v2, 0x214

    .line 1284
    const/16 v0, 0x213

    if-ne p1, v0, :cond_20

    .line 1285
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/glass/ui/Window;->state:I

    .line 1300
    :cond_9
    :goto_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1305
    if-eq p1, v2, :cond_16

    const/16 v0, 0x215

    if-ne p1, v0, :cond_1f

    .line 1306
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x1ff

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1308
    :cond_1f
    return-void

    .line 1287
    :cond_20
    if-ne p1, v2, :cond_33

    .line 1288
    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/glass/ui/Window;->state:I

    .line 1292
    :goto_25
    iput p2, p0, Lcom/sun/glass/ui/Window;->width:I

    .line 1293
    iput p3, p0, Lcom/sun/glass/ui/Window;->height:I

    .line 1296
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v0, :cond_9

    .line 1297
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->updateRectangles()V

    goto :goto_9

    .line 1290
    :cond_33
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/glass/ui/Window;->state:I

    goto :goto_25
.end method

.method protected notifyScaleChanged(FFFF)V
    .registers 6

    .line 501
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-nez v0, :cond_5

    .line 507
    :goto_4
    return-void

    .line 502
    :cond_5
    iput p1, p0, Lcom/sun/glass/ui/Window;->platformScaleX:F

    .line 503
    iput p2, p0, Lcom/sun/glass/ui/Window;->platformScaleY:F

    .line 504
    iput p3, p0, Lcom/sun/glass/ui/Window;->outputScaleX:F

    .line 505
    iput p4, p0, Lcom/sun/glass/ui/Window;->outputScaleY:F

    .line 506
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->notifyRescale()V

    goto :goto_4
.end method

.method public releaseInput()V
    .registers 3

    .line 1636
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1637
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_releaseInput(J)V

    .line 1638
    return-void
.end method

.method public requestFocus()Z
    .registers 2

    .line 790
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 791
    const/16 v0, 0x21e

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Window;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public requestFocus(I)Z
    .registers 4

    const/16 v1, 0x21d

    .line 763
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 764
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 766
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->isChild()Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x21e

    if-eq p1, v0, :cond_1a

    .line 767
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid focus event ID for top-level window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_1a
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-lt p1, v1, :cond_26

    const/16 v0, 0x220

    if-le p1, v0, :cond_2e

    .line 771
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid focus event ID for child window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_2e
    if-ne p1, v1, :cond_38

    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isFocused()Z

    move-result v0

    if-nez v0, :cond_38

    .line 776
    const/4 v0, 0x1

    .line 786
    :goto_37
    return v0

    .line 781
    :cond_38
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isFocusable:Z

    if-nez v0, :cond_3e

    .line 783
    const/4 v0, 0x0

    goto :goto_37

    .line 786
    :cond_3e
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_requestFocus(JI)Z

    move-result v0

    goto :goto_37
.end method

.method public requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V
    .registers 68

    .line 1624
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1625
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/Window;->ptr:J

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    move-wide/from16 v16, p11

    move-wide/from16 v18, p13

    move-wide/from16 v20, p15

    move-wide/from16 v22, p17

    move-wide/from16 v24, p19

    move-wide/from16 v26, p21

    move-wide/from16 v28, p23

    move-wide/from16 v30, p25

    move-wide/from16 v32, p27

    move-wide/from16 v34, p29

    invoke-virtual/range {v3 .. v35}, Lcom/sun/glass/ui/Window;->_requestInput(JLjava/lang/String;IDDDDDDDDDDDDDD)V

    .line 1629
    return-void
.end method

.method public setAlpha(F)V
    .registers 5

    const/high16 v1, 0x3f800000  # 1.0f

    .line 954
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 955
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 956
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    cmpl-float v0, p1, v1

    if-lez v0, :cond_19

    .line 957
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alpha should be in the range [0f..1f]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_19
    iput p1, p0, Lcom/sun/glass/ui/Window;->alpha:F

    .line 962
    cmpg-float v0, p1, v1

    if-gez v0, :cond_26

    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->isInFullscreen()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 967
    :goto_25
    return-void

    .line 966
    :cond_26
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    iget v2, p0, Lcom/sun/glass/ui/Window;->alpha:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->_setAlpha(JF)V

    goto :goto_25
.end method

.method public setAppletMode(Z)V
    .registers 2

    .line 979
    iput-boolean p1, p0, Lcom/sun/glass/ui/Window;->appletMode:Z

    .line 980
    return-void
.end method

.method public setBackground(FFF)Z
    .registers 11

    .line 996
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 997
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 998
    iget-wide v2, p0, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/Window;->_setBackground(JFFF)Z

    move-result v0

    return v0
.end method

.method public setBounds(FFZZFFFFFF)V
    .registers 27

    .line 628
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 630
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/glass/ui/Window;->platformScaleX:F

    .line 631
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/glass/ui/Window;->platformScaleY:F

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getPlatformX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v6, v2, v3

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getPlatformY()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v7, v2, v3

    .line 634
    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-lez v2, :cond_88

    mul-float v2, p5, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_4e
    double-to-int v10, v2

    .line 635
    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-lez v2, :cond_8c

    mul-float v2, p6, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_5b
    double-to-int v11, v2

    .line 636
    const/4 v2, 0x0

    cmpl-float v2, p7, v2

    if-lez v2, :cond_90

    mul-float v2, p7, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_68
    double-to-int v12, v2

    .line 637
    const/4 v2, 0x0

    cmpl-float v2, p8, v2

    if-lez v2, :cond_94

    mul-float v2, p8, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_75
    double-to-int v13, v2

    .line 638
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sun/glass/ui/Window;->ptr:J

    move-object/from16 v3, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v3 .. v15}, Lcom/sun/glass/ui/Window;->_setBounds(JIIZZIIIIFF)V

    .line 639
    return-void

    .line 634
    :cond_88
    move/from16 v0, p5

    float-to-double v2, v0

    goto :goto_4e

    .line 635
    :cond_8c
    move/from16 v0, p6

    float-to-double v2, v0

    goto :goto_5b

    .line 636
    :cond_90
    move/from16 v0, p7

    float-to-double v2, v0

    goto :goto_68

    .line 637
    :cond_94
    move/from16 v0, p8

    float-to-double v2, v0

    goto :goto_75
.end method

.method public setContentSize(II)V
    .registers 17

    .line 654
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 655
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 656
    iget-wide v2, p0, Lcom/sun/glass/ui/Window;->ptr:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v1 .. v13}, Lcom/sun/glass/ui/Window;->_setBounds(JIIZZIIIIFF)V

    .line 657
    return-void
.end method

.method public setCursor(Lcom/sun/glass/ui/Cursor;)V
    .registers 4

    .line 1142
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1143
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setCursor(JLcom/sun/glass/ui/Cursor;)V

    .line 1144
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 1034
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1035
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1036
    if-nez p1, :cond_12

    .line 1037
    iget v0, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1e

    .line 1054
    :cond_11
    :goto_11
    return-void

    .line 1042
    :cond_12
    iget v0, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    if-eqz v0, :cond_11

    .line 1046
    iget v0, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/glass/ui/Window;->disableCount:I

    if-gtz v0, :cond_11

    .line 1053
    :cond_1e
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isEnabled()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->_setEnabled(JZ)V

    goto :goto_11
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Window$EventHandler;)V
    .registers 2

    .line 1224
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1225
    iput-object p1, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    .line 1226
    return-void
.end method

.method public setFocusable(Z)V
    .registers 4

    .line 801
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 802
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 803
    iput-boolean p1, p0, Lcom/sun/glass/ui/Window;->isFocusable:Z

    .line 804
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 805
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setFocusable(JZ)V

    .line 807
    :cond_13
    return-void
.end method

.method public setIcon(Lcom/sun/glass/ui/Pixels;)V
    .registers 4

    .line 1128
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1129
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1130
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setIcon(JLcom/sun/glass/ui/Pixels;)V

    .line 1131
    return-void
.end method

.method public setLevel(I)V
    .registers 4

    .line 908
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 909
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 910
    const/4 v0, 0x1

    if-lt p1, v0, :cond_c

    const/4 v0, 0x3

    if-le p1, v0, :cond_14

    .line 911
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level should be in the range [1..3]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_14
    iget v0, p0, Lcom/sun/glass/ui/Window;->level:I

    if-eq v0, p1, :cond_1f

    .line 914
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setLevel(JI)V

    .line 915
    iput p1, p0, Lcom/sun/glass/ui/Window;->level:I

    .line 917
    :cond_1f
    return-void
.end method

.method public setMaximumSize(II)V
    .registers 8

    const v4, 0x7fffffff

    const/4 v0, -0x1

    .line 1107
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1108
    if-ltz p1, :cond_b

    if-gez p2, :cond_15

    .line 1109
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-custom {p1, p2}, call_site_815("makeConcatWithConstants", (II)Ljava/lang/String;, "The width and height must be >= 0. Got: width=\u0001; height=\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_15
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1112
    iget-wide v2, p0, Lcom/sun/glass/ui/Window;->ptr:J

    .line 1114
    if-ne p1, v4, :cond_2a

    move v1, v0

    .line 1115
    :goto_1d
    if-ne p2, v4, :cond_2c

    .line 1112
    :goto_1f
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/sun/glass/ui/Window;->_setMaximumSize(JII)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1117
    iput p1, p0, Lcom/sun/glass/ui/Window;->maximumWidth:I

    .line 1118
    iput p2, p0, Lcom/sun/glass/ui/Window;->maximumHeight:I

    .line 1120
    :cond_29
    return-void

    :cond_2a
    move v1, p1

    .line 1114
    goto :goto_1d

    :cond_2c
    move v0, p2

    .line 1115
    goto :goto_1f
.end method

.method public setMenuBar(Lcom/sun/glass/ui/MenuBar;)V
    .registers 6

    .line 459
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 460
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 461
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p1}, Lcom/sun/glass/ui/MenuBar;->getNativeMenu()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sun/glass/ui/Window;->_setMenubar(JJ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 462
    iput-object p1, p0, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    .line 464
    :cond_14
    return-void
.end method

.method public setMinimumSize(II)V
    .registers 5

    .line 1086
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1087
    if-ltz p1, :cond_7

    if-gez p2, :cond_11

    .line 1088
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-custom {p1, p2}, call_site_816("makeConcatWithConstants", (II)Ljava/lang/String;, "The width and height must be >= 0. Got: width=\u0001; height=\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_11
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1091
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/glass/ui/Window;->_setMinimumSize(JII)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1092
    iput p1, p0, Lcom/sun/glass/ui/Window;->minimumWidth:I

    .line 1093
    iput p2, p0, Lcom/sun/glass/ui/Window;->minimumHeight:I

    .line 1095
    :cond_20
    return-void
.end method

.method public setPosition(II)V
    .registers 17

    .line 642
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 643
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 644
    iget-wide v2, p0, Lcom/sun/glass/ui/Window;->ptr:J

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v13}, Lcom/sun/glass/ui/Window;->_setBounds(JIIZZIIIIFF)V

    .line 645
    return-void
.end method

.method public setRenderScaleX(F)V
    .registers 3

    .line 528
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-nez v0, :cond_5

    .line 530
    :goto_4
    return-void

    .line 529
    :cond_5
    iput p1, p0, Lcom/sun/glass/ui/Window;->renderScaleX:F

    goto :goto_4
.end method

.method public setRenderScaleY(F)V
    .registers 3

    .line 533
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-nez v0, :cond_5

    .line 535
    :goto_4
    return-void

    .line 534
    :cond_5
    iput p1, p0, Lcom/sun/glass/ui/Window;->renderScaleY:F

    goto :goto_4
.end method

.method public setResizable(Z)Z
    .registers 4

    .line 715
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 716
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 717
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    if-eq v0, p1, :cond_17

    .line 718
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setResizable(JZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 719
    iput-boolean p1, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    .line 720
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->synthesizeViewMoveEvent()V

    .line 723
    :cond_17
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    return v0
.end method

.method protected setScreen(Lcom/sun/glass/ui/Screen;)V
    .registers 8

    .line 434
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 436
    iget-object v4, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 437
    iput-object p1, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 439
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    if-eqz v0, :cond_27

    .line 440
    if-nez v4, :cond_11

    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    if-nez v0, :cond_1b

    :cond_11
    if-eqz v4, :cond_27

    iget-object v0, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 441
    invoke-virtual {v4, v0}, Lcom/sun/glass/ui/Screen;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 442
    :cond_1b
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/glass/ui/Window$EventHandler;->handleScreenChangedEvent(Lcom/sun/glass/ui/Window;JLcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V

    .line 445
    :cond_27
    return-void
.end method

.method public setShouldStartUndecoratedMove(Z)V
    .registers 2

    .line 1233
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1234
    iput-boolean p1, p0, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    .line 1235
    return-void
.end method

.method public setSize(II)V
    .registers 17

    .line 648
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 649
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 650
    iget-wide v2, p0, Lcom/sun/glass/ui/Window;->ptr:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v1 .. v13}, Lcom/sun/glass/ui/Window;->_setBounds(JIIZZIIIIFF)V

    .line 651
    return-void
.end method

.method protected setState(I)V
    .registers 2

    .line 1273
    iput p1, p0, Lcom/sun/glass/ui/Window;->state:I

    .line 1274
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4

    .line 888
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 889
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 890
    if-nez p1, :cond_a

    .line 891
    const-string p1, ""

    .line 893
    :cond_a
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 894
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setTitle(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 895
    iput-object p1, p0, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    .line 898
    :cond_1c
    return-void
.end method

.method public setUndecoratedMoveRectangle(I)V
    .registers 4

    .line 1350
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1351
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1353
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Glass Window.setUndecoratedMoveRectangle is only valid for Undecorated Window. In the future this will be hard error."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1354
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1361
    :cond_12
    :goto_12
    return-void

    .line 1358
    :cond_13
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v0, :cond_12

    .line 1359
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setMoveRectangle(I)V

    goto :goto_12
.end method

.method public setUndecoratedResizeRectangle(I)V
    .registers 4

    .line 1390
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1391
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    if-nez v0, :cond_17

    .line 1393
    :cond_c
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Glass Window.setUndecoratedResizeRectangle is only valid for Undecorated Resizable Window. In the future this will be hard error."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1394
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1401
    :cond_16
    :goto_16
    return-void

    .line 1398
    :cond_17
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v0, :cond_16

    .line 1399
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setResizeRectangle(I)V

    goto :goto_16
.end method

.method public setView(Lcom/sun/glass/ui/View;)V
    .registers 5

    const/4 v2, 0x0

    .line 399
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 400
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 401
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    .line 402
    if-ne v0, p1, :cond_e

    .line 426
    :cond_d
    :goto_d
    return-void

    .line 406
    :cond_e
    if-eqz v0, :cond_13

    .line 407
    invoke-virtual {v0, v2}, Lcom/sun/glass/ui/View;->setWindow(Lcom/sun/glass/ui/Window;)V

    .line 409
    :cond_13
    if-eqz p1, :cond_1e

    .line 410
    invoke-virtual {p1}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1e

    .line 412
    invoke-virtual {v0, v2}, Lcom/sun/glass/ui/Window;->setView(Lcom/sun/glass/ui/View;)V

    .line 416
    :cond_1e
    if-eqz p1, :cond_3b

    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setView(JLcom/sun/glass/ui/View;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 417
    iput-object p1, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 418
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/View;->setWindow(Lcom/sun/glass/ui/Window;)V

    .line 419
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    if-nez v0, :cond_d

    .line 420
    new-instance v0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    invoke-direct {v0, p0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;-><init>(Lcom/sun/glass/ui/Window;)V

    iput-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    goto :goto_d

    .line 423
    :cond_3b
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/glass/ui/Window;->_setView(JLcom/sun/glass/ui/View;)Z

    .line 424
    iput-object v2, p0, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    goto :goto_d
.end method

.method public setVisible(Z)V
    .registers 6

    const-wide/16 v2, 0x0

    .line 676
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 677
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    if-eq v0, p1, :cond_34

    .line 678
    if-nez p1, :cond_38

    .line 679
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 680
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/View;->setVisible(Z)V

    .line 683
    :cond_18
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    .line 684
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setVisible(JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 688
    :goto_26
    invoke-static {p0}, Lcom/sun/glass/ui/Window;->remove(Lcom/sun/glass/ui/Window;)V

    .line 689
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->parent:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    .line 690
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 711
    :cond_34
    :goto_34
    return-void

    .line 686
    :cond_35
    iput-boolean p1, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    goto :goto_26

    .line 693
    :cond_38
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 694
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/glass/ui/Window;->_setVisible(JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 696
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 697
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/glass/ui/Window;->isVisible:Z

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/View;->setVisible(Z)V

    .line 699
    :cond_52
    invoke-static {p0}, Lcom/sun/glass/ui/Window;->add(Lcom/sun/glass/ui/Window;)V

    .line 700
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->parent:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_74

    .line 701
    invoke-custom {p0}, call_site_2672("run", (Lcom/sun/glass/ui/Window;)Ljava/lang/Runnable;, ()V, invoke-direct@Lcom/sun/glass/ui/Window;->lambda$setVisible$0()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 702
    invoke-custom {v0}, call_site_1047("run", (Ljava/lang/Runnable;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/sun/glass/ui/Window;->lambda$setVisible$1(Ljava/lang/Runnable;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 704
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/glass/ui/Application;->createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    .line 705
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/Timer;->start(I)V

    .line 708
    :cond_74
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->synthesizeViewMoveEvent()V

    goto :goto_34
.end method

.method public shouldStartUndecoratedMove(II)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1368
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1369
    iget-boolean v2, p0, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    if-ne v2, v0, :cond_a

    .line 1379
    :goto_9
    return v0

    .line 1372
    :cond_a
    iget-boolean v2, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    if-ne v2, v0, :cond_10

    move v0, v1

    .line 1373
    goto :goto_9

    .line 1376
    :cond_10
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v0, :cond_1b

    .line 1377
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->shouldStartMove(II)Z

    move-result v0

    goto :goto_9

    :cond_1b
    move v0, v1

    .line 1379
    goto :goto_9
.end method

.method public shouldStartUndecoratedResize(II)Z
    .registers 6

    const/4 v0, 0x0

    .line 1409
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1410
    iget-boolean v1, p0, Lcom/sun/glass/ui/Window;->isDecorated:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iget-boolean v1, p0, Lcom/sun/glass/ui/Window;->isResizable:Z

    if-nez v1, :cond_e

    .line 1417
    :cond_d
    :goto_d
    return v0

    .line 1414
    :cond_e
    iget-object v1, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v1, :cond_d

    .line 1415
    iget-object v0, p0, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->shouldStartResize(II)Z

    move-result v0

    goto :goto_d
.end method

.method public toBack()V
    .registers 3

    .line 1166
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1167
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1168
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_toBack(J)V

    .line 1169
    return-void
.end method

.method public toFront()V
    .registers 3

    .line 1153
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1154
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1155
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_toFront(J)V

    .line 1156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .line 1438
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1440
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v0

    .line 1441
    iget-object v2, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1442
    :goto_15
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isDecorated()Z

    move-result v3

    .line 1443
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1444
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isVisible()Z

    move-result v5

    .line 1445
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isFocused()Z

    move-result v6

    .line 1446
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->isModal()Z

    move-result v7

    iget v8, p0, Lcom/sun/glass/ui/Window;->state:I

    .line 1448
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v9

    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v10

    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v12

    invoke-custom/range {v0 .. v12}, call_site_2665("makeConcatWithConstants", (JLjava/io/Serializable;ZLjava/lang/String;ZZZIIIII)Ljava/lang/String;, "Window:\n    ptr: \u0001\n    screen ptr: \u0001\n    isDecorated: \u0001\n    title: \u0001\n    visible: \u0001\n    focused: \u0001\n    modal: \u0001\n    state: \u0001\n    x: \u0001, y: \u0001, w: \u0001, h: \u0001\n")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 1439
    return-object v0

    .line 1441
    :cond_40
    const-string v2, "null"

    goto :goto_15
.end method

.method public ungrabFocus()V
    .registers 3

    .line 876
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 877
    invoke-direct {p0}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 878
    iget-wide v0, p0, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Window;->_ungrabFocus(J)V

    .line 879
    return-void
.end method
