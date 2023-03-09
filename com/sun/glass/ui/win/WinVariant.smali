.class final Lcom/sun/glass/ui/win/WinVariant;
.super Ljava/lang/Object;
.source "WinVariant.java"


# static fields
.field static final VT_ARRAY:I = 0x2000

.field static final VT_BOOL:I = 0xb

.field static final VT_BSTR:I = 0x8

.field static final VT_EMPTY:I = 0x0

.field static final VT_I2:I = 0x2

.field static final VT_I4:I = 0x3

.field static final VT_NULL:I = 0x1

.field static final VT_R4:I = 0x4

.field static final VT_R8:I = 0x5

.field static final VT_UNKNOWN:I = 0xd


# instance fields
.field boolVal:Z

.field bstrVal:Ljava/lang/String;

.field dblVal:D

.field fltVal:F

.field iVal:S

.field lVal:I

.field pDblVal:[D

.field punkVal:J

.field vt:S


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
