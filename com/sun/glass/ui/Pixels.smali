.class public abstract Lcom/sun/glass/ui/Pixels;
.super Ljava/lang/Object;
.source "Pixels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Pixels$Format;
    }
.end annotation


# instance fields
.field protected final bytes:Ljava/nio/ByteBuffer;

.field protected final bytesPerComponent:I

.field protected final height:I

.field protected final ints:Ljava/nio/IntBuffer;

.field private final scalex:F

.field private final scaley:F

.field protected final width:I


# direct methods
.method protected constructor <init>(IILjava/nio/ByteBuffer;)V
    .registers 9

    const/high16 v2, 0x3f800000  # 1.0f

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/sun/glass/ui/Pixels;->width:I

    .line 89
    iput p2, p0, Lcom/sun/glass/ui/Pixels;->height:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    .line 91
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 92
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    if-lez v0, :cond_29

    iget v0, p0, Lcom/sun/glass/ui/Pixels;->height:I

    if-lez v0, :cond_29

    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v1, p0, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_44

    .line 93
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v2, p0, Lcom/sun/glass/ui/Pixels;->height:I

    iget v3, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v4, p0, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-custom {v1, v2, v3, v4}, call_site_2125("makeConcatWithConstants", (IIII)Ljava/lang/String;, "Too small byte buffer size \u0001x\u0001 [\u0001] > \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    .line 97
    iput v2, p0, Lcom/sun/glass/ui/Pixels;->scalex:F

    .line 98
    iput v2, p0, Lcom/sun/glass/ui/Pixels;->scaley:F

    .line 99
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;)V
    .registers 9

    const/high16 v2, 0x3f800000  # 1.0f

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/sun/glass/ui/Pixels;->width:I

    .line 103
    iput p2, p0, Lcom/sun/glass/ui/Pixels;->height:I

    .line 104
    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    .line 105
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->slice()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    .line 106
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    if-lez v0, :cond_27

    iget v0, p0, Lcom/sun/glass/ui/Pixels;->height:I

    if-lez v0, :cond_27

    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v1, p0, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_40

    .line 107
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v2, p0, Lcom/sun/glass/ui/Pixels;->height:I

    iget v3, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v4, p0, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->capacity()I

    move-result v4

    invoke-custom {v1, v2, v3, v4}, call_site_1709("makeConcatWithConstants", (IIII)Ljava/lang/String;, "Too small int buffer size \u0001x\u0001 [\u0001] > \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 111
    iput v2, p0, Lcom/sun/glass/ui/Pixels;->scalex:F

    .line 112
    iput v2, p0, Lcom/sun/glass/ui/Pixels;->scaley:F

    .line 113
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;FF)V
    .registers 11

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/sun/glass/ui/Pixels;->width:I

    .line 117
    iput p2, p0, Lcom/sun/glass/ui/Pixels;->height:I

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    .line 119
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->slice()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    .line 120
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    if-lez v0, :cond_25

    iget v0, p0, Lcom/sun/glass/ui/Pixels;->height:I

    if-lez v0, :cond_25

    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v1, p0, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_3e

    .line 121
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v2, p0, Lcom/sun/glass/ui/Pixels;->height:I

    iget v3, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v4, p0, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->capacity()I

    move-result v4

    invoke-custom {v1, v2, v3, v4}, call_site_1710("makeConcatWithConstants", (IIII)Ljava/lang/String;, "Too small int buffer size \u0001x\u0001 [\u0001] > \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 125
    iput p4, p0, Lcom/sun/glass/ui/Pixels;->scalex:F

    .line 126
    iput p5, p0, Lcom/sun/glass/ui/Pixels;->scaley:F

    .line 127
    return-void
.end method

.method private attachData(J)V
    .registers 14

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 231
    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_27

    .line 232
    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v7

    .line 233
    :goto_14
    iget v4, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v5, p0, Lcom/sun/glass/ui/Pixels;->height:I

    iget-object v6, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    if-eqz v7, :cond_4f

    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v8

    :goto_22
    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sun/glass/ui/Pixels;->_attachInt(JIILjava/nio/IntBuffer;[II)V

    .line 235
    :cond_27
    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4c

    .line 236
    iget-object v1, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 237
    :goto_39
    iget v4, p0, Lcom/sun/glass/ui/Pixels;->width:I

    iget v5, p0, Lcom/sun/glass/ui/Pixels;->height:I

    iget-object v6, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_53

    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    :goto_47
    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sun/glass/ui/Pixels;->_attachByte(JIILjava/nio/ByteBuffer;[BI)V

    .line 239
    :cond_4c
    return-void

    :cond_4d
    move-object v7, v0

    .line 232
    goto :goto_14

    :cond_4f
    move v8, v9

    .line 233
    goto :goto_22

    :cond_51
    move-object v7, v0

    .line 236
    goto :goto_39

    :cond_53
    move v8, v9

    .line 237
    goto :goto_47
.end method

.method public static getNativeFormat()I
    .registers 1

    .line 60
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 61
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticPixels_getNativeFormat()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract _attachByte(JIILjava/nio/ByteBuffer;[BI)V
.end method

.method protected abstract _attachInt(JIILjava/nio/IntBuffer;[II)V
.end method

.method protected abstract _fillDirectByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public final asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 207
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 208
    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 209
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Pixels;->asByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 212
    return-object v0
.end method

.method public final asByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 220
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_11

    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected direct buffer."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_2a

    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Too small buffer."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/Pixels;->_fillDirectByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 227
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 247
    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    move v2, v0

    .line 248
    :goto_16
    if-eqz v2, :cond_46

    .line 249
    check-cast p1, Lcom/sun/glass/ui/Pixels;

    .line 250
    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_42

    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_42

    move v2, v0

    .line 251
    :goto_2f
    if-eqz v2, :cond_46

    .line 252
    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 253
    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-nez v2, :cond_44

    .line 257
    :goto_3f
    return v0

    :cond_40
    move v2, v1

    .line 247
    goto :goto_16

    :cond_42
    move v2, v1

    .line 250
    goto :goto_2f

    :cond_44
    move v0, v1

    .line 254
    goto :goto_3f

    :cond_46
    move v0, v2

    goto :goto_3f
.end method

.method public final getBuffer()Ljava/nio/Buffer;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    .line 195
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 197
    :goto_6
    return-object v0

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    goto :goto_6

    .line 199
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected Pixels state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBytesPerComponent()I
    .registers 2

    .line 166
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 167
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    return v0
.end method

.method public final getHeight()I
    .registers 2

    .line 157
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 158
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->height:I

    return v0
.end method

.method public final getHeightUnsafe()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->height:I

    return v0
.end method

.method public final getPixels()Ljava/nio/Buffer;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/ByteBuffer;

    .line 179
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 182
    :goto_b
    return-object v0

    .line 180
    :cond_c
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_18

    .line 181
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/IntBuffer;

    .line 182
    iget-object v0, p0, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    goto :goto_b

    .line 184
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected Pixels state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getScaleX()F
    .registers 2

    .line 130
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 131
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->scalex:F

    return v0
.end method

.method public final getScaleXUnsafe()F
    .registers 2

    .line 140
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->scalex:F

    return v0
.end method

.method public final getScaleY()F
    .registers 2

    .line 135
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 136
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->scaley:F

    return v0
.end method

.method public final getScaleYUnsafe()F
    .registers 2

    .line 144
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->scaley:F

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 148
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 149
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    return v0
.end method

.method public final getWidthUnsafe()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/sun/glass/ui/Pixels;->width:I

    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 261
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 262
    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v0

    .line 263
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    return v0
.end method
