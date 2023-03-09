.class public Lcom/example/demo/alerts/ErrorAlertManager;
.super Ljava/lang/Object;
.source "ErrorAlertManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4
    .param p0, "e"  # Ljava/lang/Exception;

    .line 37
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 38
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 39
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static synthetic lambda$showErrorAlert$0(Ljava/lang/Exception;)V
    .registers 9
    .param p0, "e"  # Ljava/lang/Exception;

    .line 17
    new-instance v0, Ljavafx/scene/control/Alert;

    sget-object v5, Ljavafx/scene/control/Alert$AlertType;->ERROR:Ljavafx/scene/control/Alert$AlertType;

    invoke-direct {v0, v5}, Ljavafx/scene/control/Alert;-><init>(Ljavafx/scene/control/Alert$AlertType;)V

    .line 18
    .local v0, "alert":Ljavafx/scene/control/Alert;
    const-string v5, "Ошибка"

    invoke-virtual {v0, v5}, Ljavafx/scene/control/Alert;->setTitle(Ljava/lang/String;)V

    .line 19
    const-string v5, "Произошла ошибка. Свяжитесь с разработчиками, отправив им данный лог ошиибки."

    invoke-virtual {v0, v5}, Ljavafx/scene/control/Alert;->setHeaderText(Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljavafx/scene/layout/VBox;

    invoke-direct {v1}, Ljavafx/scene/layout/VBox;-><init>()V

    .line 21
    .local v1, "dialogPaneContent":Ljavafx/scene/layout/VBox;
    new-instance v2, Ljavafx/scene/control/Label;

    const-string v5, "Лог ошибки:"

    invoke-direct {v2, v5}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    .line 22
    .local v2, "label":Ljavafx/scene/control/Label;
    invoke-static {p0}, Lcom/example/demo/alerts/ErrorAlertManager;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "stackTrace":Ljava/lang/String;
    new-instance v4, Ljavafx/scene/control/TextArea;

    invoke-direct {v4}, Ljavafx/scene/control/TextArea;-><init>()V

    .line 24
    .local v4, "textArea":Ljavafx/scene/control/TextArea;
    invoke-virtual {v4, v3}, Ljavafx/scene/control/TextArea;->setText(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0}, Ljavafx/scene/control/Alert;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljavafx/scene/control/DialogPane;->setContent(Ljavafx/scene/Node;)V

    .line 27
    invoke-virtual {v0}, Ljavafx/scene/control/Alert;->showAndWait()Ljava/util/Optional;

    .line 28
    return-void
.end method

.method public static showErrorAlert(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"  # Ljava/lang/Exception;

    .line 16
    invoke-custom {p0}, call_site_2510("run", (Ljava/lang/Exception;)Ljava/lang/Runnable;, ()V, invoke-static@Lcom/example/demo/alerts/ErrorAlertManager;->lambda$showErrorAlert$0(Ljava/lang/Exception;)V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "APPDATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-custom {v1}, call_site_915("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\ctanks.StandaloneLoader\\Local Store\\cache\\md5")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 34
    :cond_1f
    return-void
.end method
