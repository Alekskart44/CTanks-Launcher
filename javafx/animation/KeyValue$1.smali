.class Ljavafx/animation/KeyValue$1;
.super Ljava/lang/Object;
.source "KeyValue.java"

# interfaces
.implements Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/KeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType(Ljavafx/animation/KeyValue;)Lcom/sun/javafx/animation/KeyValueType;
    .registers 3

    .line 72
    invoke-virtual {p1}, Ljavafx/animation/KeyValue;->getType()Lcom/sun/javafx/animation/KeyValueType;

    move-result-object v0

    return-object v0
.end method
