.class Lcom/sun/glass/ui/View$1;
.super Lcom/sun/glass/ui/ClipboardAssistance;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/View;->notifyDragStart(IIIII)V
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

    .line 994
    iput-object p1, p0, Lcom/sun/glass/ui/View$1;->this$0:Lcom/sun/glass/ui/View;

    invoke-direct {p0, p2}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(I)V
    .registers 3

    .line 998
    iget-object v0, p0, Lcom/sun/glass/ui/View$1;->this$0:Lcom/sun/glass/ui/View;

    invoke-virtual {v0, p1}, Lcom/sun/glass/ui/View;->notifyDragEnd(I)V

    .line 999
    return-void
.end method
