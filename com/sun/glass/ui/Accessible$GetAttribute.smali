.class Lcom/sun/glass/ui/Accessible$GetAttribute;
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
    name = "GetAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field attribute:Ljavafx/scene/AccessibleAttribute;

.field parameters:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/glass/ui/Accessible;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/Accessible;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/sun/glass/ui/Accessible$GetAttribute;->this$0:Lcom/sun/glass/ui/Accessible;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/sun/glass/ui/Accessible$GetAttribute;->this$0:Lcom/sun/glass/ui/Accessible;

    iget-object v0, v0, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    iget-object v1, p0, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    iget-object v2, p0, Lcom/sun/glass/ui/Accessible$GetAttribute;->parameters:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible$EventHandler;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_19

    .line 146
    iget-object v1, p0, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_19

    .line 149
    :try_start_16
    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 159
    :cond_19
    :goto_19
    return-object v0

    .line 150
    :catch_1a
    move-exception v2

    .line 151
    iget-object v2, p0, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-custom {v2, v1, v0}, call_site_2444("makeConcatWithConstants", (Ljavafx/scene/AccessibleAttribute;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "The expected return type for the \u0001 attribute is \u0001 but found \u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 154
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    goto :goto_19
.end method
