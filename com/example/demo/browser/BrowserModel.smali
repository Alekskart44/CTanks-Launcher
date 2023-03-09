.class public Lcom/example/demo/browser/BrowserModel;
.super Ljava/lang/Object;
.source "BrowserModel.java"


# static fields
.field private static currentURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBrowser(Ljava/lang/String;)V
    .registers 4
    .param p0, "url"  # Ljava/lang/String;

    .line 11
    :try_start_0
    invoke-static {}, Ljava/awt/Desktop;->getDesktop()Ljava/awt/Desktop;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Desktop;->browse(Ljava/net/URI;)V

    .line 12
    sput-object p0, Lcom/example/demo/browser/BrowserModel;->currentURL:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 16
    return-void

    .line 13
    :catch_13
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCurrentURL()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/example/demo/browser/BrowserModel;->currentURL:Ljava/lang/String;

    return-object v0
.end method
