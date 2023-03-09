.class public final enum Ljavafx/animation/Animation$Status;
.super Ljava/lang/Enum;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/animation/Animation$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/animation/Animation$Status;

.field public static final enum PAUSED:Ljavafx/animation/Animation$Status;

.field public static final enum RUNNING:Ljavafx/animation/Animation$Status;

.field public static final enum STOPPED:Ljavafx/animation/Animation$Status;


# direct methods
.method private static synthetic $values()[Ljavafx/animation/Animation$Status;
    .registers 3

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/animation/Animation$Status;

    const/4 v1, 0x0

    sget-object v2, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 112
    new-instance v0, Ljavafx/animation/Animation$Status;

    const-string v1, "PAUSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavafx/animation/Animation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    .line 116
    new-instance v0, Ljavafx/animation/Animation$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljavafx/animation/Animation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    .line 120
    new-instance v0, Ljavafx/animation/Animation$Status;

    const-string v1, "STOPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljavafx/animation/Animation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    .line 108
    invoke-static {}, Ljavafx/animation/Animation$Status;->$values()[Ljavafx/animation/Animation$Status;

    move-result-object v0

    sput-object v0, Ljavafx/animation/Animation$Status;->$VALUES:[Ljavafx/animation/Animation$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/animation/Animation$Status;
    .registers 2

    .line 108
    const-class v0, Ljavafx/animation/Animation$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavafx/animation/Animation$Status;

    return-object v0
.end method

.method public static values()[Ljavafx/animation/Animation$Status;
    .registers 1

    .line 108
    sget-object v0, Ljavafx/animation/Animation$Status;->$VALUES:[Ljavafx/animation/Animation$Status;

    invoke-virtual {v0}, [Ljavafx/animation/Animation$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/animation/Animation$Status;

    return-object v0
.end method
