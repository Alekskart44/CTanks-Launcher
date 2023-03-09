.class public final enum Lcom/sun/javafx/animation/KeyValueType;
.super Ljava/lang/Enum;
.source "KeyValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/animation/KeyValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/animation/KeyValueType;

.field public static final enum BOOLEAN:Lcom/sun/javafx/animation/KeyValueType;

.field public static final enum DOUBLE:Lcom/sun/javafx/animation/KeyValueType;

.field public static final enum FLOAT:Lcom/sun/javafx/animation/KeyValueType;

.field public static final enum INTEGER:Lcom/sun/javafx/animation/KeyValueType;

.field public static final enum LONG:Lcom/sun/javafx/animation/KeyValueType;

.field public static final enum OBJECT:Lcom/sun/javafx/animation/KeyValueType;


# direct methods
.method private static synthetic $values()[Lcom/sun/javafx/animation/KeyValueType;
    .registers 3

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sun/javafx/animation/KeyValueType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/javafx/animation/KeyValueType;->BOOLEAN:Lcom/sun/javafx/animation/KeyValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/javafx/animation/KeyValueType;->DOUBLE:Lcom/sun/javafx/animation/KeyValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/javafx/animation/KeyValueType;->FLOAT:Lcom/sun/javafx/animation/KeyValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/javafx/animation/KeyValueType;->INTEGER:Lcom/sun/javafx/animation/KeyValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sun/javafx/animation/KeyValueType;->LONG:Lcom/sun/javafx/animation/KeyValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sun/javafx/animation/KeyValueType;->OBJECT:Lcom/sun/javafx/animation/KeyValueType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lcom/sun/javafx/animation/KeyValueType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/javafx/animation/KeyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/animation/KeyValueType;->BOOLEAN:Lcom/sun/javafx/animation/KeyValueType;

    new-instance v0, Lcom/sun/javafx/animation/KeyValueType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sun/javafx/animation/KeyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/animation/KeyValueType;->DOUBLE:Lcom/sun/javafx/animation/KeyValueType;

    new-instance v0, Lcom/sun/javafx/animation/KeyValueType;

    const-string v1, "FLOAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sun/javafx/animation/KeyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/animation/KeyValueType;->FLOAT:Lcom/sun/javafx/animation/KeyValueType;

    new-instance v0, Lcom/sun/javafx/animation/KeyValueType;

    const-string v1, "INTEGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sun/javafx/animation/KeyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/animation/KeyValueType;->INTEGER:Lcom/sun/javafx/animation/KeyValueType;

    new-instance v0, Lcom/sun/javafx/animation/KeyValueType;

    const-string v1, "LONG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sun/javafx/animation/KeyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/animation/KeyValueType;->LONG:Lcom/sun/javafx/animation/KeyValueType;

    new-instance v0, Lcom/sun/javafx/animation/KeyValueType;

    const-string v1, "OBJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sun/javafx/animation/KeyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/animation/KeyValueType;->OBJECT:Lcom/sun/javafx/animation/KeyValueType;

    .line 28
    invoke-static {}, Lcom/sun/javafx/animation/KeyValueType;->$values()[Lcom/sun/javafx/animation/KeyValueType;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/animation/KeyValueType;->$VALUES:[Lcom/sun/javafx/animation/KeyValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/animation/KeyValueType;
    .registers 2

    .line 28
    const-class v0, Lcom/sun/javafx/animation/KeyValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/javafx/animation/KeyValueType;

    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/animation/KeyValueType;
    .registers 1

    .line 28
    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->$VALUES:[Lcom/sun/javafx/animation/KeyValueType;

    invoke-virtual {v0}, [Lcom/sun/javafx/animation/KeyValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/animation/KeyValueType;

    return-object v0
.end method
