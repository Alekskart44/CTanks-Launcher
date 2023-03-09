.class public abstract Lcom/sun/glass/ui/Accessible;
.super Ljava/lang/Object;
.source "Accessible.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Accessible$GetAttribute;,
        Lcom/sun/glass/ui/Accessible$ExecuteAction;,
        Lcom/sun/glass/ui/Accessible$EventHandler;
    }
.end annotation


# instance fields
.field private eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

.field private executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

.field private getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

.field private view:Lcom/sun/glass/ui/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/sun/glass/ui/Accessible$GetAttribute;

    invoke-direct {v0, p0}, Lcom/sun/glass/ui/Accessible$GetAttribute;-><init>(Lcom/sun/glass/ui/Accessible;)V

    iput-object v0, p0, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    .line 185
    new-instance v0, Lcom/sun/glass/ui/Accessible$ExecuteAction;

    invoke-direct {v0, p0}, Lcom/sun/glass/ui/Accessible$ExecuteAction;-><init>(Lcom/sun/glass/ui/Accessible;)V

    iput-object v0, p0, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    return-void
.end method

.method private final getAccessControlContext()Ljava/security/AccessControlContext;
    .registers 3

    .line 131
    const/4 v0, 0x0

    .line 133
    :try_start_1
    iget-object v1, p0, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Accessible$EventHandler;->getAccessControlContext()Ljava/security/AccessControlContext;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 137
    :goto_7
    return-object v0

    .line 134
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method private synthetic lambda$executeAction$1(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Void;
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    iput-object p1, v0, Lcom/sun/glass/ui/Accessible$ExecuteAction;->action:Ljavafx/scene/AccessibleAction;

    .line 193
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    iput-object p2, v0, Lcom/sun/glass/ui/Accessible$ExecuteAction;->parameters:[Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    invoke-static {v0, p3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method private synthetic lambda$getAttribute$0(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    iput-object p1, v0, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    .line 171
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    iput-object p2, v0, Lcom/sun/glass/ui/Accessible$GetAttribute;->parameters:[Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    invoke-static {v0, p3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    .line 77
    iput-object v0, p0, Lcom/sun/glass/ui/Accessible;->view:Lcom/sun/glass/ui/View;

    .line 78
    return-void
.end method

.method public varargs executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .registers 4

    .line 189
    invoke-direct {p0}, Lcom/sun/glass/ui/Accessible;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 190
    if-nez v0, :cond_7

    .line 196
    :goto_6
    return-void

    .line 191
    :cond_7
    invoke-custom {p0, p1, p2, v0}, call_site_923("get", (Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/util/function/Supplier;, ()Ljava/lang/Object;, invoke-direct@Lcom/sun/glass/ui/Accessible;->lambda$executeAction$1(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Void;, ()Ljava/lang/Void;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    goto :goto_6
.end method

.method protected getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;
    .registers 3

    .line 103
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 104
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/sun/javafx/scene/NodeHelper;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_3
.end method

.method protected getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;
    .registers 3

    .line 98
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 99
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/sun/javafx/scene/SceneHelper;->getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_3
.end method

.method public varargs getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 167
    invoke-direct {p0}, Lcom/sun/glass/ui/Accessible;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 168
    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 169
    :goto_7
    return-object v0

    :cond_8
    invoke-custom {p0, p1, p2, v0}, call_site_2151("get", (Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/util/function/Supplier;, ()Ljava/lang/Object;, invoke-direct@Lcom/sun/glass/ui/Accessible;->lambda$getAttribute$0(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Object;, ()Ljava/lang/Object;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method protected getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;
    .registers 6

    const/4 v3, 0x0

    .line 115
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 116
    :goto_b
    if-eqz v0, :cond_2a

    .line 117
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/Accessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    .line 118
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 119
    if-ne v0, p1, :cond_1f

    move-object v0, v1

    .line 122
    :goto_1e
    return-object v0

    .line 120
    :cond_1f
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_b

    .line 122
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Accessible$EventHandler;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    return-object v0
.end method

.method protected abstract getNativeAccessible()J
.end method

.method protected getNativeAccessible(Ljavafx/scene/Node;)J
    .registers 5

    const-wide/16 v0, 0x0

    .line 108
    if-nez p1, :cond_5

    .line 111
    :cond_4
    :goto_4
    return-wide v0

    .line 109
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/Accessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    invoke-virtual {v2}, Lcom/sun/glass/ui/Accessible;->getNativeAccessible()J

    move-result-wide v0

    goto :goto_4
.end method

.method public getView()Lcom/sun/glass/ui/View;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible;->view:Lcom/sun/glass/ui/View;

    return-object v0
.end method

.method public isDisposed()Z
    .registers 5

    .line 81
    invoke-virtual {p0}, Lcom/sun/glass/ui/Accessible;->getNativeAccessible()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected isIgnored()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 91
    if-nez v0, :cond_f

    .line 92
    :goto_e
    return v2

    :cond_f
    sget-object v3, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    if-eq v0, v3, :cond_17

    sget-object v3, Ljavafx/scene/AccessibleRole;->PARENT:Ljavafx/scene/AccessibleRole;

    if-ne v0, v3, :cond_1a

    :cond_17
    move v0, v2

    :goto_18
    move v2, v0

    goto :goto_e

    :cond_1a
    move v0, v1

    goto :goto_18
.end method

.method public abstract sendNotification(Ljavafx/scene/AccessibleAttribute;)V
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Accessible$EventHandler;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    .line 65
    return-void
.end method

.method public setView(Lcom/sun/glass/ui/View;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/sun/glass/ui/Accessible;->view:Lcom/sun/glass/ui/View;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    invoke-custom {v0, v1}, call_site_2595("makeConcatWithConstants", (Ljava/lang/String;Lcom/sun/glass/ui/Accessible$EventHandler;)Ljava/lang/String;, "\u0001 (\u0001)")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method
