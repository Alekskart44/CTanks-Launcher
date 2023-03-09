.class public Lcom/sun/glass/events/ViewEvent;
.super Ljava/lang/Object;
.source "ViewEvent.java"


# static fields
.field public static final ADD:I = 0x19b

.field public static final FULLSCREEN_ENTER:I = 0x1af

.field public static final FULLSCREEN_EXIT:I = 0x1b0

.field public static final MOVE:I = 0x1a7

.field public static final REMOVE:I = 0x19c

.field public static final REPAINT:I = 0x1a5

.field public static final RESIZE:I = 0x1a6


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .registers 4

    .line 41
    const-string v0, "UNKNOWN"

    .line 42
    sparse-switch p0, :sswitch_data_24

    .line 54
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p0}, call_site_2599("makeConcatWithConstants", (I)Ljava/lang/String;, "Unknown view event type: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :goto_e
    return-object v0

    .line 43
    :sswitch_f
    const-string v0, "ADD"

    goto :goto_e

    .line 44
    :sswitch_12
    const-string v0, "REMOVE"

    goto :goto_e

    .line 46
    :sswitch_15
    const-string v0, "REPAINT"

    goto :goto_e

    .line 47
    :sswitch_18
    const-string v0, "RESIZE"

    goto :goto_e

    .line 48
    :sswitch_1b
    const-string v0, "MOVE"

    goto :goto_e

    .line 50
    :sswitch_1e
    const-string v0, "FULLSCREEN_ENTER"

    goto :goto_e

    .line 51
    :sswitch_21
    const-string v0, "FULLSCREEN_EXIT"

    goto :goto_e

    .line 42
    :sswitch_data_24
    .sparse-switch
        0x19b -> :sswitch_f
        0x19c -> :sswitch_12
        0x1a5 -> :sswitch_15
        0x1a6 -> :sswitch_18
        0x1a7 -> :sswitch_1b
        0x1af -> :sswitch_1e
        0x1b0 -> :sswitch_21
    .end sparse-switch
.end method
