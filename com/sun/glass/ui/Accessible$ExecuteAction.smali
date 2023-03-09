.class Lcom/sun/glass/ui/Accessible$ExecuteAction;
.super Ljava/lang/Object;
.source "Accessible.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Accessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecuteAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field action:Ljavafx/scene/AccessibleAction;

.field parameters:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/glass/ui/Accessible;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/Accessible;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/sun/glass/ui/Accessible$ExecuteAction;->this$0:Lcom/sun/glass/ui/Accessible;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/sun/glass/ui/Accessible$ExecuteAction;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible$ExecuteAction;->this$0:Lcom/sun/glass/ui/Accessible;

    iget-object v0, v0, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    iget-object v1, p0, Lcom/sun/glass/ui/Accessible$ExecuteAction;->action:Ljavafx/scene/AccessibleAction;

    iget-object v2, p0, Lcom/sun/glass/ui/Accessible$ExecuteAction;->parameters:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible$EventHandler;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method
