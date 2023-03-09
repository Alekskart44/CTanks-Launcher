.class public abstract Lcom/sun/glass/ui/Accessible$EventHandler;
.super Ljava/lang/Object;
.source "Accessible.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Accessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .registers 3

    .line 53
    return-void
.end method

.method public abstract getAccessControlContext()Ljava/security/AccessControlContext;
.end method

.method public varargs getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
