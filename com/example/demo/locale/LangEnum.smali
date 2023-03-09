.class public final enum Lcom/example/demo/locale/LangEnum;
.super Ljava/lang/Enum;
.source "LangEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/example/demo/locale/LangEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/demo/locale/LangEnum;

.field public static final enum EN:Lcom/example/demo/locale/LangEnum;

.field public static final enum RU:Lcom/example/demo/locale/LangEnum;


# direct methods
.method private static synthetic $values()[Lcom/example/demo/locale/LangEnum;
    .registers 3

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/example/demo/locale/LangEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/example/demo/locale/LangEnum;->EN:Lcom/example/demo/locale/LangEnum;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/example/demo/locale/LangEnum;

    const-string v1, "RU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/demo/locale/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    .line 5
    new-instance v0, Lcom/example/demo/locale/LangEnum;

    const-string v1, "EN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/example/demo/locale/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/demo/locale/LangEnum;->EN:Lcom/example/demo/locale/LangEnum;

    .line 3
    invoke-static {}, Lcom/example/demo/locale/LangEnum;->$values()[Lcom/example/demo/locale/LangEnum;

    move-result-object v0

    sput-object v0, Lcom/example/demo/locale/LangEnum;->$VALUES:[Lcom/example/demo/locale/LangEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/demo/locale/LangEnum;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/example/demo/locale/LangEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/demo/locale/LangEnum;

    return-object v0
.end method

.method public static values()[Lcom/example/demo/locale/LangEnum;
    .registers 1

    .line 3
    sget-object v0, Lcom/example/demo/locale/LangEnum;->$VALUES:[Lcom/example/demo/locale/LangEnum;

    invoke-virtual {v0}, [Lcom/example/demo/locale/LangEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/demo/locale/LangEnum;

    return-object v0
.end method
