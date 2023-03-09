.class public Lcom/example/demo/Application;
.super Ljavafx/application/Application;
.source "Application.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljavafx/application/Application;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"  # [Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/example/demo/Application;->launch([Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public start(Ljavafx/stage/Stage;)V
    .registers 10
    .param p1, "stage"  # Ljavafx/stage/Stage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    .line 12
    new-instance v6, Ljavafx/fxml/FXMLLoader;

    const-class v1, Lcom/example/demo/Application;

    const-string v2, "hello-view.fxml"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {v6, v1}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;)V

    .line 13
    .local v6, "fxmlLoader":Ljavafx/fxml/FXMLLoader;
    new-instance v0, Ljavafx/scene/Scene;

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader;->load()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Parent;

    const-wide/high16 v2, 0x4090000000000000L  # 1024.0

    const-wide v4, 0x4084f00000000000L  # 670.0

    invoke-direct/range {v0 .. v5}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DD)V

    .line 14
    .local v0, "scene":Ljavafx/scene/Scene;
    invoke-virtual {v0}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "style.css"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    .line 15
    const-string v1, "CrystalTanks Online"

    invoke-virtual {p1, v1}, Ljavafx/stage/Stage;->setTitle(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Ljavafx/stage/Stage;->setScene(Ljavafx/scene/Scene;)V

    .line 17
    invoke-virtual {p1, v7}, Ljavafx/stage/Stage;->setResizable(Z)V

    .line 18
    invoke-virtual {p1}, Ljavafx/stage/Stage;->getIcons()Ljavafx/collections/ObservableList;

    move-result-object v1

    new-instance v2, Ljavafx/scene/image/Image;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "logo.png"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/image/Image;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p1}, Ljavafx/stage/Stage;->show()V

    .line 20
    return-void
.end method
