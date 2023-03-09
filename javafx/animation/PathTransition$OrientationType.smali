.class public final enum Ljavafx/animation/PathTransition$OrientationType;
.super Ljava/lang/Enum;
.source "PathTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/PathTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrientationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/animation/PathTransition$OrientationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/animation/PathTransition$OrientationType;

.field public static final enum NONE:Ljavafx/animation/PathTransition$OrientationType;

.field public static final enum ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;


# direct methods
.method private static synthetic $values()[Ljavafx/animation/PathTransition$OrientationType;
    .registers 3

    .line 223
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/animation/PathTransition$OrientationType;

    const/4 v1, 0x0

    sget-object v2, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljavafx/animation/PathTransition$OrientationType;->ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 229
    new-instance v0, Ljavafx/animation/PathTransition$OrientationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavafx/animation/PathTransition$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    .line 235
    new-instance v0, Ljavafx/animation/PathTransition$OrientationType;

    const-string v1, "ORTHOGONAL_TO_TANGENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljavafx/animation/PathTransition$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/PathTransition$OrientationType;->ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;

    .line 223
    invoke-static {}, Ljavafx/animation/PathTransition$OrientationType;->$values()[Ljavafx/animation/PathTransition$OrientationType;

    move-result-object v0

    sput-object v0, Ljavafx/animation/PathTransition$OrientationType;->$VALUES:[Ljavafx/animation/PathTransition$OrientationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/animation/PathTransition$OrientationType;
    .registers 2

    .line 223
    const-class v0, Ljavafx/animation/PathTransition$OrientationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavafx/animation/PathTransition$OrientationType;

    return-object v0
.end method

.method public static values()[Ljavafx/animation/PathTransition$OrientationType;
    .registers 1

    .line 223
    sget-object v0, Ljavafx/animation/PathTransition$OrientationType;->$VALUES:[Ljavafx/animation/PathTransition$OrientationType;

    invoke-virtual {v0}, [Ljavafx/animation/PathTransition$OrientationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/animation/PathTransition$OrientationType;

    return-object v0
.end method
