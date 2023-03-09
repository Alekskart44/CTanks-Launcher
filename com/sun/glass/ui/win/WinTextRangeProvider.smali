.class Lcom/sun/glass/ui/win/WinTextRangeProvider;
.super Ljava/lang/Object;
.source "WinTextRangeProvider.java"


# static fields
.field private static final TextPatternRangeEndpoint_End:I = 0x1

.field private static final TextPatternRangeEndpoint_Start:I = 0x0

.field private static final TextUnit_Character:I = 0x0

.field private static final TextUnit_Document:I = 0x6

.field private static final TextUnit_Format:I = 0x1

.field private static final TextUnit_Line:I = 0x3

.field private static final TextUnit_Page:I = 0x5

.field private static final TextUnit_Paragraph:I = 0x4

.field private static final TextUnit_Word:I = 0x2

.field private static final UIA_FontNameAttributeId:I = 0x9c45

.field private static final UIA_FontSizeAttributeId:I = 0x9c46

.field private static final UIA_FontWeightAttributeId:I = 0x9c47

.field private static final UIA_IsHiddenAttributeId:I = 0x9c4d

.field private static final UIA_IsItalicAttributeId:I = 0x9c4e

.field private static final UIA_IsReadOnlyAttributeId:I = 0x9c4f

.field private static idCount:I


# instance fields
.field private accessible:Lcom/sun/glass/ui/win/WinAccessible;

.field private end:I

.field private id:I

.field private peer:J

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->_initIDs()V

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->idCount:I

    return-void
.end method

