.class public final Lcom/sun/glass/ui/Window$Level;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Level"
.end annotation


# static fields
.field public static final FLOATING:I = 0x2

.field public static final NORMAL:I = 0x1

.field public static final TOPMOST:I = 0x3

.field private static final _MAX:I = 0x3

.field private static final _MIN:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
