.class public abstract Lcom/sun/glass/ui/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# static fields
.field public static final CURSOR_CLOSED_HAND:I = 0x4

.field public static final CURSOR_CROSSHAIR:I = 0x3

.field public static final CURSOR_CUSTOM:I = 0x0

.field public static final CURSOR_DEFAULT:I = 0x1

.field public static final CURSOR_DISAPPEAR:I = 0xd

.field private static final CURSOR_MAX:I = 0x13

.field public static final CURSOR_MOVE:I = 0x13

.field public static final CURSOR_NONE:I = -0x1

.field public static final CURSOR_OPEN_HAND:I = 0x5

.field public static final CURSOR_POINTING_HAND:I = 0x6

.field public static final CURSOR_RESIZE_DOWN:I = 0xa

.field public static final CURSOR_RESIZE_LEFT:I = 0x7

.field public static final CURSOR_RESIZE_LEFTRIGHT:I = 0xb

.field public static final CURSOR_RESIZE_NORTHEAST:I = 0x12

.field public static final CURSOR_RESIZE_NORTHWEST:I = 0x11

.field public static final CURSOR_RESIZE_RIGHT:I = 0x8

.field public static final CURSOR_RESIZE_SOUTHEAST:I = 0x10

.field public static final CURSOR_RESIZE_SOUTHWEST:I = 0xf

.field public static final CURSOR_RESIZE_UP:I = 0x9

.field public static final CURSOR_RESIZE_UPDOWN:I = 0xc

.field public static final CURSOR_TEXT:I = 0x2

.field public static final CURSOR_WAIT:I = 0xe


# instance fields
.field private ptr:J

.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 61
    iput p1, p0, Lcom/sun/glass/ui/Cursor;->type:I

    .line 62
    return-void
.end method

.method protected constructor <init>(IILcom/sun/glass/ui/Pixels;)V
    .registers 6

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/glass/ui/Cursor;-><init>(I)V

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/glass/ui/Cursor;->_createCursor(IILcom/sun/glass/ui/Pixels;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/Cursor;->ptr:J

    .line 67
    return-void
.end method

.method public static getBestSize(II)Lcom/sun/glass/ui/Size;
    .registers 3

    .line 118
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 119
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sun/glass/ui/Application;->staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;

    move-result-object v0

    return-object v0
.end method

.method public static setVisible(Z)V
    .registers 2

    .line 110
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 111
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/glass/ui/Application;->staticCursor_setVisible(Z)V

    .line 112
    return-void
.end method


# virtual methods
.method protected abstract _createCursor(IILcom/sun/glass/ui/Pixels;)J
.end method

.method protected final getNativeCursor()J
    .registers 3

    .line 75
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 76
    iget-wide v0, p0, Lcom/sun/glass/ui/Cursor;->ptr:J

    return-wide v0
.end method

.method public final getType()I
    .registers 2

    .line 70
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 71
    iget v0, p0, Lcom/sun/glass/ui/Cursor;->type:I

    return v0
.end method
