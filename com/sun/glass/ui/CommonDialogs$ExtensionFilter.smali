.class public final Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/CommonDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionFilter"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 77
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 78
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Description parameter must be non-null and not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1a
    if-eqz p2, :cond_22

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 82
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extensions parameter must be non-null and not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    .line 87
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each extension must be non-null and not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_4a
    iput-object p1, p0, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->description:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    .line 93
    return-void
.end method

.method private extensionsToArray()[Ljava/lang/String;
    .registers 3

    .line 107
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 108
    iget-object v0, p0, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 97
    iget-object v0, p0, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 102
    iget-object v0, p0, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    return-object v0
.end method
