.class public Lcom/sun/glass/events/WindowEvent;
.super Ljava/lang/Object;
.source "WindowEvent.java"


# static fields
.field public static final CLOSE:I = 0x209

.field public static final DESTROY:I = 0x20a

.field public static final FOCUS_DISABLED:I = 0x221

.field public static final FOCUS_GAINED:I = 0x21e

.field public static final FOCUS_GAINED_BACKWARD:I = 0x220

.field public static final FOCUS_GAINED_FORWARD:I = 0x21f

.field public static final FOCUS_LOST:I = 0x21d

.field public static final FOCUS_UNGRAB:I = 0x222

.field public static final MAXIMIZE:I = 0x214

.field public static final MINIMIZE:I = 0x213

.field public static final MOVE:I = 0x200

.field public static final RESCALE:I = 0x201

.field public static final RESIZE:I = 0x1ff

.field public static final RESTORE:I = 0x215

.field public static final _FOCUS_MAX:I = 0x220

.field public static final _FOCUS_MIN:I = 0x21d


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventName(I)Ljava/lang/String;
    .registers 2

    .line 52
    sparse-switch p0, :sswitch_data_30

    .line 82
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 54
    :sswitch_6
    const-string v0, "RESIZE"

    goto :goto_5

    .line 56
    :sswitch_9
    const-string v0, "MOVE"

    goto :goto_5

    .line 58
    :sswitch_c
    const-string v0, "RESCALE"

    goto :goto_5

    .line 60
    :sswitch_f
    const-string v0, "CLOSE"

    goto :goto_5

    .line 62
    :sswitch_12
    const-string v0, "DESTROY"

    goto :goto_5

    .line 64
    :sswitch_15
    const-string v0, "MINIMIZE"

    goto :goto_5

    .line 66
    :sswitch_18
    const-string v0, "MAXIMIZE"

    goto :goto_5

    .line 68
    :sswitch_1b
    const-string v0, "RESTORE"

    goto :goto_5

    .line 70
    :sswitch_1e
    const-string v0, "FOCUS_LOST"

    goto :goto_5

    .line 72
    :sswitch_21
    const-string v0, "FOCUS_GAINED"

    goto :goto_5

    .line 74
    :sswitch_24
    const-string v0, "FOCUS_GAINED_FORWARD"

    goto :goto_5

    .line 76
    :sswitch_27
    const-string v0, "FOCUS_GAINED_BACKWARD"

    goto :goto_5

    .line 78
    :sswitch_2a
    const-string v0, "FOCUS_DISABLED"

    goto :goto_5

    .line 80
    :sswitch_2d
    const-string v0, "FOCUS_UNGRAB"

    goto :goto_5

    .line 52
    :sswitch_data_30
    .sparse-switch
        0x1ff -> :sswitch_6
        0x200 -> :sswitch_9
        0x201 -> :sswitch_c
        0x209 -> :sswitch_f
        0x20a -> :sswitch_12
        0x213 -> :sswitch_15
        0x214 -> :sswitch_18
        0x215 -> :sswitch_1b
        0x21d -> :sswitch_1e
        0x21e -> :sswitch_21
        0x21f -> :sswitch_24
        0x220 -> :sswitch_27
        0x221 -> :sswitch_2a
        0x222 -> :sswitch_2d
    .end sparse-switch
.end method
