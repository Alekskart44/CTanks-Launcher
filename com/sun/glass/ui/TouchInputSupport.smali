.class public Lcom/sun/glass/ui/TouchInputSupport;
.super Ljava/lang/Object;
.source "TouchInputSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;,
        Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    }
.end annotation


# instance fields
.field private curIsDirect:Z

.field private curModifiers:I

.field private curTouchCount:I

.field private curView:Lcom/sun/glass/ui/View;

.field private filterTouchCoordinates:Z

.field private listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

.field private touch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;",
            ">;"
        }
    .end annotation
.end field

.field private touchCount:I


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;Z)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    .line 63
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 64
    iput-object p1, p0, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    .line 65
    iput-boolean p2, p0, Lcom/sun/glass/ui/TouchInputSupport;->filterTouchCoordinates:Z

    .line 66
    if-eqz p2, :cond_16

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    .line 69
    :cond_16
    return-void
.end method

.method private filterTouchInputState(IJIIII)I
    .registers 12

    .line 147
    packed-switch p1, :pswitch_data_3e

    .line 164
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p1}, call_site_3189("makeConcatWithConstants", (I)Ljava/lang/String;, "Unknown touch state: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :goto_c
    :pswitch_c  #0x32e
    return p1

    .line 149
    :pswitch_d  #0x32d
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 152
    :pswitch_17  #0x32c
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;

    .line 153
    iget v1, v0, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->x:I

    if-ne p4, v1, :cond_2e

    iget v0, v0, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->y:I

    if-ne p5, v0, :cond_2e

    .line 154
    const/16 p1, 0x32e

    .line 155
    goto :goto_c

    .line 159
    :cond_2e
    :pswitch_2e  #0x32b
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;

    invoke-direct {v2, p4, p5, p6, p7}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 147
    nop

    :pswitch_data_3e
    .packed-switch 0x32b
        :pswitch_2e  #0000032b
        :pswitch_17  #0000032c
        :pswitch_d  #0000032d
        :pswitch_c  #0000032e
    .end packed-switch
.end method


# virtual methods
.method public getTouchCount()I
    .registers 2

    .line 72
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 73
    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    return v0
.end method

.method public notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V
    .registers 16

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    if-eq p1, v0, :cond_70

    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    if-eqz v0, :cond_70

    .line 80
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    invoke-virtual {v0}, Lcom/sun/glass/ui/View;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 82
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    iget v1, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    invoke-virtual {v0, v9, v10, v1}, Lcom/sun/glass/ui/View;->notifyBeginTouchEvent(IZI)V

    .line 83
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;

    .line 85
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    const/16 v1, 0x32d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, v7, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->x:I

    iget v5, v7, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->y:I

    iget v6, v7, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->xAbs:I

    iget v7, v7, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->yAbs:I

    invoke-virtual/range {v0 .. v7}, Lcom/sun/glass/ui/View;->notifyNextTouchEvent(IJIIII)V

    goto :goto_2b

    .line 87
    :cond_59
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    invoke-virtual {v0}, Lcom/sun/glass/ui/View;->notifyEndTouchEvent()V

    .line 89
    :cond_5e
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touch:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    iput v9, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    .line 91
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    if-eqz v0, :cond_70

    .line 92
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    iget-object v1, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    invoke-interface {v0, p0, v1, v9, v10}, Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;->touchCountChanged(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V

    .line 96
    :cond_70
    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    iput v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curTouchCount:I

    .line 97
    iput-object p1, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    .line 98
    iput p2, p0, Lcom/sun/glass/ui/TouchInputSupport;->curModifiers:I

    .line 99
    iput-boolean p3, p0, Lcom/sun/glass/ui/TouchInputSupport;->curIsDirect:Z

    .line 100
    if-eqz p1, :cond_7f

    .line 101
    invoke-virtual {p1, p2, p3, p4}, Lcom/sun/glass/ui/View;->notifyBeginTouchEvent(IZI)V

    .line 103
    :cond_7f
    return-void
.end method

.method public notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V
    .registers 6

    .line 106
    if-nez p1, :cond_3

    .line 117
    :cond_2
    :goto_2
    return-void

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/sun/glass/ui/View;->notifyEndTouchEvent()V

    .line 113
    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curTouchCount:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->curTouchCount:I

    iget v1, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->listener:Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    iget-object v1, p0, Lcom/sun/glass/ui/TouchInputSupport;->curView:Lcom/sun/glass/ui/View;

    iget v2, p0, Lcom/sun/glass/ui/TouchInputSupport;->curModifiers:I

    iget-boolean v3, p0, Lcom/sun/glass/ui/TouchInputSupport;->curIsDirect:Z

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;->touchCountChanged(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V

    goto :goto_2
.end method

.method public notifyNextTouchEvent(Lcom/sun/glass/ui/View;IJIIII)V
    .registers 18

    .line 122
    packed-switch p2, :pswitch_data_3c

    .line 133
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-custom {p2}, call_site_3190("makeConcatWithConstants", (I)Ljava/lang/String;, "Unknown touch state: \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    :cond_c
    :goto_c
    return-void

    .line 124
    :pswitch_d  #0x32d
    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    .line 137
    :goto_13
    :pswitch_13  #0x32c, 0x32e
    iget-boolean v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->filterTouchCoordinates:Z

    if-eqz v0, :cond_39

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 138
    invoke-direct/range {v0 .. v7}, Lcom/sun/glass/ui/TouchInputSupport;->filterTouchInputState(IJIIII)I

    move-result v1

    .line 141
    :goto_24
    if-eqz p1, :cond_c

    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 142
    invoke-virtual/range {v0 .. v7}, Lcom/sun/glass/ui/View;->notifyNextTouchEvent(IJIIII)V

    goto :goto_c

    .line 127
    :pswitch_32  #0x32b
    iget v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/glass/ui/TouchInputSupport;->touchCount:I

    goto :goto_13

    :cond_39
    move v1, p2

    goto :goto_24

    .line 122
    nop

    :pswitch_data_3c
    .packed-switch 0x32b
        :pswitch_32  #0000032b
        :pswitch_13  #0000032c
        :pswitch_d  #0000032d
        :pswitch_13  #0000032e
    .end packed-switch
.end method
