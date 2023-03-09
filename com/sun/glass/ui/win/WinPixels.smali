.class final Lcom/sun/glass/ui/win/WinPixels;
.super Lcom/sun/glass/ui/Pixels;
.source "WinPixels.java"


# static fields
.field private static final nativeFormat:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Lcom/sun/glass/ui/win/WinPixels;->_initIDs()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/win/WinPixels;->nativeFormat:I

    .line 41
    return-void
.end method

.method protected constructor <init>(IILjava/nio/ByteBuffer;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/ByteBuffer;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/IntBuffer;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;FF)V
    .registers 6

    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/IntBuffer;FF)V

    .line 55
    return-void
.end method

.method private static native _initIDs()I
.end method

.method static getNativeFormat_impl()I
    .registers 1

    .line 58
    sget v0, Lcom/sun/glass/ui/win/WinPixels;->nativeFormat:I

    return v0
.end method


# virtual methods
.method protected native _attachByte(JIILjava/nio/ByteBuffer;[BI)V
.end method

.method protected native _attachInt(JIILjava/nio/IntBuffer;[II)V
.end method

.method protected native _fillDirectByteBuffer(Ljava/nio/ByteBuffer;)V
.end method
