.class public Lcom/example/demo/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljavafx/fxml/Initializable;


# instance fields
.field private bgButton:Ljavafx/scene/image/ImageView;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private buttonAnimation:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private enLocale:Ljavafx/scene/control/Hyperlink;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private infoLabel:Ljavafx/scene/control/Label;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private pane:Ljavafx/scene/layout/AnchorPane;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private playButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private progressBar:Ljavafx/scene/control/ProgressBar;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private ruLocale:Ljavafx/scene/control/Hyperlink;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private zipClientLoader:Lcom/example/demo/loader/ZIPClientLoader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-custom {p0}, call_site_1951("run", (Lcom/example/demo/Controller;)Ljava/lang/Runnable;, ()V, invoke-instance@Lcom/example/demo/Controller;->lambda$new$0()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method private animateBackgroundButton(I)V
    .registers 6
    .param p1, "millis"  # I

    .line 153
    new-instance v0, Ljavafx/animation/FadeTransition;

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v1

    iget-object v2, p0, Lcom/example/demo/Controller;->bgButton:Ljavafx/scene/image/ImageView;

    invoke-direct {v0, v1, v2}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 154
    .local v0, "fadeOut":Ljavafx/animation/FadeTransition;
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, v2, v3}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 155
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 156
    invoke-custom {p0, p1, v0}, call_site_225("handle", (Lcom/example/demo/Controller;ILjavafx/animation/FadeTransition;)Ljavafx/event/EventHandler;, (Ljavafx/event/Event;)V, invoke-instance@Lcom/example/demo/Controller;->lambda$animateBackgroundButton$6(ILjavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V, (Ljavafx/event/ActionEvent;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 165
    invoke-virtual {v0}, Ljavafx/animation/FadeTransition;->play()V

    .line 166
    return-void
.end method

.method private animateButton(II)V
    .registers 13
    .param p1, "millis"  # I
    .param p2, "hoverTransitionMillis"  # I

    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 169
    new-instance v1, Ljavafx/animation/FadeTransition;

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v3

    iget-object v4, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-direct {v1, v3, v4}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 170
    .local v1, "in":Ljavafx/animation/FadeTransition;
    invoke-virtual {v1, v8, v9}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 171
    invoke-virtual {v1, v6, v7}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 172
    new-instance v2, Ljavafx/animation/FadeTransition;

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v3

    iget-object v4, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-direct {v2, v3, v4}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 173
    .local v2, "out":Ljavafx/animation/FadeTransition;
    invoke-virtual {v2, v6, v7}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 174
    invoke-virtual {v2, v8, v9}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 175
    invoke-custom {v2}, call_site_2366("handle", (Ljavafx/animation/FadeTransition;)Ljavafx/event/EventHandler;, (Ljavafx/event/Event;)V, invoke-static@Lcom/example/demo/Controller;->lambda$animateButton$7(Ljavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V, (Ljavafx/event/ActionEvent;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 178
    invoke-custom {v2, v1}, call_site_2448("handle", (Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;)Ljavafx/event/EventHandler;, (Ljavafx/event/Event;)V, invoke-static@Lcom/example/demo/Controller;->lambda$animateButton$8(Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V, (Ljavafx/event/ActionEvent;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 182
    invoke-virtual {v2}, Ljavafx/animation/FadeTransition;->play()V

    .line 183
    new-instance v0, Ljavafx/animation/FadeTransition;

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v3

    iget-object v4, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-direct {v0, v3, v4}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 184
    .local v0, "fade":Ljavafx/animation/FadeTransition;
    iget-object v3, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getOpacity()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 185
    invoke-virtual {v0, v6, v7}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 186
    iget-object v3, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    invoke-custom {p0, v2, v1, v0}, call_site_2434("handle", (Lcom/example/demo/Controller;Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;)Ljavafx/event/EventHandler;, (Ljavafx/event/Event;)V, invoke-instance@Lcom/example/demo/Controller;->lambda$animateButton$9(Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/scene/input/MouseEvent;)V, (Ljavafx/scene/input/MouseEvent;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Button;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 195
    iget-object v3, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    invoke-custom {p0, v0, v2}, call_site_431("handle", (Lcom/example/demo/Controller;Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;)Ljavafx/event/EventHandler;, (Ljavafx/event/Event;)V, invoke-instance@Lcom/example/demo/Controller;->lambda$animateButton$10(Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/scene/input/MouseEvent;)V, (Ljavafx/scene/input/MouseEvent;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Button;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 200
    return-void
.end method

.method private downloadResources()V
    .registers 2

    .line 133
    new-instance v0, Lcom/example/demo/loader/ZIPClientLoader;

    invoke-direct {v0}, Lcom/example/demo/loader/ZIPClientLoader;-><init>()V

    iput-object v0, p0, Lcom/example/demo/Controller;->zipClientLoader:Lcom/example/demo/loader/ZIPClientLoader;

    .line 134
    iget-object v0, p0, Lcom/example/demo/Controller;->zipClientLoader:Lcom/example/demo/loader/ZIPClientLoader;

    invoke-virtual {v0, p0}, Lcom/example/demo/loader/ZIPClientLoader;->startLoad(Lcom/example/demo/Controller;)V

    .line 135
    return-void
.end method

.method private static synthetic lambda$animateBackgroundButton$5(Ljavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V
    .registers 2
    .param p0, "fadeOut"  # Ljavafx/animation/FadeTransition;
    .param p1, "event"  # Ljavafx/event/ActionEvent;

    .line 161
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->play()V

    .line 162
    return-void
.end method

.method private synthetic lambda$animateBackgroundButton$6(ILjavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V
    .registers 8
    .param p1, "millis"  # I
    .param p2, "fadeOut"  # Ljavafx/animation/FadeTransition;
    .param p3, "e"  # Ljavafx/event/ActionEvent;

    .line 157
    new-instance v0, Ljavafx/animation/FadeTransition;

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v1

    iget-object v2, p0, Lcom/example/demo/Controller;->bgButton:Ljavafx/scene/image/ImageView;

    invoke-direct {v0, v1, v2}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 158
    .local v0, "fadeIn":Ljavafx/animation/FadeTransition;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 159
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, v2, v3}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 160
    invoke-custom {p2}, call_site_1996("handle", (Ljavafx/animation/FadeTransition;)Ljavafx/event/EventHandler;, (Ljavafx/event/Event;)V, invoke-static@Lcom/example/demo/Controller;->lambda$animateBackgroundButton$5(Ljavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V, (Ljavafx/event/ActionEvent;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 163
    invoke-virtual {v0}, Ljavafx/animation/FadeTransition;->play()V

    .line 164
    return-void
.end method

.method private synthetic lambda$animateButton$10(Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/scene/input/MouseEvent;)V
    .registers 6
    .param p1, "fade"  # Ljavafx/animation/FadeTransition;
    .param p2, "out"  # Ljavafx/animation/FadeTransition;
    .param p3, "e"  # Ljavafx/scene/input/MouseEvent;

    .line 196
    invoke-virtual {p1}, Ljavafx/animation/FadeTransition;->stop()V

    .line 197
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getOpacity()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 198
    invoke-virtual {p2}, Ljavafx/animation/FadeTransition;->play()V

    .line 199
    return-void
.end method

.method private static synthetic lambda$animateButton$7(Ljavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V
    .registers 2
    .param p0, "out"  # Ljavafx/animation/FadeTransition;
    .param p1, "e"  # Ljavafx/event/ActionEvent;

    .line 176
    invoke-virtual {p0}, Ljavafx/animation/FadeTransition;->play()V

    .line 177
    return-void
.end method

.method private static synthetic lambda$animateButton$8(Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/event/ActionEvent;)V
    .registers 5
    .param p0, "out"  # Ljavafx/animation/FadeTransition;
    .param p1, "in"  # Ljavafx/animation/FadeTransition;
    .param p2, "e"  # Ljavafx/event/ActionEvent;

    .line 179
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    invoke-virtual {p0, v0, v1}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 180
    invoke-virtual {p1}, Ljavafx/animation/FadeTransition;->play()V

    .line 181
    return-void
.end method

.method private synthetic lambda$animateButton$9(Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/animation/FadeTransition;Ljavafx/scene/input/MouseEvent;)V
    .registers 9
    .param p1, "out"  # Ljavafx/animation/FadeTransition;
    .param p2, "in"  # Ljavafx/animation/FadeTransition;
    .param p3, "fade"  # Ljavafx/animation/FadeTransition;
    .param p4, "e"  # Ljavafx/scene/input/MouseEvent;

    .line 187
    invoke-virtual {p1}, Ljavafx/animation/FadeTransition;->stop()V

    .line 188
    invoke-virtual {p2}, Ljavafx/animation/FadeTransition;->stop()V

    .line 189
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getOpacity()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1e

    .line 190
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getOpacity()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 191
    invoke-virtual {p3}, Ljavafx/animation/FadeTransition;->play()V

    .line 194
    :cond_1e
    return-void
.end method

.method private synthetic lambda$changeLabelText$3(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"  # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/example/demo/Controller;->infoLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v0, p1}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private synthetic lambda$lockPlayButton$1()V
    .registers 3

    const/4 v1, 0x1

    .line 110
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 111
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 112
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/example/demo/Controller;->lockPlayButton()V

    .line 48
    const-string v1, "APPDATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_1403("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\ctanks.StandaloneLoader")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-static {v1}, Lcom/example/demo/Settings;->parse(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/example/demo/Settings;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/example/demo/locale/LangEnum;->valueOf(Ljava/lang/String;)Lcom/example/demo/locale/LangEnum;

    move-result-object v1

    invoke-static {v1}, Lcom/example/demo/locale/LocaleRegistry;->setCurrentLang(Lcom/example/demo/locale/LangEnum;)V

    .line 50
    invoke-static {}, Lcom/example/demo/locale/LocaleRegistry;->getCurrentLang()Lcom/example/demo/locale/LangEnum;

    move-result-object v1

    sget-object v2, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    if-ne v1, v2, :cond_2a

    .line 51
    invoke-virtual {p0}, Lcom/example/demo/Controller;->setRULocale()V

    .line 55
    :goto_26
    invoke-direct {p0}, Lcom/example/demo/Controller;->downloadResources()V

    .line 61
    :goto_29
    return-void

    .line 53
    :cond_2a
    invoke-virtual {p0}, Lcom/example/demo/Controller;->setENLocale()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_26

    .line 57
    :catch_2e
    move-exception v0

    .line 58
    .local v0, "var2":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method private synthetic lambda$onResourceLoaded$4(D)V
    .registers 8
    .param p1, "procent"  # D

    .line 143
    iget-object v0, p0, Lcom/example/demo/Controller;->progressBar:Ljavafx/scene/control/ProgressBar;

    invoke-virtual {v0, p1, p2}, Ljavafx/scene/control/ProgressBar;->setProgress(D)V

    .line 144
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_11

    .line 145
    iget-object v0, p0, Lcom/example/demo/Controller;->progressBar:Ljavafx/scene/control/ProgressBar;

    invoke-virtual {v0}, Ljavafx/scene/control/ProgressBar;->isDisable()Z

    .line 150
    :goto_10
    return-void

    .line 147
    :cond_11
    iget-object v0, p0, Lcom/example/demo/Controller;->progressBar:Ljavafx/scene/control/ProgressBar;

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljavafx/scene/control/ProgressBar;->setProgress(D)V

    goto :goto_10
.end method

.method private synthetic lambda$unlockPlayButton$2()V
    .registers 3

    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 118
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Button;->setDisable(Z)V

    .line 119
    const/16 v0, 0x9c4

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/example/demo/Controller;->animateButton(II)V

    .line 120
    return-void
.end method

.method private setLocaleText()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/example/demo/Controller;->infoLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v0}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/example/demo/Controller;->infoLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v0}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 128
    iget-object v0, p0, Lcom/example/demo/Controller;->infoLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v0}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/demo/locale/LocaleRegistry;->transformLocalizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/demo/Controller;->changeLabelText(Ljava/lang/String;)V

    .line 131
    :cond_21
    return-void
.end method


# virtual methods
.method public changeLabelText(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"  # Ljava/lang/String;

    .line 137
    invoke-custom {p0, p1}, call_site_1995("run", (Lcom/example/demo/Controller;Ljava/lang/String;)Ljava/lang/Runnable;, ()V, invoke-instance@Lcom/example/demo/Controller;->lambda$changeLabelText$3(Ljava/lang/String;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public initialize(Ljava/net/URL;Ljava/util/ResourceBundle;)V
    .registers 6
    .param p1, "url"  # Ljava/net/URL;
    .param p2, "resourceBundle"  # Ljava/util/ResourceBundle;

    .line 204
    new-instance v0, Ljavafx/scene/image/Image;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "bg-button.png"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "image":Ljavafx/scene/image/Image;
    iget-object v1, p0, Lcom/example/demo/Controller;->bgButton:Ljavafx/scene/image/ImageView;

    invoke-virtual {v1, v0}, Ljavafx/scene/image/ImageView;->setImage(Ljavafx/scene/image/Image;)V

    .line 206
    const/16 v1, 0xfa0

    invoke-direct {p0, v1}, Lcom/example/demo/Controller;->animateBackgroundButton(I)V

    .line 207
    return-void
.end method

.method public lockPlayButton()V
    .registers 2

    .line 109
    invoke-custom {p0}, call_site_1268("run", (Lcom/example/demo/Controller;)Ljava/lang/Runnable;, ()V, invoke-instance@Lcom/example/demo/Controller;->lambda$lockPlayButton$1()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public onClick()V
    .registers 6
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/example/demo/Controller;->zipClientLoader:Lcom/example/demo/loader/ZIPClientLoader;

    invoke-virtual {v4}, Lcom/example/demo/loader/ZIPClientLoader;->getLauncher()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/example/demo/locale/LocaleRegistry;->getCurrentLang()Lcom/example/demo/locale/LangEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/demo/locale/LangEnum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 67
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 72
    :goto_2b
    return-void

    .line 68
    :catch_2c
    move-exception v0

    .line 69
    .local v0, "var2":Ljava/io/IOException;
    invoke-static {v0}, Lcom/example/demo/alerts/ErrorAlertManager;->showErrorAlert(Ljava/lang/Exception;)V

    goto :goto_2b
.end method

.method public onClickOnDiscord()V
    .registers 2
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .line 124
    const-string v0, "https://discord.gg/gKwf6Mnvs2"

    invoke-static {v0}, Lcom/example/demo/browser/BrowserModel;->createBrowser(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onResourceLoaded(D)V
    .registers 4
    .param p1, "procent"  # D

    .line 142
    invoke-custom {p0, p1, p2}, call_site_2246("run", (Lcom/example/demo/Controller;D)Ljava/lang/Runnable;, ()V, invoke-instance@Lcom/example/demo/Controller;->lambda$onResourceLoaded$4(D)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public setENLocale()V
    .registers 4
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/example/demo/Controller;->ruLocale:Ljavafx/scene/control/Hyperlink;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Hyperlink;->setVisited(Z)V

    .line 94
    iget-object v0, p0, Lcom/example/demo/Controller;->enLocale:Ljavafx/scene/control/Hyperlink;

    invoke-virtual {v0, v2}, Ljavafx/scene/control/Hyperlink;->setVisited(Z)V

    .line 95
    sget-object v0, Lcom/example/demo/locale/LangEnum;->EN:Lcom/example/demo/locale/LangEnum;

    invoke-static {v0}, Lcom/example/demo/locale/LocaleRegistry;->setCurrentLang(Lcom/example/demo/locale/LangEnum;)V

    .line 96
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "game-button-en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 97
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-ru"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-en"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3b
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "game-button-ru-animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 102
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-ru-animation"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-en-animation"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_65
    invoke-direct {p0}, Lcom/example/demo/Controller;->setLocaleText()V

    .line 107
    return-void
.end method

.method public setRULocale()V
    .registers 4
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/example/demo/Controller;->enLocale:Ljavafx/scene/control/Hyperlink;

    invoke-virtual {v0, v1}, Ljavafx/scene/control/Hyperlink;->setVisited(Z)V

    .line 76
    iget-object v0, p0, Lcom/example/demo/Controller;->ruLocale:Ljavafx/scene/control/Hyperlink;

    invoke-virtual {v0, v2}, Ljavafx/scene/control/Hyperlink;->setVisited(Z)V

    .line 77
    sget-object v0, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    invoke-static {v0}, Lcom/example/demo/locale/LocaleRegistry;->setCurrentLang(Lcom/example/demo/locale/LangEnum;)V

    .line 78
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "game-button-ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 79
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-en"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/example/demo/Controller;->playButton:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-ru"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3b
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    invoke-interface {v0, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "game-button-en-animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 84
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-en-animation"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/example/demo/Controller;->buttonAnimation:Ljavafx/scene/control/Button;

    invoke-virtual {v0}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v0

    const-string v1, "game-button-ru-animation"

    invoke-interface {v0, v1}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_65
    invoke-direct {p0}, Lcom/example/demo/Controller;->setLocaleText()V

    .line 89
    return-void
.end method

.method public unlockPlayButton()V
    .registers 2

    .line 116
    invoke-custom {p0}, call_site_2287("run", (Lcom/example/demo/Controller;)Ljava/lang/Runnable;, ()V, invoke-instance@Lcom/example/demo/Controller;->lambda$unlockPlayButton$2()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
