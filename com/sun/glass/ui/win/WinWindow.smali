.class Lcom/sun/glass/ui/win/WinWindow;
.super Lcom/sun/glass/ui/Window;
.source "WinWindow.java"


# static fields
.field public static final ANCHOR_NO_CAPTURE:J = -0x8000000000000000L

.field public static final RESIZE_AROUND_ANCHOR:I = 0x1

.field public static final RESIZE_DISABLE:I = 0x0

.field public static final RESIZE_TO_FX_ORIGIN:I = 0x2


# instance fields
.field private closingRequested:Z

.field private deferredClosing:Z

.field fxReqHeight:F

.field fxReqWidth:F

.field pfReqHeight:I

.field pfReqWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 50
    invoke-static {}, Lcom/sun/glass/ui/win/WinWindow;->_initIDs()V

    .line 51
    return-void
.end method

.method protected constructor <init>(J)V
    .registers 4

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sun/glass/ui/Window;-><init>(J)V

    .line 300
    iput-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->deferredClosing:Z

    .line 301
    iput-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->closingRequested:Z

    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V
    .registers 5

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/glass/ui/Window;-><init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V

    .line 300
    iput-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->deferredClosing:Z

    .line 301
    iput-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->closingRequested:Z

    .line 55
    return-void
.end method

.method private native _getAnchor(J)J
.end method

.method private native _getInsets(J)J
.end method

.method private static native _initIDs()V
.end method


# virtual methods
.method protected native _close(J)Z
.end method

.method protected native _createChildWindow(J)J
.end method

.method protected native _createWindow(JJI)J
.end method

.method protected native _enterModal(J)V
.end method

.method protected native _enterModalWithWindow(JJ)V
.end method

.method protected native _exitModal(J)V
.end method

.method protected native _getEmbeddedX(J)I
.end method

.method protected native _getEmbeddedY(J)I
.end method

.method protected native _grabFocus(J)Z
.end method

.method protected native _maximize(JZZ)Z
.end method

.method protected native _minimize(JZ)Z
.end method

.method protected _releaseInput(J)V
    .registers 5

    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected native _requestFocus(JI)Z
.end method

.method protected _requestInput(JLjava/lang/String;IDDDDDDDDDDDDDD)V
    .registers 35

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected native _setAlpha(JF)V
.end method

.method protected _setBackground(JFFF)Z
    .registers 7

    .line 248
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinWindow;->getAppletMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 249
    invoke-virtual/range {p0 .. p5}, Lcom/sun/glass/ui/win/WinWindow;->_setBackground2(JFFF)Z

    move-result v0

    .line 251
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected native _setBackground2(JFFF)Z
.end method

.method protected native _setBounds(JIIZZIIIIFF)V
.end method

.method protected native _setCursor(JLcom/sun/glass/ui/Cursor;)V
.end method

.method protected native _setEnabled(JZ)V
.end method

.method protected native _setFocusable(JZ)V
.end method

.method protected native _setIcon(JLcom/sun/glass/ui/Pixels;)V
.end method

.method protected native _setLevel(JI)V
.end method

.method protected native _setMaximumSize(JII)Z
.end method

.method protected native _setMenubar(JJ)Z
.end method

.method protected native _setMinimumSize(JII)Z
.end method

.method protected native _setResizable(JZ)Z
.end method

.method protected native _setTitle(JLjava/lang/String;)Z
.end method

.method protected native _setView(JLcom/sun/glass/ui/View;)Z
.end method

.method protected native _setVisible(JZ)Z
.end method

.method protected native _toBack(J)V
.end method

.method protected native _toFront(J)V
.end method

.method protected native _ungrabFocus(J)V
.end method

.method public close()V
    .registers 2

    .line 315
    iget-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->deferredClosing:Z

    if-nez v0, :cond_8

    .line 316
    invoke-super {p0}, Lcom/sun/glass/ui/Window;->close()V

    .line 321
    :goto_7
    return-void

    .line 318
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->closingRequested:Z

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinWindow;->setVisible(Z)V

    goto :goto_7
.end method

