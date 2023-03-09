.class final Lcom/sun/glass/ui/win/WinRobot;
.super Lcom/sun/glass/ui/GlassRobot;
.source "WinRobot.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/sun/glass/ui/GlassRobot;-><init>()V

    return-void
.end method


# virtual methods
.method protected native _getMouseX()F
.end method

.method protected native _getMouseY()F
.end method

.method protected native _getPixelColor(II)I
.end method

.method protected native _getScreenCapture(IIII[I)V
.end method

.method protected native _keyPress(I)V
.end method

.method protected native _keyRelease(I)V
.end method

.method protected native _mouseMove(II)V
.end method

.method protected native _mousePress(I)V
.end method

.method protected native _mouseRelease(I)V
.end method

.method protected native _mouseWheel(I)V
.end method

.method public create()V
    .registers 1

    .line 42
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 47
    return-void
.end method

.method public getMouseX()D
    .registers 3

    .line 95
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 96
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinRobot;->_getMouseX()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getMouseY()D
    .registers 3

    .line 102
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 103
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinRobot;->_getMouseY()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getPixelColor(DD)Ljavafx/scene/paint/Color;
    .registers 8

    .line 109
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 110
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinRobot;->_getPixelColor(II)I

    move-result v0

    invoke-static {v0}, Lcom/sun/glass/ui/GlassRobot;->convertFromIntArgb(I)Ljavafx/scene/paint/Color;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCapture(IIII[IZ)V
    .registers 7

    .line 116
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 117
    invoke-virtual/range {p0 .. p5}, Lcom/sun/glass/ui/win/WinRobot;->_getScreenCapture(IIII[I)V

    .line 118
    return-void
.end method

.method public keyPress(Ljavafx/scene/input/KeyCode;)V
    .registers 3

    .line 52
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 53
    invoke-virtual {p1}, Ljavafx/scene/input/KeyCode;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinRobot;->_keyPress(I)V

    .line 54
    return-void
.end method

.method public keyRelease(Ljavafx/scene/input/KeyCode;)V
    .registers 3

    .line 59
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 60
    invoke-virtual {p1}, Ljavafx/scene/input/KeyCode;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinRobot;->_keyRelease(I)V

    .line 61
    return-void
.end method

.method public mouseMove(DD)V
    .registers 8

    .line 67
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 68
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinRobot;->_mouseMove(II)V

    .line 69
    return-void
.end method

.method public varargs mousePress([Ljavafx/scene/input/MouseButton;)V
    .registers 3

    .line 74
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 75
    invoke-static {p1}, Lcom/sun/glass/ui/GlassRobot;->convertToRobotMouseButton([Ljavafx/scene/input/MouseButton;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinRobot;->_mousePress(I)V

    .line 76
    return-void
.end method

.method public varargs mouseRelease([Ljavafx/scene/input/MouseButton;)V
    .registers 3

    .line 81
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 82
    invoke-static {p1}, Lcom/sun/glass/ui/GlassRobot;->convertToRobotMouseButton([Ljavafx/scene/input/MouseButton;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinRobot;->_mouseRelease(I)V

    .line 83
    return-void
.end method

.method public mouseWheel(I)V
    .registers 2

    .line 88
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/win/WinRobot;->_mouseWheel(I)V

    .line 90
    return-void
.end method
