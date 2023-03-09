.class Lcom/sun/glass/ui/View$2;
.super Lcom/sun/glass/ui/ClipboardAssistance;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/View;->notifyDragEnter(IIIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/View;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/View;Ljava/lang/String;)V
    .registers 3

    .line 1021
    iput-object p1, p0, Lcom/sun/glass/ui/View$2;->this$0:Lcom/sun/glass/ui/View;

    invoke-direct {p0, p2}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 3

    .line 1023
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Flush is forbidden from target!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
