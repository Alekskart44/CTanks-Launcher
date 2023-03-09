.class public final Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/CommonDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileChooserResult"
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final filter:Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;-><init>(Ljava/util/List;Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-nez p1, :cond_d

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "files should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_d
    iput-object p1, p0, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->files:Ljava/util/List;

    .line 128
    iput-object p2, p0, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->filter:Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    .line 129
    return-void
.end method


# virtual methods
.method public getExtensionFilter()Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->filter:Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->files:Ljava/util/List;

    return-object v0
.end method
