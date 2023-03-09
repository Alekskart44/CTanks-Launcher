.class public abstract Lcom/sun/javafx/application/HostServicesDelegate;
.super Ljava/lang/Object;
.source "HostServicesDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;
    .registers 2

    .line 36
    invoke-static {p0}, Lcom/sun/javafx/application/HostServicesDelegate$StandaloneHostService;->getInstance(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getCodeBase()Ljava/lang/String;
.end method

.method public abstract getDocumentBase()Ljava/lang/String;
.end method

.method public abstract showDocument(Ljava/lang/String;)V
.end method
