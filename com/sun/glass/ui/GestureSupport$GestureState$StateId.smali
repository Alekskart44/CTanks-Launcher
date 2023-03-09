.class final enum Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
.super Ljava/lang/Enum;
.source "GestureSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/GestureSupport$GestureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StateId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

.field public static final enum Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

.field public static final enum Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

.field public static final enum Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;


# direct methods
.method private static synthetic $values()[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    .registers 3

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    const-string v1, "Running"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    const-string v1, "Inertia"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    .line 33
    invoke-static {}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->$values()[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->$VALUES:[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    .registers 2

    .line 33
    const-class v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    return-object v0
.end method

.method public static values()[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    .registers 1

    .line 33
    sget-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->$VALUES:[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    invoke-virtual {v0}, [Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    return-object v0
.end method