.method protected notifyMoving(IIIIFFIIIIIII)[I
    .registers 34

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sun/glass/ui/Screen;->containsPlatformRect(IIII)Z

    move-result v4

    if-nez v4, :cond_12d

    .line 158
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    if-nez v4, :cond_86

    const/4 v10, 0x0

    .line 160
    :goto_1f
    const/high16 v4, 0x3f000000  # 0.5f

    cmpg-float v4, v10, v4

    if-gez v4, :cond_12d

    .line 161
    move/from16 v0, p7

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    div-float v16, v4, v5

    .line 162
    move/from16 v0, p8

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    div-float v17, v4, v5

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    .line 168
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p1

    move-object v9, v4

    :cond_4c
    :goto_4c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ec

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/Screen;

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    if-eq v4, v11, :cond_4c

    .line 171
    if-nez p9, :cond_97

    move/from16 v11, p4

    move/from16 v12, p3

    move/from16 v13, p2

    move/from16 v14, p1

    .line 189
    :goto_68
    invoke-virtual {v4, v14, v13, v12, v11}, Lcom/sun/glass/ui/Screen;->portionIntersectsPlatformRect(IIII)F

    move-result v15

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7f

    const v19, 0x3f19999a  # 0.6f

    cmpl-float v19, v15, v19

    if-lez v19, :cond_12f

    cmpl-float v19, v15, v10

    if-lez v19, :cond_12f

    :cond_7f
    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v10, v15

    :goto_84
    move-object v9, v4

    .line 198
    goto :goto_4c

    .line 159
    :cond_86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sun/glass/ui/Screen;->portionIntersectsPlatformRect(IIII)F

    move-result v10

    goto :goto_1f

    .line 177
    :cond_97
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sun/glass/ui/win/WinWindow;->fxReqWidth:F

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getPlatformScaleX()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 178
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sun/glass/ui/win/WinWindow;->fxReqHeight:F

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getPlatformScaleY()F

    move-result v13

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v13, v12

    .line 179
    add-int v11, v11, p10

    add-int v12, v11, p12

    .line 180
    add-int v11, v13, p11

    add-int v11, v11, p13

    .line 181
    const/4 v13, 0x1

    move/from16 v0, p9

    if-ne v0, v13, :cond_de

    .line 182
    add-int v13, p1, p7

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getPlatformScaleX()F

    move-result v14

    mul-float v14, v14, v16

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v13, v14

    .line 183
    add-int v13, p2, p8

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getPlatformScaleY()F

    move-result v15

    mul-float v15, v15, v17

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    sub-int/2addr v13, v15

    goto :goto_68

    .line 185
    :cond_de
    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/sun/glass/ui/Screen;->toPlatformX(F)I

    move-result v14

    .line 186
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/sun/glass/ui/Screen;->toPlatformY(F)I

    move-result v13

    goto/16 :goto_68

    .line 199
    :cond_ec
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    if-eq v9, v4, :cond_12d

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sun/glass/ui/win/WinWindow;->notifyMoveToAnotherScreen(Lcom/sun/glass/ui/Screen;)V

    .line 201
    invoke-virtual {v9}, Lcom/sun/glass/ui/Screen;->getPlatformScaleX()F

    move-result v4

    .line 202
    invoke-virtual {v9}, Lcom/sun/glass/ui/Screen;->getPlatformScaleY()F

    move-result v10

    .line 203
    invoke-virtual {v9}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleX()F

    move-result v11

    .line 204
    invoke-virtual {v9}, Lcom/sun/glass/ui/Screen;->getRecommendedOutputScaleY()F

    move-result v9

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11, v9}, Lcom/sun/glass/ui/win/WinWindow;->notifyScaleChanged(FFFF)V

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->view:Lcom/sun/glass/ui/View;

    if-eqz v4, :cond_119

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/glass/ui/win/WinWindow;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->updateLocation()V

    .line 208
    :cond_119
    if-nez p9, :cond_11d

    .line 209
    const/4 v4, 0x0

    .line 216
    :goto_11c
    return-object v4

    .line 211
    :cond_11d
    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v8, 0x1

    aput v7, v4, v8

    const/4 v7, 0x2

    aput v6, v4, v7

    const/4 v6, 0x3

    aput v5, v4, v6

    goto :goto_11c

    .line 216
    :cond_12d
    const/4 v4, 0x0

    goto :goto_11c

    :cond_12f
    move-object v4, v9

    goto/16 :goto_84
.end method

