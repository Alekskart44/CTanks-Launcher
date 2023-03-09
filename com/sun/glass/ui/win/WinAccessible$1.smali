.class synthetic Lcom/sun/glass/ui/win/WinAccessible$1;
.super Ljava/lang/Object;
.source "WinAccessible.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/win/WinAccessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$AccessibleAttribute:[I

.field static final synthetic $SwitchMap$javafx$scene$AccessibleRole:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 421
    invoke-static {}, Ljavafx/scene/AccessibleRole;->values()[Ljavafx/scene/AccessibleRole;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    :try_start_9
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TABLE_ROW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_340

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TABLE_CELL:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_33d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->LIST_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_33a

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TAB_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_337

    :goto_35
    :try_start_35
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->PAGE_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_334

    :goto_40
    :try_start_40
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_331

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_TABLE_ROW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_32e

    :goto_56
    :try_start_56
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_TABLE_CELL:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_32b

    :goto_62
    :try_start_62
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->CONTEXT_MENU:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_328

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->RADIO_MENU_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_325

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->CHECK_MENU_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_322

    :goto_86
    :try_start_86
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->MENU:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_31f

    :goto_92
    :try_start_92
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->MENU_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_31c

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_319

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->MENU_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_316

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TOGGLE_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_313

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->INCREMENT_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_310

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->DECREMENT_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_30d

    :goto_da
    :try_start_da
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->SPLIT_MENU_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_30a

    :goto_e6
    :try_start_e6
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->PAGINATION:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_307

    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TAB_PANE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_304

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->SLIDER:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_301

    :goto_10a
    :try_start_10a
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->PARENT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_2fe

    :goto_116
    :try_start_116
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_2fb

    :goto_122
    :try_start_122
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TEXT_FIELD:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_2f8

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->PASSWORD_FIELD:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_2f5

    :goto_13a
    :try_start_13a
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TEXT_AREA:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_2f2

    :goto_146
    :try_start_146
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_TABLE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_2ef

    :goto_152
    :try_start_152
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TABLE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_2ec

    :goto_15e
    :try_start_15e
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->LIST_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_2e9

    :goto_16a
    :try_start_16a
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->IMAGE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_2e6

    :goto_176
    :try_start_176
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->RADIO_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_2e3

    :goto_182
    :try_start_182
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->CHECK_BOX:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18e} :catch_2e0

    :goto_18e
    :try_start_18e
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->COMBO_BOX:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_19a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_19a} :catch_2dd

    :goto_19a
    :try_start_19a
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->HYPERLINK:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19a .. :try_end_1a6} :catch_2da

    :goto_1a6
    :try_start_1a6
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b2} :catch_2d7

    :goto_1b2
    :try_start_1b2
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->PROGRESS_INDICATOR:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_2d4

    :goto_1be
    :try_start_1be
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TOOL_BAR:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1ca} :catch_2d1

    :goto_1ca
    :try_start_1ca
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->TITLED_PANE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d6} :catch_2ce

    :goto_1d6
    :try_start_1d6
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->SCROLL_PANE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d6 .. :try_end_1e2} :catch_2cb

    :goto_1e2
    :try_start_1e2
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->SCROLL_BAR:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ee} :catch_2c8

    :goto_1ee
    :try_start_1ee
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->THUMB:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ee .. :try_end_1fa} :catch_2c5

    :goto_1fa
    :try_start_1fa
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->MENU_BAR:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_206
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_206} :catch_2c2

    :goto_206
    :try_start_206
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->DATE_PICKER:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_2bf

    :goto_212
    :try_start_212
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    sget-object v1, Ljavafx/scene/AccessibleRole;->SPINNER:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_21e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21e} :catch_2bc

    .line 263
    :goto_21e
    invoke-static {}, Ljavafx/scene/AccessibleAttribute;->values()[Ljavafx/scene/AccessibleAttribute;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    :try_start_227
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_232
    .catch Ljava/lang/NoSuchFieldError; {:try_start_227 .. :try_end_232} :catch_2b9

    :goto_232
    :try_start_232
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_23d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_232 .. :try_end_23d} :catch_2b7

    :goto_23d
    :try_start_23d
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->INDETERMINATE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_248
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23d .. :try_end_248} :catch_2b5

    :goto_248
    :try_start_248
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->SELECTED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_253
    .catch Ljava/lang/NoSuchFieldError; {:try_start_248 .. :try_end_253} :catch_2b3

    :goto_253
    :try_start_253
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->FOCUSED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_25e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_253 .. :try_end_25e} :catch_2b1

    :goto_25e
    :try_start_25e
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->VALUE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25e .. :try_end_269} :catch_2af

    :goto_269
    :try_start_269
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->SELECTION_START:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_274
    .catch Ljava/lang/NoSuchFieldError; {:try_start_269 .. :try_end_274} :catch_2ad

    :goto_274
    :try_start_274
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->SELECTION_END:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_280
    .catch Ljava/lang/NoSuchFieldError; {:try_start_274 .. :try_end_280} :catch_2ab

    :goto_280
    :try_start_280
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_28c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_280 .. :try_end_28c} :catch_2a9

    :goto_28c
    :try_start_28c
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_298
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28c .. :try_end_298} :catch_2a7

    :goto_298
    :try_start_298
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_298 .. :try_end_2a4} :catch_2a5

    :goto_2a4
    return-void

    :catch_2a5
    move-exception v0

    goto :goto_2a4

    :catch_2a7
    move-exception v0

    goto :goto_298

    :catch_2a9
    move-exception v0

    goto :goto_28c

    :catch_2ab
    move-exception v0

    goto :goto_280

    :catch_2ad
    move-exception v0

    goto :goto_274

    :catch_2af
    move-exception v0

    goto :goto_269

    :catch_2b1
    move-exception v0

    goto :goto_25e

    :catch_2b3
    move-exception v0

    goto :goto_253

    :catch_2b5
    move-exception v0

    goto :goto_248

    :catch_2b7
    move-exception v0

    goto :goto_23d

    :catch_2b9
    move-exception v0

    goto/16 :goto_232

    .line 421
    :catch_2bc
    move-exception v0

    goto/16 :goto_21e

    :catch_2bf
    move-exception v0

    goto/16 :goto_212

    :catch_2c2
    move-exception v0

    goto/16 :goto_206

    :catch_2c5
    move-exception v0

    goto/16 :goto_1fa

    :catch_2c8
    move-exception v0

    goto/16 :goto_1ee

    :catch_2cb
    move-exception v0

    goto/16 :goto_1e2

    :catch_2ce
    move-exception v0

    goto/16 :goto_1d6

    :catch_2d1
    move-exception v0

    goto/16 :goto_1ca

    :catch_2d4
    move-exception v0

    goto/16 :goto_1be

    :catch_2d7
    move-exception v0

    goto/16 :goto_1b2

    :catch_2da
    move-exception v0

    goto/16 :goto_1a6

    :catch_2dd
    move-exception v0

    goto/16 :goto_19a

    :catch_2e0
    move-exception v0

    goto/16 :goto_18e

    :catch_2e3
    move-exception v0

    goto/16 :goto_182

    :catch_2e6
    move-exception v0

    goto/16 :goto_176

    :catch_2e9
    move-exception v0

    goto/16 :goto_16a

    :catch_2ec
    move-exception v0

    goto/16 :goto_15e

    :catch_2ef
    move-exception v0

    goto/16 :goto_152

    :catch_2f2
    move-exception v0

    goto/16 :goto_146

    :catch_2f5
    move-exception v0

    goto/16 :goto_13a

    :catch_2f8
    move-exception v0

    goto/16 :goto_12e

    :catch_2fb
    move-exception v0

    goto/16 :goto_122

    :catch_2fe
    move-exception v0

    goto/16 :goto_116

    :catch_301
    move-exception v0

    goto/16 :goto_10a

    :catch_304
    move-exception v0

    goto/16 :goto_fe

    :catch_307
    move-exception v0

    goto/16 :goto_f2

    :catch_30a
    move-exception v0

    goto/16 :goto_e6

    :catch_30d
    move-exception v0

    goto/16 :goto_da

    :catch_310
    move-exception v0

    goto/16 :goto_ce

    :catch_313
    move-exception v0

    goto/16 :goto_c2

    :catch_316
    move-exception v0

    goto/16 :goto_b6

    :catch_319
    move-exception v0

    goto/16 :goto_aa

    :catch_31c
    move-exception v0

    goto/16 :goto_9e

    :catch_31f
    move-exception v0

    goto/16 :goto_92

    :catch_322
    move-exception v0

    goto/16 :goto_86

    :catch_325
    move-exception v0

    goto/16 :goto_7a

    :catch_328
    move-exception v0

    goto/16 :goto_6e

    :catch_32b
    move-exception v0

    goto/16 :goto_62

    :catch_32e
    move-exception v0

    goto/16 :goto_56

    :catch_331
    move-exception v0

    goto/16 :goto_4b

    :catch_334
    move-exception v0

    goto/16 :goto_40

    :catch_337
    move-exception v0

    goto/16 :goto_35

    :catch_33a
    move-exception v0

    goto/16 :goto_2a

    :catch_33d
    move-exception v0

    goto/16 :goto_1f

    :catch_340
    move-exception v0

    goto/16 :goto_14
.end method
