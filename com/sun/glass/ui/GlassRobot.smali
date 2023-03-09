.class public abstract Lcom/sun/glass/ui/GlassRobot;
.super Ljava/lang/Object;
.source "GlassRobot.java"


# static fields
.field public static final MOUSE_BACK_BTN:I = 0x8

.field public static final MOUSE_FORWARD_BTN:I = 0x10

.field public static final MOUSE_LEFT_BTN:I = 0x1

.field public static final MOUSE_MIDDLE_BTN:I = 0x4

.field public static final MOUSE_RIGHT_BTN:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bgraPreToRgbaPre(I)I
    .registers 2

    .line 327
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static convertFromIntArgb(I)Ljavafx/scene/paint/Color;
    .registers 13

    const-wide v10, 0x406fe00000000000L  # 255.0

    .line 261
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 262
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v2, v1, 0xff

    .line 263
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v4, v1, 0xff

    .line 264
    and-int/lit16 v6, p0, 0xff

    .line 265
    new-instance v1, Ljavafx/scene/paint/Color;

    int-to-double v2, v2

    div-double/2addr v2, v10

    int-to-double v4, v4

    div-double/2addr v4, v10

    int-to-double v6, v6

    div-double/2addr v6, v10

    int-to-double v8, v0

    div-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Ljavafx/scene/paint/Color;-><init>(DDDD)V

    return-object v1
.end method

