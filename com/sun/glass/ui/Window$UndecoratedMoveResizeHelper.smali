.class Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UndecoratedMoveResizeHelper"
.end annotation


# instance fields
.field inMove:Z

.field inResize:Z

.field moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

.field resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

.field startHeight:I

.field startMouseX:I

.field startMouseY:I

.field startWidth:I

.field startX:I

.field startY:I

.field final synthetic this$0:Lcom/sun/glass/ui/Window;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/Window;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1482
    iput-object p1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1472
    iput-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1473
    iput-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1475
    iput-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    .line 1476
    iput-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    .line 1483
    new-instance v0, Lcom/sun/glass/ui/Window$TrackingRectangle;

    invoke-direct {v0}, Lcom/sun/glass/ui/Window$TrackingRectangle;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1484
    new-instance v0, Lcom/sun/glass/ui/Window$TrackingRectangle;

    invoke-direct {v0}, Lcom/sun/glass/ui/Window$TrackingRectangle;-><init>()V

    iput-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    .line 1485
    return-void
.end method


# virtual methods
.method deltaMove(II)V
    .registers 7

    .line 1515
    iget v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    sub-int v0, p1, v0

    .line 1516
    iget v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    sub-int v1, p2, v1

    .line 1518
    iget-object v2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    iget v3, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startX:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startY:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/sun/glass/ui/Window;->setPosition(II)V

    .line 1519
    return-void
.end method

.method deltaResize(II)V
    .registers 7

    .line 1554
    iget v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    sub-int v0, p1, v0

    .line 1555
    iget v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    sub-int v1, p2, v1

    .line 1557
    iget-object v2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    iget v3, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startWidth:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startHeight:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/sun/glass/ui/Window;->setSize(II)V

    .line 1558
    return-void
.end method

.method handleMouseEvent(IIIIII)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1574
    packed-switch p1, :pswitch_data_4c

    :cond_5
    move v1, v0

    .line 1604
    :goto_6
    return v1

    .line 1576
    :pswitch_7  #0xdd
    const/16 v2, 0xd4

    if-ne p2, v2, :cond_5

    .line 1577
    iget-object v2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v2, p3, p4}, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove(II)Z

    move-result v2

    if-ne v2, v1, :cond_17

    .line 1578
    invoke-virtual {p0, p5, p6}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMove(II)V

    goto :goto_6

    .line 1580
    :cond_17
    iget-object v2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v2, p3, p4}, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedResize(II)Z

    move-result v2

    if-ne v2, v1, :cond_5

    .line 1581
    invoke-virtual {p0, p5, p6}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startResize(II)V

    goto :goto_6

    .line 1589
    :pswitch_23  #0xdf, 0xe0
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove()Z

    move-result v2

    if-ne v2, v1, :cond_2d

    .line 1590
    invoke-virtual {p0, p5, p6}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->deltaMove(II)V

    goto :goto_6

    .line 1592
    :cond_2d
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize()Z

    move-result v2

    if-ne v2, v1, :cond_5

    .line 1593
    invoke-virtual {p0, p5, p6}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->deltaResize(II)V

    goto :goto_6

    .line 1599
    :pswitch_37  #0xde
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {p0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_43
    move v0, v1

    .line 1600
    :cond_44
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->stopResize()V

    .line 1601
    invoke-virtual {p0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->stopMove()V

    move v1, v0

    .line 1602
    goto :goto_6

    .line 1574
    :pswitch_data_4c
    .packed-switch 0xdd
        :pswitch_7  #000000dd
        :pswitch_37  #000000de
        :pswitch_23  #000000df
        :pswitch_23  #000000e0
    .end packed-switch
.end method

.method inMove()Z
    .registers 2

    .line 1501
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    return v0
.end method

.method inResize()Z
    .registers 2

    .line 1540
    iget-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    return v0
.end method

.method setMoveRectangle(I)V
    .registers 4

    const/4 v1, 0x0

    .line 1488
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iput p1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    .line 1490
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    .line 1491
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    .line 1492
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    .line 1493
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v1, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    .line 1494
    return-void
.end method

.method setResizeRectangle(I)V
    .registers 5

    .line 1526
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iput p1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    .line 1529
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v2, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    .line 1530
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v2, v2, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    .line 1531
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v1, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    .line 1532
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget-object v1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v1, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    iput v1, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    .line 1533
    return-void
.end method

.method shouldStartMove(II)Z
    .registers 4

    .line 1497
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    invoke-virtual {v0, p1, p2}, Lcom/sun/glass/ui/Window$TrackingRectangle;->contains(II)Z

    move-result v0

    return v0
.end method

.method shouldStartResize(II)Z
    .registers 4

    .line 1536
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    invoke-virtual {v0, p1, p2}, Lcom/sun/glass/ui/Window$TrackingRectangle;->contains(II)Z

    move-result v0

    return v0
.end method

.method startMove(II)V
    .registers 4

    .line 1505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    .line 1507
    iput p1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    .line 1508
    iput p2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    .line 1510
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startX:I

    .line 1511
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startY:I

    .line 1512
    return-void
.end method

.method startResize(II)V
    .registers 4

    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    .line 1546
    iput p1, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseX:I

    .line 1547
    iput p2, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startMouseY:I

    .line 1549
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startWidth:I

    .line 1550
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->this$0:Lcom/sun/glass/ui/Window;

    invoke-virtual {v0}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->startHeight:I

    .line 1551
    return-void
.end method

.method stopMove()V
    .registers 2

    .line 1522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inMove:Z

    .line 1523
    return-void
.end method

.method protected stopResize()V
    .registers 2

    .line 1561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->inResize:Z

    .line 1562
    return-void
.end method

.method updateRectangles()V
    .registers 2

    .line 1565
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v0, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    if-lez v0, :cond_d

    .line 1566
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->moveRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v0, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setMoveRectangle(I)V

    .line 1568
    :cond_d
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v0, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    if-lez v0, :cond_1a

    .line 1569
    iget-object v0, p0, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->resizeRect:Lcom/sun/glass/ui/Window$TrackingRectangle;

    iget v0, v0, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setResizeRectangle(I)V

    .line 1571
    :cond_1a
    return-void
.end method