.method constructor <init>(Lcom/sun/glass/ui/win/WinAccessible;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    .line 81
    invoke-virtual {p1}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->_createTextRangeProvider(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->peer:J

    .line 82
    sget v0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->idCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sun/glass/ui/win/WinTextRangeProvider;->idCount:I

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->id:I

    .line 83
    return-void
.end method

.method private AddToSelection()V
    .registers 1

    .line 587
    return-void
.end method

.method private Clone()J
    .registers 4

    .line 126
    new-instance v0, Lcom/sun/glass/ui/win/WinTextRangeProvider;

    iget-object v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    invoke-direct {v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;-><init>(Lcom/sun/glass/ui/win/WinAccessible;)V

    .line 127
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->setRange(II)V

    .line 133
    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getNativeProvider()J

    move-result-wide v0

    return-wide v0
.end method

.method private Compare(Lcom/sun/glass/ui/win/WinTextRangeProvider;)Z
    .registers 5

    const/4 v0, 0x0

    .line 137
    if-nez p1, :cond_4

    .line 138
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    iget-object v2, p1, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v2, p1, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    iget v2, p1, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private CompareEndpoints(ILcom/sun/glass/ui/win/WinTextRangeProvider;I)I
    .registers 6

    .line 142
    if-nez p1, :cond_c

    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    move v1, v0

    .line 143
    :goto_5
    if-nez p3, :cond_10

    iget v0, p2, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 144
    :goto_9
    sub-int v0, v1, v0

    return v0

    .line 142
    :cond_c
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    move v1, v0

    goto :goto_5

    .line 143
    :cond_10
    iget v0, p2, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_9
.end method

.method private ExpandToEnclosingUnit(I)V
    .registers 9

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 148
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    if-nez v0, :cond_10

    .line 225
    :cond_f
    :goto_f
    return-void

    .line 150
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 151
    if-eqz v4, :cond_f

    .line 153
    packed-switch p1, :pswitch_data_118

    .line 223
    :cond_19
    :goto_19
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 224
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_f

    .line 155
    :pswitch_34  #0x0
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    if-ne v0, v4, :cond_3e

    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 156
    :cond_3e
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_19

    .line 161
    :pswitch_45  #0x1, 0x2
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 163
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_69

    .line 164
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v2, v1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 165
    :goto_5a
    invoke-direct {p0, v2, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_65

    .line 166
    invoke-virtual {v2}, Ljava/text/BreakIterator;->previous()I

    move-result v1

    goto :goto_5a

    .line 168
    :cond_65
    if-eq v1, v6, :cond_82

    :goto_67
    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 170
    :cond_69
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 171
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-virtual {v2, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 172
    :goto_77
    invoke-direct {p0, v2, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_84

    .line 173
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v1

    goto :goto_77

    :cond_82
    move v1, v3

    .line 168
    goto :goto_67

    .line 175
    :cond_84
    if-eq v1, v6, :cond_89

    :goto_86
    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_19

    :cond_89
    move v1, v4

    goto :goto_86

    .line 180
    :pswitch_8b  #0x3
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LINE_FOR_OFFSET:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 181
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->LINE_START:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 182
    sget-object v2, Ljavafx/scene/AccessibleAttribute;->LINE_END:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-direct {p0, v2, v5}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 183
    if-eqz v0, :cond_bb

    if-eqz v2, :cond_bb

    if-nez v1, :cond_c1

    .line 185
    :cond_bb
    iput v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 186
    iput v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto/16 :goto_19

    .line 189
    :cond_c1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 190
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto/16 :goto_19

    .line 196
    :pswitch_cf  #0x4
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->LINE_FOR_OFFSET:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 197
    if-nez v1, :cond_e9

    .line 199
    iput v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 200
    iput v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto/16 :goto_19

    .line 203
    :cond_e9
    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_102

    .line 206
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 207
    if-eq v0, v6, :cond_10e

    :goto_100
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 209
    :cond_102
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 210
    if-eq v0, v6, :cond_110

    :goto_10a
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto/16 :goto_19

    :cond_10e
    move v0, v3

    .line 207
    goto :goto_100

    :cond_110
    move v0, v4

    .line 210
    goto :goto_10a

    .line 216
    :pswitch_112  #0x5, 0x6
    iput v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 217
    iput v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto/16 :goto_19

    .line 153
    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_45  #00000001
        :pswitch_45  #00000002
        :pswitch_8b  #00000003
        :pswitch_cf  #00000004
        :pswitch_112  #00000005
        :pswitch_112  #00000006
    .end packed-switch
.end method

.method private FindAttribute(ILcom/sun/glass/ui/win/WinVariant;Z)J
    .registers 6

    .line 228
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "FindAttribute NOT IMPLEMENTED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private FindText(Ljava/lang/String;ZZ)J
    .registers 9

    const-wide/16 v2, 0x0

    .line 233
    if-nez p1, :cond_6

    move-wide v0, v2

    .line 250
    :goto_5
    return-wide v0

    .line 234
    :cond_6
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    if-nez v0, :cond_15

    move-wide v0, v2

    goto :goto_5

    .line 236
    :cond_15
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 237
    if-eqz p3, :cond_27

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_27
    if-eqz p2, :cond_32

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 247
    :goto_2d
    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    move-wide v0, v2

    goto :goto_5

    .line 245
    :cond_32
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_2d

    .line 248
    :cond_37
    new-instance v1, Lcom/sun/glass/ui/win/WinTextRangeProvider;

    iget-object v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;-><init>(Lcom/sun/glass/ui/win/WinAccessible;)V

    .line 249
    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    add-int/2addr v0, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->setRange(II)V

    .line 250
    invoke-virtual {v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getNativeProvider()J

    move-result-wide v0

    goto :goto_5
.end method

.method private GetAttributeValue(I)Lcom/sun/glass/ui/win/WinVariant;
    .registers 6

    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 254
    const/4 v1, 0x0

    .line 255
    packed-switch p1, :pswitch_data_a6

    :cond_7
    :pswitch_7  #0x9c48, 0x9c49, 0x9c4a, 0x9c4b, 0x9c4c
    move-object v0, v1

    .line 303
    :goto_8
    return-object v0

    .line 257
    :pswitch_9  #0x9c45
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FONT:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/text/Font;

    .line 258
    if-eqz v0, :cond_7

    .line 259
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 260
    const/16 v2, 0x8

    iput-short v2, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 261
    invoke-virtual {v0}, Ljavafx/scene/text/Font;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    move-object v0, v1

    goto :goto_8

    .line 266
    :pswitch_26  #0x9c46
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FONT:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/text/Font;

    .line 267
    if-eqz v0, :cond_7

    .line 268
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 269
    const/4 v2, 0x5

    iput-short v2, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 270
    invoke-virtual {v0}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/glass/ui/win/WinVariant;->dblVal:D

    move-object v0, v1

    goto :goto_8

    .line 275
    :pswitch_42  #0x9c47
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FONT:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/text/Font;

    .line 276
    if-eqz v0, :cond_7

    .line 277
    invoke-virtual {v0}, Ljavafx/scene/text/Font;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 278
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 279
    const/4 v2, 0x3

    iput-short v2, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 280
    if-eqz v0, :cond_70

    sget-object v0, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v0}, Ljavafx/scene/text/FontWeight;->getWeight()I

    move-result v0

    :goto_6c
    iput v0, v1, Lcom/sun/glass/ui/win/WinVariant;->lVal:I

    move-object v0, v1

    .line 281
    goto :goto_8

    .line 280
    :cond_70
    sget-object v0, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v0}, Ljavafx/scene/text/FontWeight;->getWeight()I

    move-result v0

    goto :goto_6c

    .line 286
    :pswitch_77  #0x9c4d, 0x9c4f
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 287
    iput-short v3, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 288
    iput-boolean v2, v0, Lcom/sun/glass/ui/win/WinVariant;->boolVal:Z

    goto :goto_8

    .line 291
    :pswitch_81  #0x9c4e
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FONT:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/text/Font;

    .line 292
    if-eqz v0, :cond_7

    .line 293
    invoke-virtual {v0}, Ljavafx/scene/text/Font;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "italic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 294
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 295
    iput-short v3, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 296
    iput-boolean v1, v0, Lcom/sun/glass/ui/win/WinVariant;->boolVal:Z

    goto/16 :goto_8

    .line 255
    :pswitch_data_a6
    .packed-switch 0x9c45
        :pswitch_9  #00009c45
        :pswitch_26  #00009c46
        :pswitch_42  #00009c47
        :pswitch_7  #00009c48
        :pswitch_7  #00009c49
        :pswitch_7  #00009c4a
        :pswitch_7  #00009c4b
        :pswitch_7  #00009c4c
        :pswitch_77  #00009c4d
        :pswitch_81  #00009c4e
        :pswitch_77  #00009c4f
    .end packed-switch
.end method

.method private GetBoundingRectangles()[D
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 307
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    if-nez v0, :cond_10

    move-object v0, v1

    .line 336
    :goto_f
    return-object v0

    .line 309
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 312
    if-nez v4, :cond_19

    new-array v0, v2, [D

    goto :goto_f

    .line 313
    :cond_19
    iget v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    .line 314
    if-lez v3, :cond_2d

    iget v5, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    if-le v3, v5, :cond_2d

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2d

    .line 315
    add-int/lit8 v3, v3, -0x1

    .line 317
    :cond_2d
    if-lez v3, :cond_9b

    iget v5, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    if-le v3, v5, :cond_9b

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_9b

    .line 318
    add-int/lit8 v0, v3, -0x1

    .line 320
    :goto_3f
    if-lez v0, :cond_49

    iget v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    if-le v0, v3, :cond_49

    if-ne v0, v4, :cond_49

    .line 321
    add-int/lit8 v0, v0, -0x1

    .line 323
    :cond_49
    sget-object v3, Ljavafx/scene/AccessibleAttribute;->BOUNDS_FOR_RANGE:Ljavafx/scene/AccessibleAttribute;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/geometry/Bounds;

    .line 324
    if-eqz v0, :cond_98

    .line 325
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    new-array v4, v1, [D

    move v1, v2

    move v3, v2

    .line 327
    :goto_6c
    array-length v2, v0

    if-ge v1, v2, :cond_95

    .line 328
    aget-object v5, v0, v1

    .line 329
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 330
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    aput-wide v6, v4, v2

    .line 331
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v8

    aput-wide v8, v4, v3

    .line 332
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v8

    aput-wide v8, v4, v6

    .line 327
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_6c

    :cond_95
    move-object v0, v4

    .line 334
    goto/16 :goto_f

    :cond_98
    move-object v0, v1

    .line 336
    goto/16 :goto_f

    :cond_9b
    move v0, v3

    goto :goto_3f
.end method

.method private GetChildren()[J
    .registers 2

    .line 600
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method private GetEnclosingElement()J
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v0

    return-wide v0
.end method

.method private GetText(I)Ljava/lang/String;
    .registers 5

    .line 344
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 348
    :goto_e
    return-object v0

    .line 346
    :cond_f
    const/4 v1, -0x1

    if-eq p1, v1, :cond_22

    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 348
    :goto_1b
    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 346
    :cond_22
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_1b
.end method

.method private Move(II)I
    .registers 12

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 352
    if-nez p2, :cond_6

    .line 452
    :cond_5
    :goto_5
    :pswitch_5  #0x5, 0x6
    return v3

    .line 353
    :cond_6
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    if-eqz v0, :cond_5

    .line 355
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 356
    if-eqz v2, :cond_5

    .line 359
    packed-switch p1, :pswitch_data_176

    move v0, v3

    .line 450
    :goto_1c
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 451
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    move v3, v0

    .line 452
    goto :goto_5

    .line 361
    :pswitch_38  #0x0
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 362
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    add-int/2addr v1, p2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 363
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    .line 364
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    sub-int v0, v1, v0

    .line 365
    goto :goto_1c

    .line 369
    :pswitch_54  #0x1, 0x2
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v6

    .line 370
    invoke-virtual {v6, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 371
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 372
    :goto_5d
    invoke-direct {p0, v6, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_173

    .line 373
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v6, v1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    goto :goto_5d

    .line 381
    :cond_6a
    add-int/lit8 v4, v4, 0x1

    .line 375
    :goto_6c
    if-eq v1, v5, :cond_93

    if-eq v4, p2, :cond_93

    .line 376
    if-lez p2, :cond_81

    .line 377
    invoke-virtual {v6, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 378
    :goto_76
    invoke-direct {p0, v6, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 379
    invoke-virtual {v6}, Ljava/text/BreakIterator;->next()I

    move-result v1

    goto :goto_76

    .line 383
    :cond_81
    invoke-virtual {v6, v1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 384
    :goto_85
    invoke-direct {p0, v6, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_90

    .line 385
    invoke-virtual {v6}, Ljava/text/BreakIterator;->previous()I

    move-result v1

    goto :goto_85

    .line 387
    :cond_90
    add-int/lit8 v4, v4, -0x1

    goto :goto_6c

    .line 390
    :cond_93
    if-eqz v4, :cond_170

    .line 391
    if-eq v1, v5, :cond_aa

    .line 392
    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 396
    :goto_99
    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v6, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 397
    :goto_9f
    invoke-direct {p0, v6, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_b2

    .line 398
    invoke-virtual {v6}, Ljava/text/BreakIterator;->next()I

    move-result v1

    goto :goto_9f

    .line 394
    :cond_aa
    if-lez p2, :cond_b0

    move v1, v2

    :goto_ad
    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    goto :goto_99

    :cond_b0
    move v1, v3

    goto :goto_ad

    .line 400
    :cond_b2
    if-eq v1, v5, :cond_b9

    :goto_b4
    iput v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    move v0, v4

    goto/16 :goto_1c

    :cond_b9
    move v1, v2

    goto :goto_b4

    .line 405
    :pswitch_bb  #0x3
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LINE_FOR_OFFSET:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 406
    if-eqz v0, :cond_5

    .line 407
    if-lez p2, :cond_118

    move v1, v4

    :goto_d2
    move-object v6, v0

    move v5, v3

    .line 408
    :goto_d4
    if-eq p2, v5, :cond_eb

    .line 409
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LINE_START:Ljavafx/scene/AccessibleAttribute;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-direct {p0, v0, v7}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11a

    .line 413
    :cond_eb
    if-eqz v5, :cond_16d

    .line 414
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LINE_START:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 415
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->LINE_END:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-direct {p0, v1, v4}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 416
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 417
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 418
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    move v0, v5

    .line 419
    goto/16 :goto_1c

    :cond_118
    move v1, v5

    .line 407
    goto :goto_d2

    .line 410
    :cond_11a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 411
    add-int/2addr v5, v1

    move-object v6, v0

    goto :goto_d4

    .line 423
    :pswitch_126  #0x4
    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object v4

    .line 424
    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 425
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_145

    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    :goto_137
    move v1, v3

    .line 426
    :goto_138
    if-eq v0, v5, :cond_153

    if-eq v1, p2, :cond_153

    .line 427
    if-lez p2, :cond_14c

    .line 428
    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_138

    .line 425
    :cond_145
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    goto :goto_137

    .line 431
    :cond_14c
    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 432
    add-int/lit8 v1, v1, -0x1

    goto :goto_138

    .line 435
    :cond_153
    if-eqz v1, :cond_16a

    .line 436
    if-eq v0, v5, :cond_166

    :goto_157
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 437
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 438
    if-eq v0, v5, :cond_168

    :goto_161
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    move v0, v1

    goto/16 :goto_1c

    :cond_166
    move v0, v3

    .line 436
    goto :goto_157

    :cond_168
    move v0, v2

    .line 438
    goto :goto_161

    :cond_16a
    move v0, v1

    goto/16 :goto_1c

    :cond_16d
    move v0, v5

    goto/16 :goto_1c

    :cond_170
    move v0, v4

    goto/16 :goto_1c

    :cond_173
    move v4, v3

    goto/16 :goto_6c

    .line 359
    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_54  #00000001
        :pswitch_54  #00000002
        :pswitch_bb  #00000003
        :pswitch_126  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method

.method private MoveEndpointByRange(ILcom/sun/glass/ui/win/WinTextRangeProvider;I)V
    .registers 9

    const/4 v4, 0x0

    .line 561
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 562
    if-nez v0, :cond_e

    .line 578
    :goto_d
    return-void

    .line 563
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 565
    if-nez p3, :cond_3f

    iget v0, p2, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 566
    :goto_16
    if-nez p1, :cond_42

    .line 567
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 571
    :goto_1a
    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v3, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    if-le v2, v3, :cond_24

    .line 572
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 576
    :cond_24
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 577
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_d

    .line 565
    :cond_3f
    iget v0, p2, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_16

    .line 569
    :cond_42
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_1a
.end method

.method private MoveEndpointByUnit(III)I
    .registers 14

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 456
    if-nez p3, :cond_6

    .line 557
    :cond_5
    :goto_5
    :pswitch_5  #0x5, 0x6
    return v4

    .line 457
    :cond_6
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    if-eqz v0, :cond_5

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 462
    if-nez p1, :cond_49

    iget v5, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 463
    :goto_1a
    packed-switch p2, :pswitch_data_162

    move v0, v5

    move v1, v4

    .line 545
    :cond_1f
    :goto_1f
    if-nez p1, :cond_152

    .line 546
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 550
    :goto_23
    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v5, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    if-le v2, v5, :cond_2d

    .line 551
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 555
    :cond_2d
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 556
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    move v4, v1

    .line 557
    goto :goto_5

    .line 462
    :cond_49
    iget v5, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto :goto_1a

    .line 466
    :pswitch_4c  #0x0
    add-int v0, v5, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 467
    sub-int v1, v0, v5

    .line 468
    goto :goto_1f

    .line 472
    :pswitch_59  #0x1, 0x2
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v7

    .line 473
    invoke-virtual {v7, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    move v2, v5

    move v6, v4

    .line 474
    :goto_62
    if-eq v2, v8, :cond_8e

    if-eq v6, p3, :cond_8e

    .line 475
    if-lez p3, :cond_7b

    .line 476
    invoke-virtual {v7, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 477
    :goto_6c
    invoke-direct {p0, v7, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_77

    .line 478
    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v1

    goto :goto_6c

    .line 480
    :cond_77
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    goto :goto_62

    .line 482
    :cond_7b
    invoke-virtual {v7, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 483
    :goto_7f
    invoke-direct {p0, v7, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 484
    invoke-virtual {v7}, Ljava/text/BreakIterator;->previous()I

    move-result v1

    goto :goto_7f

    .line 486
    :cond_8a
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    goto :goto_62

    .line 489
    :cond_8e
    if-ne v2, v8, :cond_15e

    .line 490
    if-lez p3, :cond_95

    move v0, v3

    :goto_93
    move v1, v6

    goto :goto_1f

    :cond_95
    move v0, v4

    goto :goto_93

    .line 495
    :pswitch_97  #0x3
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LINE_FOR_OFFSET:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 496
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->LINE_START:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 497
    sget-object v2, Ljavafx/scene/AccessibleAttribute;->LINE_END:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-direct {p0, v2, v6}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 498
    if-eqz v0, :cond_c5

    if-eqz v1, :cond_c5

    if-nez v2, :cond_cd

    .line 500
    :cond_c5
    if-lez p3, :cond_cb

    move v0, v3

    :goto_c8
    move v1, v4

    .line 501
    goto/16 :goto_1f

    :cond_cb
    move v0, v4

    .line 500
    goto :goto_c8

    .line 503
    :cond_cd
    if-lez p3, :cond_119

    move v6, v7

    .line 504
    :goto_d0
    if-lez p3, :cond_11b

    :goto_d2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 505
    if-eq v5, v1, :cond_15a

    .line 507
    add-int v2, v4, v6

    move-object v1, v0

    .line 509
    :goto_db
    if-eq p3, v2, :cond_f2

    .line 510
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LINE_START:Ljavafx/scene/AccessibleAttribute;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-direct {p0, v0, v8}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11d

    .line 514
    :cond_f2
    if-eqz v2, :cond_156

    .line 515
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LINE_START:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-direct {p0, v0, v5}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 516
    sget-object v5, Ljavafx/scene/AccessibleAttribute;->LINE_END:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 517
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 518
    if-lez p3, :cond_129

    :goto_112
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v2

    goto/16 :goto_1f

    :cond_119
    move v6, v8

    .line 503
    goto :goto_d0

    :cond_11b
    move-object v2, v1

    .line 504
    goto :goto_d2

    .line 511
    :cond_11d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 512
    add-int/2addr v2, v6

    move-object v1, v0

    goto :goto_db

    :cond_129
    move-object v1, v0

    .line 518
    goto :goto_112

    .line 523
    :pswitch_12b  #0x4
    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object v2

    .line 524
    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    move v0, v5

    move v1, v4

    .line 525
    :goto_134
    if-eq v0, v8, :cond_148

    if-eq v1, p3, :cond_148

    .line 526
    if-lez p3, :cond_141

    .line 527
    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_134

    .line 530
    :cond_141
    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 531
    add-int/lit8 v1, v1, -0x1

    goto :goto_134

    .line 534
    :cond_148
    if-ne v0, v8, :cond_1f

    .line 535
    if-lez p3, :cond_14f

    move v0, v3

    goto/16 :goto_1f

    :cond_14f
    move v0, v4

    goto/16 :goto_1f

    .line 548
    :cond_152
    iput v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    goto/16 :goto_23

    :cond_156
    move v0, v5

    move v1, v2

    goto/16 :goto_1f

    :cond_15a
    move-object v1, v0

    move v2, v4

    goto/16 :goto_db

    :cond_15e
    move v0, v2

    move v1, v6

    goto/16 :goto_1f

    .line 463
    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_4c  #00000000
        :pswitch_59  #00000001
        :pswitch_59  #00000002
        :pswitch_97  #00000003
        :pswitch_12b  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method

.method private RemoveFromSelection()V
    .registers 1

    .line 592
    return-void
.end method

.method private ScrollIntoView(Z)V
    .registers 7

    .line 595
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    sget-object v1, Ljavafx/scene/AccessibleAction;->SHOW_TEXT_RANGE:Ljavafx/scene/AccessibleAction;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method private Select()V
    .registers 6

    .line 581
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    sget-object v1, Ljavafx/scene/AccessibleAction;->SET_TEXT_SELECTION:Ljavafx/scene/AccessibleAction;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 582
    return-void
.end method

.method private native _createTextRangeProvider(J)J
.end method

.method private native _destroyTextRangeProvider(J)V
.end method

.method private static native _initIDs()V
.end method

.method private varargs getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->accessible:Lcom/sun/glass/ui/win/WinAccessible;

    invoke-virtual {v0, p1, p2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isWordStart(Ljava/text/BreakIterator;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    .line 116
    if-nez p3, :cond_4

    .line 119
    :cond_3
    :goto_3
    return v0

    .line 117
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p3, v1, :cond_3

    .line 118
    const/4 v1, -0x1

    if-eq p3, v1, :cond_3

    .line 119
    invoke-virtual {p1, p3}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1d
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method dispose()V
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->_destroyTextRangeProvider(J)V

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->peer:J

    .line 92
    return-void
.end method

.method getEnd()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    return v0
.end method

.method getNativeProvider()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->peer:J

    return-wide v0
.end method

.method getStart()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    return v0
.end method

.method setRange(II)V
    .registers 3

    .line 95
    iput p1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    .line 96
    iput p2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 108
    iget v0, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->start:I

    iget v1, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->end:I

    iget v2, p0, Lcom/sun/glass/ui/win/WinTextRangeProvider;->id:I

    invoke-custom {v0, v1, v2}, call_site_2020("makeConcatWithConstants", (III)Ljava/lang/String;, "Range(start: \u0001, end: \u0001, id: \u0001)")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method
