.class synthetic Lcom/sun/javafx/application/PlatformImpl$2;
.super Ljava/lang/Object;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/application/PlatformImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$application$PlatformImpl$HighContrastScheme:[I

.field static final synthetic $SwitchMap$javafx$application$ConditionalFeature:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 955
    invoke-static {}, Ljavafx/application/ConditionalFeature;->values()[Ljavafx/application/ConditionalFeature;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    :try_start_9
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->GRAPHICS:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_ec

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->CONTROLS:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e9

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->MEDIA:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e6

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->WEB:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_e3

    :goto_35
    :try_start_35
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->SWT:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_e0

    :goto_40
    :try_start_40
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->SWING:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_dd

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->FXML:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_da

    :goto_56
    :try_start_56
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_d8

    :goto_62
    :try_start_62
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_d6

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_d4

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->INPUT_MULTITOUCH:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_d2

    :goto_86
    :try_start_86
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v1, Ljavafx/application/ConditionalFeature;->INPUT_POINTER:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v1}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_d0

    .line 826
    :goto_92
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->values()[Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$com$sun$javafx$application$PlatformImpl$HighContrastScheme:[I

    :try_start_9b
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$com$sun$javafx$application$PlatformImpl$HighContrastScheme:[I

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_WHITE:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    invoke-virtual {v1}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a6} :catch_ce

    :goto_a6
    :try_start_a6
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$com$sun$javafx$application$PlatformImpl$HighContrastScheme:[I

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_BLACK:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    invoke-virtual {v1}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_b1} :catch_cc

    :goto_b1
    :try_start_b1
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$com$sun$javafx$application$PlatformImpl$HighContrastScheme:[I

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_1:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    invoke-virtual {v1}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bc} :catch_ca

    :goto_bc
    :try_start_bc
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$com$sun$javafx$application$PlatformImpl$HighContrastScheme:[I

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->HIGH_CONTRAST_2:Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;

    invoke-virtual {v1}, Lcom/sun/javafx/application/PlatformImpl$HighContrastScheme;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c7} :catch_c8

    :goto_c7
    return-void

    :catch_c8
    move-exception v0

    goto :goto_c7

    :catch_ca
    move-exception v0

    goto :goto_bc

    :catch_cc
    move-exception v0

    goto :goto_b1

    :catch_ce
    move-exception v0

    goto :goto_a6

    .line 955
    :catch_d0
    move-exception v0

    goto :goto_92

    :catch_d2
    move-exception v0

    goto :goto_86

    :catch_d4
    move-exception v0

    goto :goto_7a

    :catch_d6
    move-exception v0

    goto :goto_6e

    :catch_d8
    move-exception v0

    goto :goto_62

    :catch_da
    move-exception v0

    goto/16 :goto_56

    :catch_dd
    move-exception v0

    goto/16 :goto_4b

    :catch_e0
    move-exception v0

    goto/16 :goto_40

    :catch_e3
    move-exception v0

    goto/16 :goto_35

    :catch_e6
    move-exception v0

    goto/16 :goto_2a

    :catch_e9
    move-exception v0

    goto/16 :goto_1f

    :catch_ec
    move-exception v0

    goto/16 :goto_14
.end method