.method protected notifyResize(III)V
    .registers 13

    const v8, 0xffff

    .line 221
    iget v0, p0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    .line 222
    iget v1, p0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    .line 223
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinWindow;->getRawHandle()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sun/glass/ui/win/WinWindow;->_getInsets(J)J

    move-result-wide v2

    .line 224
    const/16 v4, 0x30

    shr-long v4, v2, v4

    long-to-int v4, v4

    and-int/2addr v4, v8

    .line 225
    const/16 v5, 0x20

    shr-long v6, v2, v5

    long-to-int v5, v6

    and-int/2addr v5, v8

    .line 226
    const/16 v6, 0x10

    shr-long v6, v2, v6

    long-to-int v6, v6

    and-int/2addr v6, v8

    .line 227
    long-to-int v2, v2

    and-int/2addr v2, v8

    .line 228
    sub-int v3, p2, v4

    sub-int/2addr v3, v6

    .line 229
    sub-int v4, p3, v5

    sub-int v2, v4, v2

    .line 230
    iget v4, p0, Lcom/sun/glass/ui/win/WinWindow;->pfReqWidth:I

    if-ne v3, v4, :cond_34

    iget v4, p0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3c

    .line 231
    :cond_34
    int-to-float v0, v3

    iget v4, p0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sun/glass/ui/win/WinWindow;->fxReqWidth:F

    .line 232
    iput v3, p0, Lcom/sun/glass/ui/win/WinWindow;->pfReqWidth:I

    .line 234
    :cond_3c
    iget v0, p0, Lcom/sun/glass/ui/win/WinWindow;->pfReqHeight:I

    if-ne v2, v0, :cond_46

    iget v0, p0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4e

    .line 235
    :cond_46
    int-to-float v0, v2

    iget v1, p0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sun/glass/ui/win/WinWindow;->fxReqHeight:F

    .line 236
    iput v2, p0, Lcom/sun/glass/ui/win/WinWindow;->pfReqHeight:I

    .line 238
    :cond_4e
    invoke-super {p0, p1, p2, p3}, Lcom/sun/glass/ui/Window;->notifyResize(III)V

    .line 239
    return-void
.end method