.method protected static convertFromPixels(Ljavafx/scene/image/WritableImage;Lcom/sun/glass/ui/Pixels;)Ljavafx/scene/image/WritableImage;
    .registers 8

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v0

    .line 271
    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v1

    .line 272
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljavafx/scene/image/WritableImage;->getWidth()D

    move-result-wide v2

    int-to-double v4, v0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1f

    invoke-virtual {p0}, Ljavafx/scene/image/WritableImage;->getHeight()D

    move-result-wide v2

    int-to-double v4, v1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_24

    .line 273
    :cond_1f
    new-instance p0, Ljavafx/scene/image/WritableImage;

    invoke-direct {p0, v0, v1}, Ljavafx/scene/image/WritableImage;-><init>(II)V

    .line 276
    :cond_24
    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->getBytesPerComponent()I

    move-result v0

    .line 277
    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    .line 278
    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    .line 279
    invoke-static {v0, p0}, Lcom/sun/glass/ui/GlassRobot;->writeIntBufferToImage(Ljava/nio/IntBuffer;Ljavafx/scene/image/WritableImage;)V

    .line 288
    :goto_34
    return-object p0

    .line 280
    :cond_35
    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 281
    invoke-virtual {p1}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 282
    invoke-static {v0, p0}, Lcom/sun/glass/ui/GlassRobot;->writeByteBufferToImage(Ljava/nio/ByteBuffer;Ljavafx/scene/image/WritableImage;)V

    goto :goto_34

    .line 284
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-custom {v0}, call_site_2873("makeConcatWithConstants", (I)Ljava/lang/String;, "bytesPerComponent must be either 4 or 1 but was: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertToRobotMouseButton([Ljavafx/scene/input/MouseButton;)I
    .registers 7

    const/4 v0, 0x0

    .line 246
    .line 247
    array-length v3, p0

    move v1, v0

    move v2, v0

    :goto_4
    if-ge v1, v3, :cond_2f

    aget-object v0, p0, v1

    .line 248
    sget-object v4, Lcom/sun/glass/ui/GlassRobot$1;->$SwitchMap$javafx$scene$input$MouseButton:[I

    invoke-virtual {v0}, Ljavafx/scene/input/MouseButton;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_30

    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-custom {v0}, call_site_565("makeConcatWithConstants", (Ljavafx/scene/input/MouseButton;)Ljava/lang/String;, "MouseButton: \u0001 not supported by Robot")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :pswitch_1d  #0x1
    or-int/lit8 v0, v2, 0x1

    .line 247
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_4

    .line 250
    :pswitch_23  #0x2
    or-int/lit8 v0, v2, 0x2

    goto :goto_1f

    .line 251
    :pswitch_26  #0x3
    or-int/lit8 v0, v2, 0x4

    goto :goto_1f

    .line 252
    :pswitch_29  #0x4
    or-int/lit8 v0, v2, 0x8

    goto :goto_1f

    .line 253
    :pswitch_2c  #0x5
    or-int/lit8 v0, v2, 0x10

    goto :goto_1f

    .line 257
    :cond_2f
    return v2

    .line 248
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_23  #00000002
        :pswitch_26  #00000003
        :pswitch_29  #00000004
        :pswitch_2c  #00000005
    .end packed-switch
.end method

.method private static interp(IIII)I
    .registers 12

    .line 359
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 360
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 361
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 362
    and-int/lit16 v3, p0, 0xff

    .line 363
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 364
    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 365
    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 366
    and-int/lit16 v7, p1, 0xff

    .line 367
    mul-int/2addr v0, p2

    mul-int/2addr v4, p3

    add-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x8

    .line 368
    mul-int/2addr v1, p2

    mul-int v4, v5, p3

    add-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x8

    .line 369
    mul-int/2addr v2, p2

    mul-int v4, v6, p3

    add-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    .line 370
    mul-int/2addr v3, p2

    mul-int v4, v7, p3

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    .line 371
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method private static interp([IIIIIII)I
    .registers 15

    const/4 v0, 0x0

    .line 331
    rsub-int v4, p5, 0x100

    .line 332
    rsub-int v5, p6, 0x100

    .line 333
    mul-int v1, p2, p3

    add-int v6, v1, p1

    .line 334
    if-ltz p1, :cond_11

    if-ltz p2, :cond_11

    if-ge p1, p3, :cond_11

    if-lt p2, p4, :cond_18

    :cond_11
    move v1, v0

    .line 335
    :goto_12
    if-nez p6, :cond_2d

    .line 337
    if-nez p5, :cond_1b

    move v0, v1

    .line 352
    :goto_17
    return v0

    .line 334
    :cond_18
    aget v1, p0, v6

    goto :goto_12

    .line 341
    :cond_1b
    if-ltz p2, :cond_23

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p3, :cond_23

    if-lt p2, p4, :cond_28

    .line 342
    :cond_23
    :goto_23
    invoke-static {v1, v0, v4, p5}, Lcom/sun/glass/ui/GlassRobot;->interp(IIII)I

    move-result v0

    goto :goto_17

    .line 341
    :cond_28
    add-int/lit8 v0, v6, 0x1

    aget v0, p0, v0

    goto :goto_23

    .line 343
    :cond_2d
    if-nez p5, :cond_41

    .line 345
    if-ltz p1, :cond_37

    if-ge p1, p3, :cond_37

    add-int/lit8 v2, p2, 0x1

    if-lt v2, p4, :cond_3c

    .line 346
    :cond_37
    :goto_37
    invoke-static {v1, v0, v5, p6}, Lcom/sun/glass/ui/GlassRobot;->interp(IIII)I

    move-result v0

    goto :goto_17

    .line 345
    :cond_3c
    add-int v0, v6, p3

    aget v0, p0, v0

    goto :goto_37

    .line 349
    :cond_41
    if-ltz p2, :cond_49

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p3, :cond_49

    if-lt p2, p4, :cond_68

    :cond_49
    move v3, v0

    .line 350
    :goto_4a
    if-ltz p1, :cond_52

    if-ge p1, p3, :cond_52

    add-int/lit8 v2, p2, 0x1

    if-lt v2, p4, :cond_6e

    :cond_52
    move v2, v0

    .line 351
    :goto_53
    add-int/lit8 v7, p1, 0x1

    if-ge v7, p3, :cond_5b

    add-int/lit8 v7, p2, 0x1

    if-lt v7, p4, :cond_73

    .line 352
    :cond_5b
    :goto_5b
    invoke-static {v1, v3, v4, p5}, Lcom/sun/glass/ui/GlassRobot;->interp(IIII)I

    move-result v1

    .line 353
    invoke-static {v2, v0, v4, p5}, Lcom/sun/glass/ui/GlassRobot;->interp(IIII)I

    move-result v0

    .line 352
    invoke-static {v1, v0, v5, p6}, Lcom/sun/glass/ui/GlassRobot;->interp(IIII)I

    move-result v0

    goto :goto_17

    .line 349
    :cond_68
    add-int/lit8 v2, v6, 0x1

    aget v2, p0, v2

    move v3, v2

    goto :goto_4a

    .line 350
    :cond_6e
    add-int v2, v6, p3

    aget v2, p0, v2

    goto :goto_53

    .line 351
    :cond_73
    add-int v0, v6, p3

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    goto :goto_5b
.end method

.method private static writeByteBufferToImage(Ljava/nio/ByteBuffer;Ljavafx/scene/image/WritableImage;)V
    .registers 14

    const/4 v1, 0x0

    .line 306
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p1}, Ljavafx/scene/image/WritableImage;->getPixelWriter()Ljavafx/scene/image/PixelWriter;

    move-result-object v3

    .line 308
    invoke-virtual {p1}, Ljavafx/scene/image/WritableImage;->getWidth()D

    move-result-wide v4

    .line 309
    invoke-virtual {p1}, Ljavafx/scene/image/WritableImage;->getHeight()D

    move-result-wide v6

    .line 311
    invoke-static {}, Lcom/sun/glass/ui/Pixels;->getNativeFormat()I

    move-result v8

    move v2, v1

    .line 313
    :goto_15
    int-to-double v10, v2

    cmpg-double v0, v10, v6

    if-gez v0, :cond_4c

    move v0, v1

    .line 314
    :goto_1b
    int-to-double v10, v0

    cmpg-double v9, v10, v4

    if-gez v9, :cond_48

    .line 315
    const/4 v9, 0x1

    if-ne v8, v9, :cond_35

    .line 316
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v9}, Lcom/sun/glass/ui/GlassRobot;->bgraPreToRgbaPre(I)I

    move-result v9

    invoke-static {v9}, Lcom/sun/javafx/image/PixelUtils;->PretoNonPre(I)I

    move-result v9

    invoke-interface {v3, v0, v2, v9}, Ljavafx/scene/image/PixelWriter;->setArgb(III)V

    .line 314
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 317
    :cond_35
    const/4 v9, 0x2

    if-ne v8, v9, :cond_40

    .line 318
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-interface {v3, v0, v2, v9}, Ljavafx/scene/image/PixelWriter;->setArgb(III)V

    goto :goto_32

    .line 320
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format must be either BYTE_BGRA_PRE or BYTE_ARGB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 324
    :cond_4c
    return-void
.end method

.method private static writeIntBufferToImage(Ljava/nio/IntBuffer;Ljavafx/scene/image/WritableImage;)V
    .registers 12

    const/4 v1, 0x0

    .line 292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p1}, Ljavafx/scene/image/WritableImage;->getPixelWriter()Ljavafx/scene/image/PixelWriter;

    move-result-object v3

    .line 294
    invoke-virtual {p1}, Ljavafx/scene/image/WritableImage;->getWidth()D

    move-result-wide v4

    .line 295
    invoke-virtual {p1}, Ljavafx/scene/image/WritableImage;->getHeight()D

    move-result-wide v6

    move v2, v1

    .line 297
    :goto_11
    int-to-double v8, v2

    cmpg-double v0, v8, v6

    if-gez v0, :cond_2a

    move v0, v1

    .line 298
    :goto_17
    int-to-double v8, v0

    cmpg-double v8, v8, v4

    if-gez v8, :cond_26

    .line 299
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v8

    .line 300
    invoke-interface {v3, v0, v2, v8}, Ljavafx/scene/image/PixelWriter;->setArgb(III)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 297
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 303
    :cond_2a
    return-void
