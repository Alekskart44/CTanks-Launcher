.class public final Lcom/sun/glass/ui/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0}, Lcom/sun/glass/ui/Size;-><init>(II)V

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/sun/glass/ui/Size;->width:I

    .line 36
    iput p2, p0, Lcom/sun/glass/ui/Size;->height:I

    .line 37
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    iget v0, p0, Lcom/sun/glass/ui/Size;->width:I

    iget v1, p0, Lcom/sun/glass/ui/Size;->height:I

    invoke-custom {v0, v1}, call_site_1443("makeConcatWithConstants", (II)Ljava/lang/String;, "Size(\u0001, \u0001)")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method
