.class public Lcom/example/demo/locale/LocaleConsts;
.super Ljava/lang/Object;
.source "LocaleConsts.java"


# static fields
.field public static final DOWNLOAD_CLIENT:Ljava/lang/String; = "downloadClient"

.field public static final DOWNLOAD_FILES:Ljava/lang/String; = "downloadfiles"

.field public static final DOWNLOAD_FILES_DONE:Ljava/lang/String; = "downloadfilesdone"

.field public static final PANEL_FORUM:Ljava/lang/String; = "panelforum"

.field public static final PANEL_MAIN:Ljava/lang/String; = "panelmain"

.field public static final PANEL_PAYMENTS:Ljava/lang/String; = "panelpayments"

.field public static final PANEL_RATINGS:Ljava/lang/String; = "panelratings"

.field public static final PANEL_VK:Ljava/lang/String; = "panelvk"

.field public static final PANEL_WIKI:Ljava/lang/String; = "panelwiki"

.field public static final UNPACKING_FILES:Ljava/lang/String; = "unpackingfiles"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static dump()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "downloadfiles"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "downloadfilesdone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unpackingfiles"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "downloadClient"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "panelmain"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "panelratings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "panelforum"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "panelpayments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "panelwiki"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "panelvk"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