.method public setBounds(FFZZFFFFFF)V
    .registers 31

    .line 66
    if-nez p3, :cond_18

    if-nez p4, :cond_18

    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-gtz v2, :cond_18

    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-gtz v2, :cond_18

    const/4 v2, 0x0

    cmpl-float v2, p7, v2

    if-gtz v2, :cond_18

    const/4 v2, 0x0

    cmpl-float v2, p8, v2

    if-lez v2, :cond_122

    .line 67
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/win/WinWindow;->getRawHandle()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sun/glass/ui/win/WinWindow;->_getInsets(J)J

    move-result-wide v2

    .line 68
    const/16 v4, 0x30

    shr-long v4, v2, v4

    long-to-int v4, v4

    const v5, 0xffff

    and-int v12, v4, v5

    .line 69
    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    const v5, 0xffff

    and-int v13, v4, v5

    .line 70
    const/16 v4, 0x10

    shr-long v4, v2, v4

    long-to-int v4, v4

    const v5, 0xffff

    and-int v14, v4, v5

    .line 71
    long-to-int v2, v2

    const v3, 0xffff

    and-int v15, v2, v3

    .line 73
    if-nez p3, :cond_4a

    if-eqz p4, :cond_141

    .line 86
    :cond_4a
    if-eqz p3, :cond_123

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sun/glass/ui/Screen;->toPlatformX(F)I

    move-result v3

    move/from16 v7, p1

    .line 92
    :goto_58
    if-eqz p4, :cond_131

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sun/glass/ui/Screen;->toPlatformY(F)I

    move-result v4

    move/from16 v8, p2

    .line 105
    :goto_66
    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-lez v2, :cond_14f

    .line 106
    add-int v2, v12, v14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    div-float/2addr v2, v5

    sub-float p7, p5, v2

    .line 107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    mul-float v2, v2, p5

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 112
    :goto_81
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/glass/ui/win/WinWindow;->fxReqWidth:F

    .line 113
    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-lez v2, :cond_16c

    .line 114
    add-int v2, v13, v15

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    div-float/2addr v2, v6

    sub-float p8, p6, v2

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    mul-float v2, v2, p6

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 120
    :goto_a2
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/glass/ui/win/WinWindow;->fxReqHeight:F

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/win/WinWindow;->getRawHandle()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sun/glass/ui/win/WinWindow;->_getAnchor(J)J

    move-result-wide v16

    .line 123
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v2, v16, v10

    if-nez v2, :cond_189

    .line 124
    const/4 v11, 0x2

    .line 126
    :goto_b9
    const/16 v2, 0x20

    shr-long v18, v16, v2

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 127
    move-wide/from16 v0, v16

    long-to-int v10, v0

    move-object/from16 v2, p0

    .line 129
    invoke-virtual/range {v2 .. v15}, Lcom/sun/glass/ui/win/WinWindow;->notifyMoving(IIIIFFIIIIIII)[I

    move-result-object v2

    .line 132
    if-eqz v2, :cond_19a

    .line 133
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 134
    const/4 v4, 0x1

    aget v7, v2, v4

    .line 135
    const/4 v4, 0x2

    aget v10, v2, v4

    .line 136
    const/4 v4, 0x3

    aget v11, v2, v4

    move v14, v3

    .line 143
    :goto_d8
    if-nez p3, :cond_196

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sun/glass/ui/win/WinWindow;->x:I

    if-eq v14, v2, :cond_18c

    const/4 v2, 0x1

    :goto_e1
    move v8, v2

    .line 144
    :goto_e2
    if-nez p4, :cond_192

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sun/glass/ui/win/WinWindow;->y:I

    if-eq v7, v2, :cond_18f

    const/4 v2, 0x1

    :goto_eb
    move v9, v2

    .line 145
    :goto_ec
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sun/glass/ui/win/WinWindow;->fxReqWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sun/glass/ui/win/WinWindow;->pfReqWidth:I

    .line 146
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sun/glass/ui/win/WinWindow;->fxReqHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sun/glass/ui/win/WinWindow;->pfReqHeight:I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/sun/glass/ui/win/WinWindow;->getRawHandle()J

    move-result-wide v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move v6, v14

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v3 .. v15}, Lcom/sun/glass/ui/win/WinWindow;->_setBounds(JIIZZIIIIFF)V

    .line 149
    :cond_122
    return-void

    .line 89
    :cond_123
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sun/glass/ui/win/WinWindow;->x:I

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Screen;->fromPlatformX(I)F

    move-result v7

    goto/16 :goto_58

    .line 95
    :cond_131
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/glass/ui/win/WinWindow;->y:I

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/glass/ui/win/WinWindow;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2, v4}, Lcom/sun/glass/ui/Screen;->fromPlatformY(I)F

    move-result p2

    move/from16 v8, p2

    goto/16 :goto_66

    .line 99
    :cond_141
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sun/glass/ui/win/WinWindow;->x:I

    .line 100
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/glass/ui/win/WinWindow;->y:I

    move/from16 v8, p2

    move/from16 v7, p1

    goto/16 :goto_66

    .line 109
    :cond_14f
    const/4 v2, 0x0

    cmpl-float v2, p7, v2

    if-lez v2, :cond_165

    .line 110
    :goto_154
    add-int v2, v12, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleX:F

    mul-float v5, v5, p7

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    add-int/2addr v5, v2

    goto/16 :goto_81

    .line 109
    :cond_165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/glass/ui/win/WinWindow;->fxReqWidth:F

    move/from16 p7, v0

    goto :goto_154

    .line 117
    :cond_16c
    const/4 v2, 0x0

    cmpl-float v2, p8, v2

    if-lez v2, :cond_182

    .line 118
    :goto_171
    add-int v2, v13, v15

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sun/glass/ui/win/WinWindow;->platformScaleY:F

    mul-float v6, v6, p8

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    add-int/2addr v6, v2

    goto/16 :goto_a2

    .line 117
    :cond_182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/glass/ui/win/WinWindow;->fxReqHeight:F

    move/from16 p8, v0

    goto :goto_171

    .line 125
    :cond_189
    const/4 v11, 0x1

    goto/16 :goto_b9

    .line 143
    :cond_18c
    const/4 v2, 0x0

    goto/16 :goto_e1

    .line 144
    :cond_18f
    const/4 v2, 0x0

    goto/16 :goto_eb

    :cond_192
    move/from16 v9, p4

    goto/16 :goto_ec

    :cond_196
    move/from16 v8, p3

    goto/16 :goto_e2

    :cond_19a
    move v11, v6

    move v10, v5

    move v7, v4

    move v14, v3

    goto/16 :goto_d8
.end method

.method setDeferredClosing(Z)V
    .registers 3

    .line 308
    iput-boolean p1, p0, Lcom/sun/glass/ui/win/WinWindow;->deferredClosing:Z

    .line 309
    iget-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->deferredClosing:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/sun/glass/ui/win/WinWindow;->closingRequested:Z

    if-eqz v0, :cond_d

    .line 310
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinWindow;->close()V

    .line 312
    :cond_d
    return-void
.end method
