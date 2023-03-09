.class public final enum Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;
.super Ljava/lang/Enum;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/application/PlatformImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HighContrastScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

.field public static final enum HIGH_CONTRAST_1:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

.field public static final enum HIGH_CONTRAST_2:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

.field public static final enum HIGH_CONTRAST_BLACK:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

.field public static final enum HIGH_CONTRAST_WHITE:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;


# instance fields
.field private final themeKey:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;
    .registers 3

    .line 738
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_BLACK:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_WHITE:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_1:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_2:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 739
    new-instance v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    const-string v1, "HIGH_CONTRAST_BLACK"

    const/4 v2, 0x0

    const-string v3, "high.contrast.black.theme"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_BLACK:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    .line 740
    new-instance v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    const-string v1, "HIGH_CONTRAST_WHITE"

    const/4 v2, 0x1

    const-string v3, "high.contrast.white.theme"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_WHITE:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    .line 741
    new-instance v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    const-string v1, "HIGH_CONTRAST_1"

    const/4 v2, 0x2

    const-string v3, "high.contrast.1.theme"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_1:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    .line 742
    new-instance v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    const-string v1, "HIGH_CONTRAST_2"

    const/4 v2, 0x3

    const-string v3, "high.contrast.2.theme"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_2:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    .line 738
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->$values()[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->$VALUES:[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 745
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 746
    iput-object p3, p0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->themeKey:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public static fromThemeName(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 766
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    .line 774
    :goto_6
    return-object v0

    .line 769
    :cond_7
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->values()[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-ge v2, v4, :cond_2b

    aget-object v5, v3, v2

    .line 770
    invoke-virtual {v5}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->getThemeKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 771
    invoke-virtual {v5}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 769
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_2b
    move-object v0, v1

    .line 774
    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;
    .registers 2

    .line 738
    const-class v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;
    .registers 1

    .line 738
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->$VALUES:[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    invoke-virtual {v0}, [Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    return-object v0
.end method


# virtual methods
.method public getThemeKey()Ljava/lang/String;
    .registers 2

    .line 750
    iget-object v0, p0, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->themeKey:Ljava/lang/String;

    return-object v0
.end method
