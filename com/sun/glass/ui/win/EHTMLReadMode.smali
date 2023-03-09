.class final enum Lcom/sun/glass/ui/win/EHTMLReadMode;
.super Ljava/lang/Enum;
.source "WinHTMLCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/glass/ui/win/EHTMLReadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/glass/ui/win/EHTMLReadMode;

.field public static final enum HTML_READ_ALL:Lcom/sun/glass/ui/win/EHTMLReadMode;

.field public static final enum HTML_READ_FRAGMENT:Lcom/sun/glass/ui/win/EHTMLReadMode;

.field public static final enum HTML_READ_SELECTION:Lcom/sun/glass/ui/win/EHTMLReadMode;


# direct methods
.method private static synthetic $values()[Lcom/sun/glass/ui/win/EHTMLReadMode;
    .registers 3

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/glass/ui/win/EHTMLReadMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/glass/ui/win/EHTMLReadMode;->HTML_READ_ALL:Lcom/sun/glass/ui/win/EHTMLReadMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/glass/ui/win/EHTMLReadMode;->HTML_READ_FRAGMENT:Lcom/sun/glass/ui/win/EHTMLReadMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/glass/ui/win/EHTMLReadMode;->HTML_READ_SELECTION:Lcom/sun/glass/ui/win/EHTMLReadMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 80
    new-instance v0, Lcom/sun/glass/ui/win/EHTMLReadMode;

    const-string v1, "HTML_READ_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/glass/ui/win/EHTMLReadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/win/EHTMLReadMode;->HTML_READ_ALL:Lcom/sun/glass/ui/win/EHTMLReadMode;

    .line 81
    new-instance v0, Lcom/sun/glass/ui/win/EHTMLReadMode;

    const-string v1, "HTML_READ_FRAGMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sun/glass/ui/win/EHTMLReadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/win/EHTMLReadMode;->HTML_READ_FRAGMENT:Lcom/sun/glass/ui/win/EHTMLReadMode;

    .line 82
    new-instance v0, Lcom/sun/glass/ui/win/EHTMLReadMode;

    const-string v1, "HTML_READ_SELECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sun/glass/ui/win/EHTMLReadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/win/EHTMLReadMode;->HTML_READ_SELECTION:Lcom/sun/glass/ui/win/EHTMLReadMode;

    .line 79
    invoke-static {}, Lcom/sun/glass/ui/win/EHTMLReadMode;->$values()[Lcom/sun/glass/ui/win/EHTMLReadMode;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/win/EHTMLReadMode;->$VALUES:[Lcom/sun/glass/ui/win/EHTMLReadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/glass/ui/win/EHTMLReadMode;
    .registers 2

    .line 79
    const-class v0, Lcom/sun/glass/ui/win/EHTMLReadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/EHTMLReadMode;

    return-object v0
.end method

.method public static values()[Lcom/sun/glass/ui/win/EHTMLReadMode;
    .registers 1

    .line 79
    sget-object v0, Lcom/sun/glass/ui/win/EHTMLReadMode;->$VALUES:[Lcom/sun/glass/ui/win/EHTMLReadMode;

    invoke-virtual {v0}, [Lcom/sun/glass/ui/win/EHTMLReadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/glass/ui/win/EHTMLReadMode;

    return-object v0
.end method
