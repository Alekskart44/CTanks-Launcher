.class public Lcom/sun/javafx/animation/KeyValueHelper;
.super Ljava/lang/Object;
.source "KeyValueHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;
    }
.end annotation


# static fields
.field private static keyValueAccessor:Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Ljavafx/animation/KeyValue;

    invoke-static {v0}, Lcom/sun/javafx/util/Utils;->forceInit(Ljava/lang/Class;)V

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getType(Ljavafx/animation/KeyValue;)Lcom/sun/javafx/animation/KeyValueType;
    .registers 2

    .line 46
    sget-object v0, Lcom/sun/javafx/animation/KeyValueHelper;->keyValueAccessor:Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;

    invoke-interface {v0, p0}, Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;->getType(Ljavafx/animation/KeyValue;)Lcom/sun/javafx/animation/KeyValueType;

    move-result-object v0

    return-object v0
.end method

.method public static setKeyValueAccessor(Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;)V
    .registers 2

    .line 50
    sget-object v0, Lcom/sun/javafx/animation/KeyValueHelper;->keyValueAccessor:Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;

    if-eqz v0, :cond_a

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 54
    :cond_a
    sput-object p0, Lcom/sun/javafx/animation/KeyValueHelper;->keyValueAccessor:Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;

    .line 55
    return-void
.end method