.end method


# virtual methods
.method public abstract create()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getMouseX()D
.end method

.method public abstract getMouseY()D
.end method

.method public abstract getPixelColor(DD)Ljavafx/scene/paint/Color;
.end method

.method public getScreenCapture(Ljavafx/scene/image/WritableImage;DDDDZ)Ljavafx/scene/image/WritableImage;
    .registers 35

    .line 187
    const-wide/16 v2, 0x0

    cmpg-double v2, p6, v2

    if-gtz v2, :cond_e

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "width must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_e
    const-wide/16 v2, 0x0

    cmpg-double v2, p8, v2

    if-gtz v2, :cond_1c

    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_1c
    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v2

    .line 194
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v2}, Ljavafx/stage/Screen;->getOutputScaleX()D

    move-result-wide v18

    .line 196
    invoke-virtual {v2}, Ljavafx/stage/Screen;->getOutputScaleY()D

    move-result-wide v20

    .line 199
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v2, v18, v2

    if-nez v2, :cond_68

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v2, v20, v2

    if-nez v2, :cond_68

    .line 201
    mul-double v2, p6, p8

    double-to-int v2, v2

    new-array v7, v2, [I

    .line 202
    move-wide/from16 v0, p2

    double-to-int v3, v0

    move-wide/from16 v0, p4

    double-to-int v4, v0

    move-wide/from16 v0, p6

    double-to-int v5, v0

    move-wide/from16 v0, p8

    double-to-int v6, v0

    move-object/from16 v2, p0

    move/from16 v8, p10

    invoke-virtual/range {v2 .. v8}, Lcom/sun/glass/ui/GlassRobot;->getScreenCapture(IIII[IZ)V

    .line 203
    move-wide/from16 v0, p6

    double-to-int v5, v0

    .line 204
    move-wide/from16 v0, p8

    double-to-int v6, v0

    .line 242
    :cond_55
    :goto_55
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-static {v7}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sun/glass/ui/GlassRobot;->convertFromPixels(Ljavafx/scene/image/WritableImage;Lcom/sun/glass/ui/Pixels;)Ljavafx/scene/image/WritableImage;

    move-result-object v2

    return-object v2

    .line 208
    :cond_68
    mul-double v2, p2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 209
    mul-double v4, p4, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 210
    add-double v6, p2, p6

    mul-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 211
    add-double v6, p4, p8

    mul-double v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 212
    sub-int v5, v2, v3

    .line 213
    sub-int/2addr v6, v4

    .line 214
    mul-int v2, v5, v6

    new-array v7, v2, [I

    move-object/from16 v2, p0

    move/from16 v8, p10

    .line 215
    invoke-virtual/range {v2 .. v8}, Lcom/sun/glass/ui/GlassRobot;->getScreenCapture(IIII[IZ)V

    .line 218
    if-eqz p10, :cond_55

    .line 224
    mul-double v8, p6, p8

    double-to-int v2, v8

    new-array v2, v2, [I

    .line 225
    const/4 v10, 0x0

    .line 226
    const/4 v8, 0x0

    move/from16 v17, v8

    :goto_a1
    move/from16 v0, v17

    int-to-double v8, v0

    cmpg-double v8, v8, p8

    if-gez v8, :cond_105

    .line 227
    move/from16 v0, v17

    int-to-double v8, v0

    add-double v8, v8, p4

    const-wide/high16 v12, 0x3fe0000000000000L  # 0.5

    add-double/2addr v8, v12

    mul-double v8, v8, v20

    int-to-float v11, v4

    const/high16 v12, 0x3f000000  # 0.5f

    add-float/2addr v11, v12

    float-to-double v12, v11

    sub-double v12, v8, v12

    .line 228
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v9, v8

    .line 229
    int-to-double v14, v9

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4070000000000000L  # 256.0

    mul-double/2addr v12, v14

    double-to-int v13, v12

    .line 230
    const/4 v8, 0x0

    move v14, v8

    move v15, v10

    :goto_c7
    int-to-double v10, v14

    cmpg-double v8, v10, p6

    if-gez v8, :cond_ff

    .line 231
    int-to-double v10, v14

    add-double v10, v10, p2

    const-wide/high16 v22, 0x3fe0000000000000L  # 0.5

    add-double v10, v10, v22

    mul-double v10, v10, v18

    int-to-float v8, v3

    const/high16 v12, 0x3f000000  # 0.5f

    add-float/2addr v8, v12

    float-to-double v0, v8

    move-wide/from16 v22, v0

    sub-double v10, v10, v22

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v8, v0

    .line 233
    int-to-double v0, v8

    move-wide/from16 v22, v0

    sub-double v10, v10, v22

    const-wide/high16 v22, 0x4070000000000000L  # 256.0

    mul-double v10, v10, v22

    double-to-int v12, v10

    .line 234
    add-int/lit8 v16, v15, 0x1

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/sun/glass/ui/GlassRobot;->interp([IIIIIII)I

    move-result v8

    aput v8, v2, v15

    .line 230
    add-int/lit8 v8, v14, 0x1

    move v14, v8

    move/from16 v15, v16

    goto :goto_c7

    .line 226
    :cond_ff
    add-int/lit8 v8, v17, 0x1

    move/from16 v17, v8

    move v10, v15

    goto :goto_a1

    .line 237
    :cond_105
    move-wide/from16 v0, p6

    double-to-int v5, v0

    .line 238
    move-wide/from16 v0, p8

    double-to-int v6, v0

    move-object v7, v2

    goto/16 :goto_55
.end method

.method public getScreenCapture(IIII[IZ)V
    .registers 9

    .line 156
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract keyPress(Ljavafx/scene/input/KeyCode;)V
.end method

.method public abstract keyRelease(Ljavafx/scene/input/KeyCode;)V
.end method

.method public abstract mouseMove(DD)V
.end method

.method public varargs abstract mousePress([Ljavafx/scene/input/MouseButton;)V
.end method

.method public varargs abstract mouseRelease([Ljavafx/scene/input/MouseButton;)V
.end method

.method public abstract mouseWheel(I)V
.end method
