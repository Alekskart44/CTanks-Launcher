.class final Lcom/sun/glass/ui/win/WinAccessible;
.super Lcom/sun/glass/ui/Accessible;
.source "WinAccessible.java"


# static fields
.field private static final ExpandCollapseState_Collapsed:I = 0x0

.field private static final ExpandCollapseState_Expanded:I = 0x1

.field private static final ExpandCollapseState_LeafNode:I = 0x3

.field private static final ExpandCollapseState_PartiallyExpanded:I = 0x2

.field private static final NavigateDirection_FirstChild:I = 0x3

.field private static final NavigateDirection_LastChild:I = 0x4

.field private static final NavigateDirection_NextSibling:I = 0x1

.field private static final NavigateDirection_Parent:I = 0x0

.field private static final NavigateDirection_PreviousSibling:I = 0x2

.field private static final RowOrColumnMajor_ColumnMajor:I = 0x1

.field private static final RowOrColumnMajor_Indeterminate:I = 0x2

.field private static final RowOrColumnMajor_RowMajor:I = 0x0

.field private static final ScrollAmount_LargeDecrement:I = 0x0

.field private static final ScrollAmount_LargeIncrement:I = 0x3

.field private static final ScrollAmount_NoAmount:I = 0x2

.field private static final ScrollAmount_SmallDecrement:I = 0x1

.field private static final ScrollAmount_SmallIncrement:I = 0x4

.field private static final SupportedTextSelection_Multiple:I = 0x2

.field private static final SupportedTextSelection_None:I = 0x0

.field private static final SupportedTextSelection_Single:I = 0x1

.field private static final ToggleState_Indeterminate:I = 0x2

.field private static final ToggleState_Off:I = 0x0

.field private static final ToggleState_On:I = 0x1

.field private static final UIA_AcceleratorKeyPropertyId:I = 0x7536

.field private static final UIA_AccessKeyPropertyId:I = 0x7537

.field private static final UIA_AriaRolePropertyId:I = 0x7595

.field private static final UIA_AutomationFocusChangedEventId:I = 0x4e25

.field private static final UIA_AutomationIdPropertyId:I = 0x753b

.field private static final UIA_AutomationPropertyChangedEventId:I = 0x4e24

.field private static final UIA_BoundingRectanglePropertyId:I = 0x7531

.field private static final UIA_ButtonControlTypeId:I = 0xc350

.field private static final UIA_CheckBoxControlTypeId:I = 0xc352

.field private static final UIA_ClassNamePropertyId:I = 0x753c

.field private static final UIA_ClickablePointPropertyId:I = 0x753e

.field private static final UIA_ComboBoxControlTypeId:I = 0xc353

.field private static final UIA_ControlTypePropertyId:I = 0x7533

.field private static final UIA_CulturePropertyId:I = 0x753f

.field private static final UIA_DataGridControlTypeId:I = 0xc36c

.field private static final UIA_DataItemControlTypeId:I = 0xc36d

.field private static final UIA_EditControlTypeId:I = 0xc354

.field private static final UIA_ExpandCollapseExpandCollapseStatePropertyId:I = 0x7576

.field private static final UIA_ExpandCollapsePatternId:I = 0x2715

.field private static final UIA_FrameworkIdPropertyId:I = 0x7548

.field private static final UIA_GridItemPatternId:I = 0x2717

.field private static final UIA_GridPatternId:I = 0x2716

.field private static final UIA_GroupControlTypeId:I = 0xc36a

.field private static final UIA_HasKeyboardFocusPropertyId:I = 0x7538

.field private static final UIA_HelpTextPropertyId:I = 0x753d

.field private static final UIA_HyperlinkControlTypeId:I = 0xc355

.field private static final UIA_ImageControlTypeId:I = 0xc356

.field private static final UIA_InvokePatternId:I = 0x2710

.field private static final UIA_IsContentElementPropertyId:I = 0x7541

.field private static final UIA_IsControlElementPropertyId:I = 0x7540

.field private static final UIA_IsEnabledPropertyId:I = 0x753a

.field private static final UIA_IsKeyboardFocusablePropertyId:I = 0x7539

.field private static final UIA_IsOffscreenPropertyId:I = 0x7546

.field private static final UIA_IsPasswordPropertyId:I = 0x7543

.field private static final UIA_ItemContainerPatternId:I = 0x2723

.field private static final UIA_ItemTypePropertyId:I = 0x7545

.field private static final UIA_LabeledByPropertyId:I = 0x7542

.field private static final UIA_ListControlTypeId:I = 0xc358

.field private static final UIA_ListItemControlTypeId:I = 0xc357

.field private static final UIA_LocalizedControlTypePropertyId:I = 0x7534

.field private static final UIA_MenuBarControlTypeId:I = 0xc35a

.field private static final UIA_MenuClosedEventId:I = 0x4e27

.field private static final UIA_MenuControlTypeId:I = 0xc359

.field private static final UIA_MenuItemControlTypeId:I = 0xc35b

.field private static final UIA_MenuModeEndEventId:I = 0x4e33

.field private static final UIA_MenuModeStartEventId:I = 0x4e32

.field private static final UIA_MenuOpenedEventId:I = 0x4e23

.field private static final UIA_NamePropertyId:I = 0x7535

.field private static final UIA_NativeWindowHandlePropertyId:I = 0x7544

.field private static final UIA_OrientationPropertyId:I = 0x7547

.field private static final UIA_PaneControlTypeId:I = 0xc371

.field private static final UIA_ProcessIdPropertyId:I = 0x7532

.field private static final UIA_ProgressBarControlTypeId:I = 0xc35c

.field private static final UIA_ProviderDescriptionPropertyId:I = 0x759b

.field private static final UIA_RadioButtonControlTypeId:I = 0xc35d

.field private static final UIA_RangeValuePatternId:I = 0x2713

.field private static final UIA_RangeValueValuePropertyId:I = 0x755f

.field private static final UIA_ScrollBarControlTypeId:I = 0xc35e

.field private static final UIA_ScrollItemPatternId:I = 0x2721

.field private static final UIA_ScrollPatternId:I = 0x2714

.field private static final UIA_ScrollPatternNoScroll:I = -0x1

.field private static final UIA_SelectionItemPatternId:I = 0x271a

.field private static final UIA_SelectionItem_ElementRemovedFromSelectionEventId:I = 0x4e2b

.field private static final UIA_SelectionItem_ElementSelectedEventId:I = 0x4e2c

.field private static final UIA_SelectionPatternId:I = 0x2711

.field private static final UIA_SliderControlTypeId:I = 0xc35f

.field private static final UIA_SpinnerControlTypeId:I = 0xc360

.field private static final UIA_SplitButtonControlTypeId:I = 0xc36f

.field private static final UIA_TabControlTypeId:I = 0xc362

.field private static final UIA_TabItemControlTypeId:I = 0xc363

.field private static final UIA_TableControlTypeId:I = 0xc374

.field private static final UIA_TableItemPatternId:I = 0x271d

.field private static final UIA_TablePatternId:I = 0x271c

.field private static final UIA_TextControlTypeId:I = 0xc364

.field private static final UIA_TextPatternId:I = 0x271e

.field private static final UIA_Text_TextChangedEventId:I = 0x4e2f

.field private static final UIA_Text_TextSelectionChangedEventId:I = 0x4e2e

.field private static final UIA_ThumbControlTypeId:I = 0xc36b

.field private static final UIA_TogglePatternId:I = 0x271f

.field private static final UIA_ToggleToggleStatePropertyId:I = 0x7586

.field private static final UIA_ToolBarControlTypeId:I = 0xc365

.field private static final UIA_TransformPatternId:I = 0x2720

.field private static final UIA_TreeControlTypeId:I = 0xc367

.field private static final UIA_TreeItemControlTypeId:I = 0xc368

.field private static final UIA_ValuePatternId:I = 0x2712

.field private static final UIA_ValueValuePropertyId:I = 0x755d

.field private static final UIA_WindowControlTypeId:I = 0xc370

.field private static final UiaAppendRuntimeId:I = 0x3

.field private static idCount:I


# instance fields
.field private documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

.field private id:I

.field private lastIndex:I

.field private peer:J

.field private selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    invoke-static {}, Lcom/sun/glass/ui/win/WinAccessible;->_initIDs()V

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/sun/glass/ui/win/WinAccessible;->idCount:I

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .line 233
    invoke-direct {p0}, Lcom/sun/glass/ui/Accessible;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    .line 234
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->_createGlassAccessible()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    .line 235
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 236
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not create platform accessible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1c
    sget v0, Lcom/sun/glass/ui/win/WinAccessible;->idCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sun/glass/ui/win/WinAccessible;->idCount:I

    iput v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->id:I

    .line 239
    return-void
.end method

.method private AddToSelection()V
    .registers 3

    .line 1318
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1320
    :goto_6
    return-void

    .line 1319
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->changeSelection(ZZ)V

    goto :goto_6
.end method

.method private AdviseEventAdded(IJ)V
    .registers 4

    .line 1103
    return-void
.end method

.method private AdviseEventRemoved(IJ)V
    .registers 4

    .line 1107
    return-void
.end method

.method private Collapse()V
    .registers 4

    const/4 v2, 0x0

    .line 1511
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1526
    :cond_7
    :goto_7
    return-void

    .line 1512
    :cond_8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1513
    sget-object v1, Ljavafx/scene/AccessibleRole;->TOOL_BAR:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_2e

    .line 1514
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->OVERFLOW_BUTTON:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1515
    if-eqz v0, :cond_7

    .line 1516
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v1, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1520
    :cond_2e
    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_TABLE_CELL:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_40

    .line 1521
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getRow()Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    .line 1522
    if-eqz v0, :cond_7

    sget-object v1, Ljavafx/scene/AccessibleAction;->COLLAPSE:Ljavafx/scene/AccessibleAction;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1525
    :cond_40
    sget-object v0, Ljavafx/scene/AccessibleAction;->COLLAPSE:Ljavafx/scene/AccessibleAction;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private ElementProviderFromPoint(DD)J
    .registers 10

    .line 1081
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    .line 1083
    :goto_8
    return-wide v0

    .line 1082
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->NODE_AT_POINT:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljavafx/geometry/Point2D;

    invoke-direct {v3, p1, p2, p3, p4}, Ljavafx/geometry/Point2D;-><init>(DD)V

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1083
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    goto :goto_8
.end method

.method private Expand()V
    .registers 4

    const/4 v2, 0x0

    .line 1529
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1544
    :cond_7
    :goto_7
    return-void

    .line 1530
    :cond_8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1531
    sget-object v1, Ljavafx/scene/AccessibleRole;->TOOL_BAR:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_2e

    .line 1532
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->OVERFLOW_BUTTON:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1533
    if-eqz v0, :cond_7

    .line 1534
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v1, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1538
    :cond_2e
    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_TABLE_CELL:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_40

    .line 1539
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getRow()Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    .line 1540
    if-eqz v0, :cond_7

    sget-object v1, Ljavafx/scene/AccessibleAction;->EXPAND:Ljavafx/scene/AccessibleAction;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1543
    :cond_40
    sget-object v0, Ljavafx/scene/AccessibleAction;->EXPAND:Ljavafx/scene/AccessibleAction;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private GetColumnHeaderItems()[J
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1474
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 1481
    :goto_a
    return-object v0

    .line 1475
    :cond_b
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->COLUMN_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1476
    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_a

    .line 1477
    :cond_19
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    .line 1478
    if-nez v2, :cond_21

    move-object v0, v1

    goto :goto_a

    .line 1479
    :cond_21
    sget-object v3, Ljavafx/scene/AccessibleAttribute;->COLUMN_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1480
    if-nez v0, :cond_31

    move-object v0, v1

    goto :goto_a

    .line 1481
    :cond_31
    new-array v1, v6, [J

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v2

    aput-wide v2, v1, v5

    move-object v0, v1

    goto :goto_a
.end method

.method private GetColumnHeaders()[J
    .registers 3

    const/4 v1, 0x0

    .line 1454
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1456
    :cond_7
    return-object v1
.end method

.method private GetEmbeddedFragmentRoots()[J
    .registers 3

    const/4 v1, 0x0

    .line 905
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 906
    :cond_7
    return-object v1
.end method

.method private GetFocus()J
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1087
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v0, v2

    .line 1092
    :goto_a
    return-wide v0

    .line 1088
    :cond_b
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1089
    if-nez v0, :cond_19

    move-wide v0, v2

    goto :goto_a

    .line 1090
    :cond_19
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    .line 1091
    if-eqz v1, :cond_2e

    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    goto :goto_a

    .line 1092
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    goto :goto_a
.end method

.method private GetItem(II)J
    .registers 7

    .line 1403
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    .line 1405
    :goto_8
    return-wide v0

    .line 1404
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->CELL_AT_ROW_COLUMN:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1405
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    goto :goto_8
.end method

.method private GetPatternProvider(I)J
    .registers 9

    const/16 v6, 0x2711

    const/16 v5, 0x2715

    const/16 v4, 0x271a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/16 v0, 0x0

    .line 677
    :goto_10
    return-wide v0

    .line 567
    :cond_11
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 569
    sget-object v3, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_ec

    .line 677
    :cond_26
    :goto_26
    :pswitch_26  #0x7, 0x9, 0x17, 0x18, 0x1a, 0x1f
    if-eqz v1, :cond_e8

    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v0

    goto :goto_10

    .line 572
    :pswitch_2d  #0xc, 0x13
    const/16 v0, 0x2710

    if-eq p1, v0, :cond_33

    if-ne p1, v5, :cond_36

    :cond_33
    move v0, v2

    :goto_34
    move v1, v0

    .line 574
    goto :goto_26

    :cond_36
    move v0, v1

    .line 572
    goto :goto_34

    .line 577
    :pswitch_38  #0xa, 0xb
    const/16 v0, 0x2710

    if-eq p1, v0, :cond_40

    const/16 v0, 0x271f

    if-ne p1, v0, :cond_26

    :cond_40
    move v1, v2

    goto :goto_26

    .line 586
    :pswitch_42  #0xd, 0xe, 0xf, 0x11, 0x12, 0x23
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_48

    :goto_46
    move v1, v2

    .line 587
    goto :goto_26

    :cond_48
    move v2, v1

    .line 586
    goto :goto_46

    .line 590
    :pswitch_4a  #0x4, 0x5
    if-ne p1, v4, :cond_4e

    :goto_4c
    move v1, v2

    .line 591
    goto :goto_26

    :cond_4e
    move v2, v1

    .line 590
    goto :goto_4c

    .line 594
    :pswitch_50  #0x14, 0x15
    if-ne p1, v6, :cond_54

    :goto_52
    move v1, v2

    .line 595
    goto :goto_26

    :cond_54
    move v2, v1

    .line 594
    goto :goto_52

    .line 597
    :pswitch_56  #0x28
    const/16 v0, 0x2714

    if-ne p1, v0, :cond_5c

    :goto_5a
    move v1, v2

    .line 598
    goto :goto_26

    :cond_5c
    move v2, v1

    .line 597
    goto :goto_5a

    .line 601
    :pswitch_5e  #0x1c, 0x1d
    if-eq p1, v6, :cond_6c

    const/16 v0, 0x2716

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x271c

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x2714

    if-ne p1, v0, :cond_26

    :cond_6c
    move v1, v2

    goto :goto_26

    .line 607
    :pswitch_6e  #0x8
    if-eq p1, v4, :cond_7e

    const/16 v0, 0x2717

    if-eq p1, v0, :cond_7e

    const/16 v0, 0x271d

    if-eq p1, v0, :cond_7e

    if-eq p1, v5, :cond_7e

    const/16 v0, 0x2721

    if-ne p1, v0, :cond_26

    :cond_7e
    move v1, v2

    goto :goto_26

    .line 614
    :pswitch_80  #0x2
    if-eq p1, v4, :cond_8e

    const/16 v0, 0x2717

    if-eq p1, v0, :cond_8e

    const/16 v0, 0x271d

    if-eq p1, v0, :cond_8e

    const/16 v0, 0x2721

    if-ne p1, v0, :cond_26

    :cond_8e
    move v1, v2

    goto :goto_26

    .line 620
    :pswitch_90  #0x24
    if-eq p1, v6, :cond_96

    const/16 v0, 0x2714

    if-ne p1, v0, :cond_26

    :cond_96
    move v1, v2

    goto :goto_26

    .line 624
    :pswitch_98  #0x6
    if-eq p1, v4, :cond_a0

    if-eq p1, v5, :cond_a0

    const/16 v0, 0x2721

    if-ne p1, v0, :cond_26

    :cond_a0
    move v1, v2

    goto :goto_26

    .line 629
    :pswitch_a2  #0x1e
    if-eq p1, v6, :cond_a8

    const/16 v0, 0x2714

    if-ne p1, v0, :cond_26

    :cond_a8
    move v1, v2

    goto/16 :goto_26

    .line 633
    :pswitch_ab  #0x3
    if-eq p1, v4, :cond_b1

    const/16 v0, 0x2721

    if-ne p1, v0, :cond_26

    :cond_b1
    move v1, v2

    goto/16 :goto_26

    .line 649
    :pswitch_b4  #0x19, 0x1b
    const/16 v0, 0x271e

    if-eq p1, v0, :cond_bc

    const/16 v0, 0x2712

    if-ne p1, v0, :cond_26

    :cond_bc
    move v1, v2

    goto/16 :goto_26

    .line 656
    :pswitch_bf  #0x20
    if-ne p1, v4, :cond_c4

    :goto_c1
    move v1, v2

    .line 657
    goto/16 :goto_26

    :cond_c4
    move v2, v1

    .line 656
    goto :goto_c1

    .line 660
    :pswitch_c6  #0x10, 0x21
    const/16 v0, 0x271f

    if-ne p1, v0, :cond_cd

    :goto_ca
    move v1, v2

    .line 661
    goto/16 :goto_26

    :cond_cd
    move v2, v1

    .line 660
    goto :goto_ca

    .line 664
    :pswitch_cf  #0x26, 0x27
    if-ne p1, v5, :cond_d4

    :goto_d1
    move v1, v2

    .line 665
    goto/16 :goto_26

    :cond_d4
    move v2, v1

    .line 664
    goto :goto_d1

    .line 667
    :pswitch_d6  #0x22
    if-eq p1, v5, :cond_dc

    const/16 v0, 0x2712

    if-ne p1, v0, :cond_26

    :cond_dc
    move v1, v2

    goto/16 :goto_26

    .line 673
    :pswitch_df  #0x16, 0x25, 0x29
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_e6

    :goto_e3
    move v1, v2

    .line 674
    goto/16 :goto_26

    :cond_e6
    move v2, v1

    .line 673
    goto :goto_e3

    .line 677
    :cond_e8
    const-wide/16 v0, 0x0

    goto/16 :goto_10

    .line 569
    :pswitch_data_ec
    .packed-switch 0x2
        :pswitch_80  #00000002
        :pswitch_ab  #00000003
        :pswitch_4a  #00000004
        :pswitch_4a  #00000005
        :pswitch_98  #00000006
        :pswitch_26  #00000007
        :pswitch_6e  #00000008
        :pswitch_26  #00000009
        :pswitch_38  #0000000a
        :pswitch_38  #0000000b
        :pswitch_2d  #0000000c
        :pswitch_42  #0000000d
        :pswitch_42  #0000000e
        :pswitch_42  #0000000f
        :pswitch_c6  #00000010
        :pswitch_42  #00000011
        :pswitch_42  #00000012
        :pswitch_2d  #00000013
        :pswitch_50  #00000014
        :pswitch_50  #00000015
        :pswitch_df  #00000016
        :pswitch_26  #00000017
        :pswitch_26  #00000018
        :pswitch_b4  #00000019
        :pswitch_26  #0000001a
        :pswitch_b4  #0000001b
        :pswitch_5e  #0000001c
        :pswitch_5e  #0000001d
        :pswitch_a2  #0000001e
        :pswitch_26  #0000001f
        :pswitch_bf  #00000020
        :pswitch_c6  #00000021
        :pswitch_d6  #00000022
        :pswitch_42  #00000023
        :pswitch_90  #00000024
        :pswitch_df  #00000025
        :pswitch_cf  #00000026
        :pswitch_cf  #00000027
        :pswitch_56  #00000028
        :pswitch_df  #00000029
    .end packed-switch
.end method

.method private GetPropertyValue(I)Lcom/sun/glass/ui/win/WinVariant;
    .registers 11

    const/4 v4, 0x0

    const/16 v8, 0xb

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 876
    :goto_d
    return-object v4

    .line 693
    :cond_e
    sparse-switch p1, :sswitch_data_21c

    :cond_11
    move-object v0, v4

    :goto_12
    move-object v4, v0

    .line 876
    goto :goto_d

    .line 695
    :sswitch_14
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getControlType()I

    move-result v1

    .line 696
    if-eqz v1, :cond_11

    .line 697
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 698
    const/4 v2, 0x3

    iput-short v2, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 699
    iput v1, v0, Lcom/sun/glass/ui/win/WinVariant;->lVal:I

    goto :goto_12

    .line 704
    :sswitch_25
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->MNEMONIC:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 705
    if-eqz v0, :cond_11

    .line 706
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 707
    iput-short v5, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 708
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-custom {v0}, call_site_1401("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "Alt+\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    move-object v0, v1

    goto :goto_12

    .line 713
    :sswitch_44
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ACCELERATOR:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/input/KeyCombination;

    .line 714
    if-eqz v0, :cond_11

    .line 715
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 716
    iput-short v5, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 720
    invoke-virtual {v0}, Ljavafx/scene/input/KeyCombination;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Shortcut"

    const-string v3, "Ctrl"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    move-object v0, v1

    goto :goto_12

    .line 727
    :sswitch_67
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 728
    if-nez v0, :cond_218

    sget-object v0, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    move-object v1, v0

    .line 729
    :goto_76
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v3

    aget v0, v0, v3

    sparse-switch v0, :sswitch_data_256

    .line 753
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 756
    :goto_8c
    if-eqz v1, :cond_94

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_af

    .line 757
    :cond_94
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LABELED_BY:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 758
    if-eqz v0, :cond_af

    .line 759
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 762
    :cond_af
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_da

    move-object v0, v4

    .line 769
    goto/16 :goto_12

    :sswitch_ba
    move-object v1, v4

    .line 739
    goto :goto_8c

    .line 742
    :sswitch_bc
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_215

    .line 744
    :cond_ce
    sget-object v0, Ljavafx/scene/AccessibleRole;->INCREMENT_BUTTON:Ljavafx/scene/AccessibleRole;

    if-ne v1, v0, :cond_d6

    .line 745
    const-string v0, "increment"

    move-object v1, v0

    goto :goto_8c

    .line 747
    :cond_d6
    const-string v0, "decrement"

    move-object v1, v0

    goto :goto_8c

    .line 771
    :cond_da
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 772
    iput-short v5, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 773
    iput-object v1, v0, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    goto/16 :goto_12

    .line 777
    :sswitch_e5
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->HELP:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 778
    if-eqz v0, :cond_11

    .line 779
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 780
    iput-short v5, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 781
    iput-object v0, v1, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_12

    .line 786
    :sswitch_fd
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE_DESCRIPTION:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 787
    if-nez v0, :cond_122

    .line 788
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/AccessibleRole;

    .line 789
    if-nez v1, :cond_117

    sget-object v1, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    .line 790
    :cond_117
    sget-object v2, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v1}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v1

    aget v1, v2, v1

    sparse-switch v1, :sswitch_data_26c

    :cond_122
    move-object v1, v0

    .line 796
    :goto_123
    if-eqz v1, :cond_11

    .line 797
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 798
    iput-short v5, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 799
    iput-object v1, v0, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    goto/16 :goto_12

    .line 791
    :sswitch_130
    const-string v0, "title pane"

    move-object v1, v0

    goto :goto_123

    .line 792
    :sswitch_134
    const-string v0, "page"

    move-object v1, v0

    goto :goto_123

    .line 804
    :sswitch_138
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FOCUSED:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 812
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 813
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->SCENE:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Scene;

    .line 814
    if-eqz v1, :cond_184

    .line 815
    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    .line 816
    if-eqz v1, :cond_184

    .line 817
    sget-object v4, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    .line 818
    if-eqz v1, :cond_184

    .line 819
    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    .line 820
    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_184

    .line 821
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 827
    :cond_184
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 828
    iput-short v8, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 829
    if-eqz v0, :cond_196

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_191
    iput-boolean v0, v1, Lcom/sun/glass/ui/win/WinVariant;->boolVal:Z

    move-object v0, v1

    .line 830
    goto/16 :goto_12

    :cond_196
    move v0, v2

    .line 829
    goto :goto_191

    .line 835
    :sswitch_198
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 836
    iput-short v8, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 837
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getView()Lcom/sun/glass/ui/View;

    move-result-object v1

    if-nez v1, :cond_1ab

    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isIgnored()Z

    move-result v1

    if-nez v1, :cond_1ac

    :cond_1ab
    move v2, v3

    :cond_1ac
    iput-boolean v2, v0, Lcom/sun/glass/ui/win/WinVariant;->boolVal:Z

    goto/16 :goto_12

    .line 841
    :sswitch_1b0
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->DISABLED:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 842
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 843
    iput-short v8, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 844
    if-eqz v0, :cond_1c9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1ce

    :cond_1c9
    :goto_1c9
    iput-boolean v3, v1, Lcom/sun/glass/ui/win/WinVariant;->boolVal:Z

    move-object v0, v1

    .line 845
    goto/16 :goto_12

    :cond_1ce
    move v3, v2

    .line 844
    goto :goto_1c9

    .line 848
    :sswitch_1d0
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 849
    iput-short v8, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 850
    iput-boolean v3, v0, Lcom/sun/glass/ui/win/WinVariant;->boolVal:Z

    goto/16 :goto_12

    .line 854
    :sswitch_1db
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 855
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 856
    iput-short v8, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 857
    sget-object v4, Ljavafx/scene/AccessibleRole;->PASSWORD_FIELD:Ljavafx/scene/AccessibleRole;

    if-ne v0, v4, :cond_1f5

    :goto_1f0
    iput-boolean v3, v1, Lcom/sun/glass/ui/win/WinVariant;->boolVal:Z

    move-object v0, v1

    .line 858
    goto/16 :goto_12

    :cond_1f5
    move v3, v2

    .line 857
    goto :goto_1f0

    .line 862
    :sswitch_1f7
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 863
    iput-short v5, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 864
    iget v1, p0, Lcom/sun/glass/ui/win/WinAccessible;->id:I

    invoke-custom {v1}, call_site_1390("makeConcatWithConstants", (I)Ljava/lang/String;, "JavaFX\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    goto/16 :goto_12

    .line 869
    :sswitch_208
    new-instance v0, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v0}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 870
    iput-short v5, v0, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 871
    const-string v1, "JavaFXProvider"

    iput-object v1, v0, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    goto/16 :goto_12

    :cond_215
    move-object v1, v0

    goto/16 :goto_8c

    :cond_218
    move-object v1, v0

    goto/16 :goto_76

    .line 693
    nop

    :sswitch_data_21c
    .sparse-switch
        0x7533 -> :sswitch_14
        0x7534 -> :sswitch_fd
        0x7535 -> :sswitch_67
        0x7536 -> :sswitch_44
        0x7537 -> :sswitch_25
        0x7538 -> :sswitch_138
        0x7539 -> :sswitch_1d0
        0x753a -> :sswitch_1b0
        0x753b -> :sswitch_1f7
        0x753d -> :sswitch_e5
        0x7540 -> :sswitch_198
        0x7541 -> :sswitch_198
        0x7543 -> :sswitch_1db
        0x759b -> :sswitch_208
    .end sparse-switch

    .line 729
    :sswitch_data_256
    .sparse-switch
        0x11 -> :sswitch_bc
        0x12 -> :sswitch_bc
        0x19 -> :sswitch_ba
        0x1b -> :sswitch_ba
        0x22 -> :sswitch_ba
    .end sparse-switch

    .line 790
    :sswitch_data_26c
    .sparse-switch
        0x5 -> :sswitch_134
        0x27 -> :sswitch_130
    .end sparse-switch
.end method

.method private GetRowHeaderItems()[J
    .registers 3

    const/4 v1, 0x0

    .line 1485
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1487
    :cond_7
    return-object v1
.end method

.method private GetRowHeaders()[J
    .registers 3

    const/4 v1, 0x0

    .line 1460
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1462
    :cond_7
    return-object v1
.end method

.method private GetRuntimeId()[I
    .registers 4

    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 914
    :cond_7
    :goto_7
    return-object v0

    .line 913
    :cond_8
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getView()Lcom/sun/glass/ui/View;

    move-result-object v1

    if-nez v1, :cond_7

    .line 914
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sun/glass/ui/win/WinAccessible;->id:I

    aput v2, v0, v1

    goto :goto_7
.end method

.method private GetSelection()[J
    .registers 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v2

    .line 1175
    :goto_b
    return-object v0

    .line 1127
    :cond_c
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1128
    if-nez v0, :cond_1a

    move-object v0, v2

    goto :goto_b

    .line 1129
    :cond_1a
    sget-object v4, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_c0

    :cond_25
    :pswitch_25  #0x16, 0x17, 0x18, 0x1a, 0x1f, 0x20, 0x21, 0x22, 0x23
    move-object v0, v2

    .line 1175
    goto :goto_b

    .line 1135
    :pswitch_27  #0x1c, 0x1d, 0x1e, 0x24
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SELECTED_ITEMS:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    .line 1136
    if-eqz v0, :cond_25

    .line 1137
    invoke-interface {v0}, Ljavafx/collections/ObservableList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-custom {p0}, call_site_3004("applyAsLong", (Lcom/sun/glass/ui/win/WinAccessible;)Ljava/util/function/ToLongFunction;, (Ljava/lang/Object;)J, invoke-direct@Lcom/sun/glass/ui/win/WinAccessible;->lambda$GetSelection$2(Ljavafx/scene/Node;)J, (Ljavafx/scene/Node;)J)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    goto :goto_b

    .line 1143
    :pswitch_44  #0x14, 0x15
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1144
    if-eqz v0, :cond_25

    .line 1145
    new-array v2, v6, [J

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v4

    aput-wide v4, v2, v1

    move-object v0, v2

    goto :goto_b

    .line 1151
    :pswitch_5a  #0x19, 0x1b
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    if-nez v0, :cond_65

    .line 1152
    new-instance v0, Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-direct {v0, p0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;-><init>(Lcom/sun/glass/ui/win/WinAccessible;)V

    iput-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    .line 1154
    :cond_65
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SELECTION_START:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1155
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    .line 1158
    :goto_76
    if-ltz v4, :cond_bd

    .line 1159
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SELECTION_END:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1160
    if-eqz v0, :cond_b1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1161
    :goto_88
    if-lt v2, v4, :cond_bb

    .line 1162
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v5}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1163
    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1166
    :goto_9a
    if-eq v0, v3, :cond_b5

    if-gt v2, v0, :cond_b5

    .line 1167
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v0, v4, v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->setRange(II)V

    .line 1171
    :goto_a3
    new-array v0, v6, [J

    iget-object v2, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v2}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getNativeProvider()J

    move-result-wide v2

    aput-wide v2, v0, v1

    goto/16 :goto_b

    :cond_af
    move v4, v1

    .line 1155
    goto :goto_76

    :cond_b1
    move v2, v1

    .line 1160
    goto :goto_88

    :cond_b3
    move v0, v1

    .line 1163
    goto :goto_9a

    .line 1169
    :cond_b5
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v0, v1, v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->setRange(II)V

    goto :goto_a3

    :cond_bb
    move v0, v3

    goto :goto_9a

    :cond_bd
    move v0, v3

    move v2, v3

    goto :goto_9a

    .line 1129
    :pswitch_data_c0
    .packed-switch 0x14
        :pswitch_44  #00000014
        :pswitch_44  #00000015
        :pswitch_25  #00000016
        :pswitch_25  #00000017
        :pswitch_25  #00000018
        :pswitch_5a  #00000019
        :pswitch_25  #0000001a
        :pswitch_5a  #0000001b
        :pswitch_27  #0000001c
        :pswitch_27  #0000001d
        :pswitch_27  #0000001e
        :pswitch_25  #0000001f
        :pswitch_25  #00000020
        :pswitch_25  #00000021
        :pswitch_25  #00000022
        :pswitch_25  #00000023
        :pswitch_27  #00000024
    .end packed-switch
.end method

.method private GetVisibleRanges()[J
    .registers 5

    .line 1342
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1343
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_DocumentRange()J

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_7
.end method

.method private Invoke()V
    .registers 3

    .line 1113
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1115
    :goto_6
    return-void

    .line 1114
    :cond_7
    sget-object v0, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private Move(DD)V
    .registers 5

    .line 1599
    return-void
.end method

.method private Navigate(I)J
    .registers 16

    const/4 v9, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 943
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1069
    :cond_c
    :goto_c
    return-wide v2

    .line 944
    :cond_d
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 946
    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_ITEM:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_26

    move v1, v8

    .line 947
    :goto_1c
    const/4 v4, 0x0

    .line 948
    packed-switch p1, :pswitch_data_1bc

    :cond_20
    move-object v0, v4

    .line 1069
    :cond_21
    :goto_21
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v2

    goto :goto_c

    :cond_26
    move v1, v5

    .line 946
    goto :goto_1c

    .line 951
    :pswitch_28  #0x0
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    if-nez v0, :cond_c

    .line 953
    if-eqz v1, :cond_4c

    .line 954
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TREE_ITEM_PARENT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 955
    if-nez v0, :cond_21

    .line 957
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    .line 958
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v0

    :goto_48
    move-wide v2, v0

    goto :goto_c

    :cond_4a
    move-wide v0, v2

    goto :goto_48

    .line 961
    :cond_4c
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 962
    if-nez v0, :cond_21

    .line 964
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SCENE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Scene;

    .line 965
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    .line 967
    if-eqz v0, :cond_c

    if-eq v0, p0, :cond_c

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 968
    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v2

    goto :goto_c

    .line 975
    :pswitch_77  #0x1, 0x2
    sget-object v6, Ljavafx/scene/AccessibleRole;->LIST_ITEM:Ljavafx/scene/AccessibleRole;

    if-ne v0, v6, :cond_80

    .line 976
    invoke-direct {p0, p0, p1}, Lcom/sun/glass/ui/win/WinAccessible;->NavigateListView(Lcom/sun/glass/ui/win/WinAccessible;I)J

    move-result-wide v2

    goto :goto_c

    .line 979
    :cond_80
    if-eqz v1, :cond_e0

    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TREE_ITEM_PARENT:Ljavafx/scene/AccessibleAttribute;

    :goto_84
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v6}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 984
    if-eqz v0, :cond_20

    .line 985
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    .line 988
    if-eqz v1, :cond_e3

    .line 989
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->TREE_ITEM_COUNT:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 990
    if-eqz v1, :cond_c

    .line 991
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 992
    invoke-custom {v0}, call_site_1227("apply", (Lcom/sun/glass/ui/win/WinAccessible;)Ljava/util/function/Function;, (Ljava/lang/Object;)Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/win/WinAccessible;->lambda$Navigate$0(Lcom/sun/glass/ui/win/WinAccessible;Ljava/lang/Integer;)Ljavafx/scene/Node;, (Ljava/lang/Integer;)Ljavafx/scene/Node;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    move v2, v1

    .line 1004
    :goto_ab
    iget v6, v0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    .line 1006
    if-ltz v6, :cond_f5

    if-ge v6, v2, :cond_f5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    cmp-long v1, v10, v12

    if-nez v1, :cond_f5

    move v1, v6

    .line 1016
    :goto_c6
    if-eq v1, v7, :cond_1b6

    .line 1017
    if-ne p1, v8, :cond_10d

    .line 1018
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    .line 1022
    :goto_cd
    if-ltz v5, :cond_1b6

    if-ge v5, v2, :cond_1b6

    .line 1023
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    .line 1024
    iput v5, v0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    :goto_dd
    move-object v0, v1

    .line 1027
    goto/16 :goto_21

    .line 979
    :cond_e0
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    goto :goto_84

    .line 996
    :cond_e3
    invoke-direct {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getUnignoredChildren(Lcom/sun/glass/ui/win/WinAccessible;)Ljava/util/List;

    move-result-object v6

    .line 997
    if-eqz v6, :cond_c

    .line 998
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 999
    invoke-custom {v6}, call_site_922("apply", (Ljava/util/List;)Ljava/util/function/Function;, (Ljava/lang/Object;)Ljava/lang/Object;, invoke-static@Lcom/sun/glass/ui/win/WinAccessible;->lambda$Navigate$1(Ljava/util/List;Ljava/lang/Integer;)Ljavafx/scene/Node;, (Ljava/lang/Integer;)Ljavafx/scene/Node;)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    move v2, v1

    goto :goto_ab

    .line 1009
    :cond_f3
    add-int/lit8 v5, v5, 0x1

    :cond_f5
    if-ge v5, v2, :cond_1b9

    .line 1010
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    cmp-long v1, v10, v12

    if-nez v1, :cond_f3

    move v1, v5

    .line 1012
    goto :goto_c6

    .line 1020
    :cond_10d
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    goto :goto_cd

    .line 1032
    :pswitch_111  #0x3, 0x4
    iput v7, p0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    .line 1033
    sget-object v2, Ljavafx/scene/AccessibleRole;->LIST_VIEW:Ljavafx/scene/AccessibleRole;

    if-ne v0, v2, :cond_124

    .line 1040
    sget-object v2, Ljavafx/scene/AccessibleAttribute;->ITEM_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    :cond_124
    sget-object v2, Ljavafx/scene/AccessibleRole;->TREE_VIEW:Ljavafx/scene/AccessibleRole;

    if-ne v0, v2, :cond_13c

    .line 1044
    iput v5, p0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    .line 1045
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROW_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto/16 :goto_21

    .line 1046
    :cond_13c
    if-eqz v1, :cond_172

    .line 1047
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TREE_ITEM_COUNT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1048
    if-eqz v0, :cond_168

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_168

    .line 1049
    if-ne p1, v9, :cond_16b

    move v0, v5

    :goto_153
    iput v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    .line 1050
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TREE_ITEM_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    move-object v4, v0

    :cond_168
    move-object v0, v4

    .line 1052
    goto/16 :goto_21

    .line 1049
    :cond_16b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_153

    .line 1053
    :cond_172
    invoke-direct {p0, p0}, Lcom/sun/glass/ui/win/WinAccessible;->getUnignoredChildren(Lcom/sun/glass/ui/win/WinAccessible;)Ljava/util/List;

    move-result-object v1

    .line 1054
    if-eqz v1, :cond_18c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18c

    .line 1055
    if-ne p1, v9, :cond_1ac

    move v0, v5

    :goto_181
    iput v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    .line 1056
    iget v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->lastIndex:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    move-object v4, v0

    .line 1058
    :cond_18c
    if-eqz v4, :cond_1b3

    .line 1059
    invoke-virtual {p0, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1060
    sget-object v1, Ljavafx/scene/AccessibleRole;->LIST_ITEM:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_1b3

    .line 1061
    invoke-virtual {p0, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    .line 1062
    invoke-direct {p0, v0, p1}, Lcom/sun/glass/ui/win/WinAccessible;->NavigateListView(Lcom/sun/glass/ui/win/WinAccessible;I)J

    move-result-wide v2

    goto/16 :goto_c

    .line 1055
    :cond_1ac
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_181

    :cond_1b3
    move-object v0, v4

    goto/16 :goto_21

    :cond_1b6
    move-object v1, v4

    goto/16 :goto_dd

    :cond_1b9
    move v1, v7

    goto/16 :goto_c6

    .line 948
    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_77  #00000001
        :pswitch_77  #00000002
        :pswitch_111  #00000003
        :pswitch_111  #00000004
    .end packed-switch
.end method

.method private NavigateListView(Lcom/sun/glass/ui/win/WinAccessible;I)J
    .registers 11

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 918
    invoke-direct {p1}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v4

    .line 919
    if-nez v4, :cond_b

    move-wide v0, v2

    .line 939
    :goto_a
    return-wide v0

    .line 920
    :cond_b
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ITEM_COUNT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 921
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1f

    :cond_1d
    move-wide v0, v2

    goto :goto_a

    .line 922
    :cond_1f
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v5}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 923
    if-nez v1, :cond_2d

    move-wide v0, v2

    goto :goto_a

    .line 930
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_3d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_3f

    :cond_3d
    move-wide v0, v2

    goto :goto_a

    .line 931
    :cond_3f
    packed-switch p2, :pswitch_data_8e

    .line 937
    :goto_42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_52

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v5, v0, :cond_7a

    :cond_52
    move-wide v0, v2

    goto :goto_a

    .line 932
    :pswitch_54  #0x1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_42

    .line 933
    :pswitch_5f  #0x2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_42

    .line 934
    :pswitch_6a  #0x3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_42

    .line 935
    :pswitch_6f  #0x4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_42

    .line 938
    :cond_7a
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ITEM_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-virtual {v4, v0, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 939
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    goto/16 :goto_a

    .line 931
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_54  #00000001
        :pswitch_5f  #00000002
        :pswitch_6a  #00000003
        :pswitch_6f  #00000004
    .end packed-switch
.end method

.method private RangeFromChild(J)J
    .registers 7

    const-wide/16 v2, 0x0

    .line 1347
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1348
    :cond_8
    return-wide v2
.end method

.method private RangeFromPoint(DD)J
    .registers 12

    const-wide/16 v2, 0x0

    .line 1352
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_a

    move-wide v0, v2

    .line 1359
    :goto_9
    return-wide v0

    .line 1353
    :cond_a
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->OFFSET_AT_POINT:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljavafx/geometry/Point2D;

    invoke-direct {v5, p1, p2, p3, p4}, Ljavafx/geometry/Point2D;-><init>(DD)V

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1354
    if-eqz v0, :cond_34

    .line 1355
    new-instance v1, Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-direct {v1, p0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;-><init>(Lcom/sun/glass/ui/win/WinAccessible;)V

    .line 1356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->setRange(II)V

    .line 1357
    invoke-virtual {v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getNativeProvider()J

    move-result-wide v0

    goto :goto_9

    :cond_34
    move-wide v0, v2

    .line 1359
    goto :goto_9
.end method

.method private RemoveFromSelection()V
    .registers 3

    const/4 v1, 0x0

    .line 1323
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1325
    :goto_7
    return-void

    .line 1324
    :cond_8
    invoke-direct {p0, v1, v1}, Lcom/sun/glass/ui/win/WinAccessible;->changeSelection(ZZ)V

    goto :goto_7
.end method

.method private Resize(DD)V
    .registers 5

    .line 1602
    return-void
.end method

.method private Rotate(D)V
    .registers 3

    .line 1605
    return-void
.end method

.method private Scroll(II)V
    .registers 7

    const/4 v3, 0x0

    .line 1611
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1656
    :cond_7
    :goto_7
    return-void

    .line 1614
    :cond_8
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_VerticallyScrollable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1615
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VERTICAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1616
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    .line 1617
    if-eqz v0, :cond_7

    .line 1618
    packed-switch p2, :pswitch_data_7c

    .line 1636
    :cond_21
    :goto_21
    :pswitch_21  #0x2
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_HorizontallyScrollable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1637
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->HORIZONTAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1638
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    .line 1639
    if-eqz v0, :cond_7

    .line 1640
    packed-switch p1, :pswitch_data_8a

    :pswitch_3a  #0x2
    goto :goto_7

    .line 1648
    :pswitch_3b  #0x0
    sget-object v1, Ljavafx/scene/AccessibleAction;->BLOCK_DECREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1620
    :pswitch_43  #0x3
    sget-object v1, Ljavafx/scene/AccessibleAction;->BLOCK_INCREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_21

    .line 1623
    :pswitch_4b  #0x4
    sget-object v1, Ljavafx/scene/AccessibleAction;->INCREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_21

    .line 1626
    :pswitch_53  #0x0
    sget-object v1, Ljavafx/scene/AccessibleAction;->BLOCK_DECREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_21

    .line 1629
    :pswitch_5b  #0x1
    sget-object v1, Ljavafx/scene/AccessibleAction;->DECREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_21

    .line 1642
    :pswitch_63  #0x3
    sget-object v1, Ljavafx/scene/AccessibleAction;->BLOCK_INCREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1645
    :pswitch_6b  #0x4
    sget-object v1, Ljavafx/scene/AccessibleAction;->INCREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1651
    :pswitch_73  #0x1
    sget-object v1, Ljavafx/scene/AccessibleAction;->DECREMENT:Ljavafx/scene/AccessibleAction;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1618
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_5b  #00000001
        :pswitch_21  #00000002
        :pswitch_43  #00000003
        :pswitch_4b  #00000004
    .end packed-switch

    .line 1640
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_3b  #00000000
        :pswitch_73  #00000001
        :pswitch_3a  #00000002
        :pswitch_63  #00000003
        :pswitch_6b  #00000004
    .end packed-switch
.end method

.method private ScrollIntoView()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1812
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1847
    :cond_8
    :goto_8
    return-void

    .line 1813
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1814
    if-eqz v0, :cond_8

    .line 1815
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v3

    .line 1816
    if-eqz v3, :cond_8

    .line 1817
    const/4 v2, 0x0

    .line 1818
    sget-object v1, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_8e

    :cond_27
    :pswitch_27  #0x4, 0x5, 0x7
    move-object v0, v2

    .line 1844
    :goto_28
    if-eqz v0, :cond_8

    .line 1845
    sget-object v1, Ljavafx/scene/AccessibleAction;->SHOW_ITEM:Ljavafx/scene/AccessibleAction;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v3, v1, v2}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1820
    :pswitch_34  #0x3
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1821
    if-eqz v0, :cond_27

    .line 1822
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->ITEM_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v3, v1, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_28

    .line 1827
    :pswitch_4d  #0x6
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1828
    if-eqz v0, :cond_27

    .line 1829
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->ROW_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v3, v1, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_28

    .line 1835
    :pswitch_66  #0x2, 0x8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROW_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1836
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->COLUMN_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1837
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 1838
    sget-object v2, Ljavafx/scene/AccessibleAttribute;->CELL_AT_ROW_COLUMN:Ljavafx/scene/AccessibleAttribute;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v3, v2, v4}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    goto :goto_28

    .line 1818
    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_66  #00000002
        :pswitch_34  #00000003
        :pswitch_27  #00000004
        :pswitch_27  #00000005
        :pswitch_4d  #00000006
        :pswitch_27  #00000007
        :pswitch_66  #00000008
    .end packed-switch
.end method

.method private Select()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1291
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1315
    :cond_8
    :goto_8
    return-void

    .line 1292
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1293
    if-eqz v0, :cond_8

    .line 1294
    sget-object v1, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_36

    goto :goto_8

    .line 1310
    :sswitch_21
    invoke-direct {p0, v3, v3}, Lcom/sun/glass/ui/win/WinAccessible;->changeSelection(ZZ)V

    goto :goto_8

    .line 1297
    :sswitch_25
    sget-object v0, Ljavafx/scene/AccessibleAction;->REQUEST_FOCUS:Ljavafx/scene/AccessibleAction;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1304
    :sswitch_2d
    sget-object v0, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1294
    nop

    :sswitch_data_36
    .sparse-switch
        0x2 -> :sswitch_21
        0x3 -> :sswitch_21
        0x4 -> :sswitch_25
        0x5 -> :sswitch_25
        0x6 -> :sswitch_21
        0x8 -> :sswitch_21
        0xe -> :sswitch_2d
        0x10 -> :sswitch_2d
        0x11 -> :sswitch_2d
        0x12 -> :sswitch_2d
        0x20 -> :sswitch_2d
    .end sparse-switch
.end method

.method private SetFocus()V
    .registers 3

    .line 1073
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1075
    :goto_6
    return-void

    .line 1074
    :cond_7
    sget-object v0, Ljavafx/scene/AccessibleAction;->REQUEST_FOCUS:Ljavafx/scene/AccessibleAction;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private SetScrollPercent(DD)V
    .registers 16

    .line 1659
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1684
    :cond_6
    :goto_6
    return-void

    .line 1662
    :cond_7
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_60

    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_VerticallyScrollable()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1663
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VERTICAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1664
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    .line 1665
    if-eqz v2, :cond_6

    .line 1666
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->MIN_VALUE:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1667
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->MAX_VALUE:Ljavafx/scene/AccessibleAttribute;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 1668
    if-eqz v0, :cond_60

    if-eqz v1, :cond_60

    .line 1669
    sget-object v3, Ljavafx/scene/AccessibleAction;->SET_VALUE:Ljavafx/scene/AccessibleAction;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L  # 100.0

    div-double v8, p3, v8

    mul-double/2addr v6, v8

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 1674
    :cond_60
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_HorizontallyScrollable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1675
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->HORIZONTAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1676
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    .line 1677
    if-eqz v2, :cond_6

    .line 1678
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->MIN_VALUE:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1679
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->MAX_VALUE:Ljavafx/scene/AccessibleAttribute;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 1680
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 1681
    sget-object v3, Ljavafx/scene/AccessibleAction;->SET_VALUE:Ljavafx/scene/AccessibleAction;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L  # 100.0

    div-double v8, p1, v8

    mul-double/2addr v6, v8

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto/16 :goto_6
.end method

.method private SetValue(D)V
    .registers 8

    const/4 v3, 0x0

    .line 1204
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1215
    :cond_7
    :goto_7
    return-void

    .line 1205
    :cond_8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1206
    if-eqz v0, :cond_7

    .line 1207
    sget-object v1, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_30

    goto :goto_7

    .line 1210
    :sswitch_20
    sget-object v0, Ljavafx/scene/AccessibleAction;->SET_VALUE:Ljavafx/scene/AccessibleAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1207
    nop

    :sswitch_data_30
    .sparse-switch
        0x16 -> :sswitch_20
        0x29 -> :sswitch_20
    .end sparse-switch
.end method

.method private SetValueString(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    .line 1269
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1280
    :cond_7
    :goto_7
    return-void

    .line 1270
    :cond_8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1271
    if-eqz v0, :cond_7

    .line 1272
    sget-object v1, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2c

    :pswitch_1f  #0x1a
    goto :goto_7

    .line 1275
    :pswitch_20  #0x19, 0x1b
    sget-object v0, Ljavafx/scene/AccessibleAction;->SET_TEXT:Ljavafx/scene/AccessibleAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1272
    nop

    :pswitch_data_2c
    .packed-switch 0x19
        :pswitch_20  #00000019
        :pswitch_1f  #0000001a
        :pswitch_20  #0000001b
    .end packed-switch
.end method

.method private Toggle()V
    .registers 3

    .line 1494
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1496
    :goto_6
    return-void

    .line 1495
    :cond_7
    sget-object v0, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private static native UiaClientsAreListening()Z
.end method

.method private static native UiaRaiseAutomationEvent(JI)J
.end method

.method private static native UiaRaiseAutomationPropertyChangedEvent(JILcom/sun/glass/ui/win/WinVariant;Lcom/sun/glass/ui/win/WinVariant;)J
.end method

.method private native _createGlassAccessible()J
.end method

.method private native _destroyGlassAccessible(J)V
.end method

.method private static native _initIDs()V
.end method

.method private changeSelection(ZZ)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 513
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 514
    if-nez v0, :cond_f

    .line 560
    :cond_e
    :goto_e
    return-void

    .line 515
    :cond_f
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v3

    .line 516
    if-eqz v3, :cond_e

    .line 517
    const/4 v2, 0x0

    .line 518
    sget-object v1, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_aa

    :cond_21
    :pswitch_21  #0x4, 0x5, 0x7
    move-object v1, v2

    .line 544
    :goto_22
    if-eqz v1, :cond_e

    .line 545
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    .line 546
    if-nez p2, :cond_39

    .line 548
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SELECTED_ITEMS:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    .line 549
    if-eqz v0, :cond_39

    .line 550
    invoke-interface {v2, v0}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    .line 553
    :cond_39
    if-eqz p1, :cond_a6

    .line 554
    invoke-interface {v2, v1}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_3e
    sget-object v0, Ljavafx/scene/AccessibleAction;->SET_SELECTED_ITEMS:Ljavafx/scene/AccessibleAction;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v3, v0, v1}, Lcom/sun/glass/ui/Accessible;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    goto :goto_e

    .line 520
    :pswitch_48  #0x3
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 521
    if-eqz v0, :cond_21

    .line 522
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->ITEM_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v3, v1, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    move-object v1, v0

    goto :goto_22

    .line 527
    :pswitch_62  #0x6
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 528
    if-eqz v0, :cond_21

    .line 529
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->ROW_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v3, v1, v2}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    move-object v1, v0

    goto :goto_22

    .line 535
    :pswitch_7c  #0x2, 0x8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROW_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 536
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->COLUMN_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 537
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 538
    sget-object v2, Ljavafx/scene/AccessibleAttribute;->CELL_AT_ROW_COLUMN:Ljavafx/scene/AccessibleAttribute;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v3, v2, v4}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    move-object v1, v0

    goto/16 :goto_22

    .line 556
    :cond_a6
    invoke-interface {v2, v1}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 518
    :pswitch_data_aa
    .packed-switch 0x2
        :pswitch_7c  #00000002
        :pswitch_48  #00000003
        :pswitch_21  #00000004
        :pswitch_21  #00000005
        :pswitch_62  #00000006
        :pswitch_21  #00000007
        :pswitch_7c  #00000008
    .end packed-switch
.end method

.method private getContainer()Lcom/sun/glass/ui/Accessible;
    .registers 4

    const/4 v1, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 433
    :goto_8
    return-object v0

    .line 419
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 420
    if-eqz v0, :cond_21

    .line 421
    sget-object v2, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_4e

    :cond_21
    move-object v0, v1

    .line 433
    goto :goto_8

    .line 423
    :pswitch_23  #0x1, 0x2
    sget-object v0, Ljavafx/scene/AccessibleRole;->TABLE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_8

    .line 424
    :pswitch_2a  #0x3
    sget-object v0, Ljavafx/scene/AccessibleRole;->LIST_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_8

    .line 425
    :pswitch_31  #0x4
    sget-object v0, Ljavafx/scene/AccessibleRole;->TAB_PANE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_8

    .line 426
    :pswitch_38  #0x5
    sget-object v0, Ljavafx/scene/AccessibleRole;->PAGINATION:Ljavafx/scene/AccessibleRole;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_8

    .line 427
    :pswitch_3f  #0x6
    sget-object v0, Ljavafx/scene/AccessibleRole;->TREE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_8

    .line 429
    :pswitch_46  #0x7, 0x8
    sget-object v0, Ljavafx/scene/AccessibleRole;->TREE_TABLE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_8

    .line 421
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_23  #00000002
        :pswitch_2a  #00000003
        :pswitch_31  #00000004
        :pswitch_38  #00000005
        :pswitch_3f  #00000006
        :pswitch_46  #00000007
        :pswitch_46  #00000008
    .end packed-switch
.end method

.method private getControlType()I
    .registers 6

    const v2, 0xc36a

    const/4 v3, 0x0

    const v1, 0xc371

    .line 437
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 438
    if-nez v0, :cond_15

    move v1, v2

    .line 483
    :goto_14
    :pswitch_14  #0x28, 0x2c
    return v1

    .line 439
    :cond_15
    sget-object v4, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_9a

    :pswitch_20  #0x7
    move v1, v3

    .line 483
    goto :goto_14

    .line 440
    :pswitch_22  #0x9
    const v1, 0xc359

    goto :goto_14

    .line 444
    :pswitch_26  #0xa, 0xb, 0xc, 0xd
    const v1, 0xc35b

    goto :goto_14

    .line 449
    :pswitch_2a  #0xe, 0xf, 0x10, 0x11, 0x12
    const v1, 0xc350

    goto :goto_14

    .line 450
    :pswitch_2e  #0x13
    const v1, 0xc36f

    goto :goto_14

    .line 452
    :pswitch_32  #0x14, 0x15
    const v1, 0xc362

    goto :goto_14

    .line 454
    :pswitch_36  #0x4, 0x5
    const v1, 0xc363

    goto :goto_14

    .line 455
    :pswitch_3a  #0x16
    const v1, 0xc35f

    goto :goto_14

    .line 456
    :pswitch_3e  #0x17
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    if-eqz v0, :cond_49

    const v0, 0xc370

    :goto_47
    move v1, v0

    goto :goto_14

    :cond_49
    move v0, v1

    goto :goto_47

    .line 457
    :pswitch_4b  #0x18
    const v1, 0xc364

    goto :goto_14

    .line 460
    :pswitch_4f  #0x19, 0x1a, 0x1b
    const v1, 0xc354

    goto :goto_14

    .line 462
    :pswitch_53  #0x1c, 0x1d
    const v1, 0xc374

    goto :goto_14

    .line 463
    :pswitch_57  #0x1e
    const v1, 0xc358

    goto :goto_14

    .line 464
    :pswitch_5b  #0x3
    const v1, 0xc357

    goto :goto_14

    .line 466
    :pswitch_5f  #0x2, 0x8
    const v1, 0xc36d

    goto :goto_14

    .line 467
    :pswitch_63  #0x1f
    const v1, 0xc356

    goto :goto_14

    .line 468
    :pswitch_67  #0x20
    const v1, 0xc35d

    goto :goto_14

    .line 469
    :pswitch_6b  #0x21
    const v1, 0xc352

    goto :goto_14

    .line 470
    :pswitch_6f  #0x22
    const v1, 0xc353

    goto :goto_14

    .line 471
    :pswitch_73  #0x23
    const v1, 0xc355

    goto :goto_14

    .line 472
    :pswitch_77  #0x24
    const v1, 0xc367

    goto :goto_14

    .line 473
    :pswitch_7b  #0x6
    const v1, 0xc368

    goto :goto_14

    .line 474
    :pswitch_7f  #0x25
    const v1, 0xc35c

    goto :goto_14

    .line 475
    :pswitch_83  #0x26
    const v1, 0xc365

    goto :goto_14

    :pswitch_87  #0x27
    move v1, v2

    .line 476
    goto :goto_14

    .line 478
    :pswitch_89  #0x29
    const v1, 0xc35e

    goto :goto_14

    .line 479
    :pswitch_8d  #0x2a
    const v1, 0xc36b

    goto :goto_14

    .line 480
    :pswitch_91  #0x2b
    const v1, 0xc35a

    goto :goto_14

    .line 482
    :pswitch_95  #0x2d
    const v1, 0xc360

    goto/16 :goto_14

    .line 439
    :pswitch_data_9a
    .packed-switch 0x2
        :pswitch_5f  #00000002
        :pswitch_5b  #00000003
        :pswitch_36  #00000004
        :pswitch_36  #00000005
        :pswitch_7b  #00000006
        :pswitch_20  #00000007
        :pswitch_5f  #00000008
        :pswitch_22  #00000009
        :pswitch_26  #0000000a
        :pswitch_26  #0000000b
        :pswitch_26  #0000000c
        :pswitch_26  #0000000d
        :pswitch_2a  #0000000e
        :pswitch_2a  #0000000f
        :pswitch_2a  #00000010
        :pswitch_2a  #00000011
        :pswitch_2a  #00000012
        :pswitch_2e  #00000013
        :pswitch_32  #00000014
        :pswitch_32  #00000015
        :pswitch_3a  #00000016
        :pswitch_3e  #00000017
        :pswitch_4b  #00000018
        :pswitch_4f  #00000019
        :pswitch_4f  #0000001a
        :pswitch_4f  #0000001b
        :pswitch_53  #0000001c
        :pswitch_53  #0000001d
        :pswitch_57  #0000001e
        :pswitch_63  #0000001f
        :pswitch_67  #00000020
        :pswitch_6b  #00000021
        :pswitch_6f  #00000022
        :pswitch_73  #00000023
        :pswitch_77  #00000024
        :pswitch_7f  #00000025
        :pswitch_83  #00000026
        :pswitch_87  #00000027
        :pswitch_14  #00000028
        :pswitch_89  #00000029
        :pswitch_8d  #0000002a
        :pswitch_91  #0000002b
        :pswitch_14  #0000002c
        :pswitch_95  #0000002d
    .end packed-switch
.end method

.method private getRow()Lcom/sun/glass/ui/Accessible;
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 501
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->COLUMN_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 502
    if-nez v0, :cond_10

    move-object v0, v1

    .line 509
    :goto_f
    return-object v0

    .line 503
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, v1

    goto :goto_f

    .line 504
    :cond_18
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROW_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 505
    if-nez v0, :cond_26

    move-object v0, v1

    goto :goto_f

    .line 506
    :cond_26
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    .line 507
    if-nez v2, :cond_2e

    move-object v0, v1

    goto :goto_f

    .line 508
    :cond_2e
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->ROW_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 509
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    goto :goto_f
.end method

.method private getUnignoredChildren(Lcom/sun/glass/ui/win/WinAccessible;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/win/WinAccessible;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .line 489
    if-nez p1, :cond_7

    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v0

    .line 494
    :goto_6
    return-object v0

    .line 492
    :cond_7
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->CHILDREN:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/collections/ObservableList;

    .line 493
    if-nez v0, :cond_19

    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v0

    goto :goto_6

    .line 494
    :cond_19
    invoke-interface {v0}, Ljavafx/collections/ObservableList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-custom {}, call_site_1360("test", ()Ljava/util/function/Predicate;, (Ljava/lang/Object;)Z, invoke-instance@Ljavafx/scene/Node;->isVisible()Z, (Ljavafx/scene/Node;)Z)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 495
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 496
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_6
.end method

.method private get_BoundingRectangle()[F
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 883
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 892
    :goto_9
    return-object v0

    .line 885
    :cond_a
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object v0, v1

    goto :goto_9

    .line 887
    :cond_12
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->BOUNDS:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/geometry/Bounds;

    .line 888
    if-eqz v0, :cond_42

    .line 889
    const/4 v1, 0x4

    new-array v1, v1, [F

    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 890
    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, v1, v2

    move-object v0, v1

    .line 889
    goto :goto_9

    :cond_42
    move-object v0, v1

    .line 892
    goto :goto_9
.end method

.method private get_CanMove()Z
    .registers 2

    .line 1587
    const/4 v0, 0x0

    return v0
.end method

.method private get_CanResize()Z
    .registers 2

    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method private get_CanRotate()Z
    .registers 2

    .line 1595
    const/4 v0, 0x0

    return v0
.end method

.method private get_CanSelectMultiple()Z
    .registers 4

    const/4 v1, 0x0

    .line 1179
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 1191
    :goto_8
    return v0

    .line 1180
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1181
    if-eqz v0, :cond_20

    .line 1182
    sget-object v2, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_32

    :cond_20
    :pswitch_20  #0x1f, 0x20, 0x21, 0x22, 0x23
    move v0, v1

    .line 1191
    goto :goto_8

    .line 1187
    :pswitch_22  #0x1c, 0x1d, 0x1e, 0x24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->MULTIPLE_SELECTION:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    .line 1182
    nop

    :pswitch_data_32
    .packed-switch 0x1c
        :pswitch_22  #0000001c
        :pswitch_22  #0000001d
        :pswitch_22  #0000001e
        :pswitch_20  #0000001f
        :pswitch_20  #00000020
        :pswitch_20  #00000021
        :pswitch_20  #00000022
        :pswitch_20  #00000023
        :pswitch_22  #00000024
    .end packed-switch
.end method

.method private get_Column()I
    .registers 4

    const/4 v1, 0x0

    .line 1412
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1414
    :goto_7
    return v1

    .line 1413
    :cond_8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->COLUMN_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1414
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_18
    move v1, v0

    goto :goto_7

    :cond_1a
    move v0, v1

    goto :goto_18
.end method

.method private get_ColumnCount()I
    .registers 3

    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1393
    :goto_7
    return v0

    .line 1387
    :cond_8
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->COLUMN_COUNT:Ljavafx/scene/AccessibleAttribute;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1393
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_19
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private get_ColumnSpan()I
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1419
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private get_ContainingGrid()J
    .registers 5

    const-wide/16 v2, 0x0

    .line 1423
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1425
    :goto_8
    return-wide v2

    .line 1424
    :cond_9
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    .line 1425
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v0

    :goto_15
    move-wide v2, v0

    goto :goto_8

    :cond_17
    move-wide v0, v2

    goto :goto_15
.end method

.method private get_DocumentRange()J
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1363
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v0, v2

    .line 1370
    :goto_a
    return-wide v0

    .line 1364
    :cond_b
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    if-nez v0, :cond_16

    .line 1365
    new-instance v0, Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-direct {v0, p0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;-><init>(Lcom/sun/glass/ui/win/WinAccessible;)V

    iput-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    .line 1367
    :cond_16
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1368
    if-nez v0, :cond_24

    move-wide v0, v2

    goto :goto_a

    .line 1369
    :cond_24
    iget-object v1, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->setRange(II)V

    .line 1370
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getNativeProvider()J

    move-result-wide v0

    goto :goto_a
.end method

.method private get_ExpandCollapseState()I
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1547
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    .line 1580
    :cond_a
    :goto_a
    return v3

    .line 1549
    :cond_b
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1550
    sget-object v1, Ljavafx/scene/AccessibleRole;->TOOL_BAR:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_3e

    .line 1551
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->OVERFLOW_BUTTON:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v5}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    .line 1552
    if-eqz v1, :cond_3e

    .line 1553
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->VISIBLE:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1554
    if-eqz v0, :cond_3c

    move v0, v2

    :goto_3a
    move v3, v0

    goto :goto_a

    :cond_3c
    move v0, v3

    goto :goto_3a

    .line 1558
    :cond_3e
    sget-object v1, Ljavafx/scene/AccessibleRole;->TREE_TABLE_CELL:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_6e

    .line 1559
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getRow()Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    .line 1560
    if-nez v0, :cond_4a

    move v3, v4

    goto :goto_a

    .line 1561
    :cond_4a
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->LEAF:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1562
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move v3, v4

    goto :goto_a

    .line 1563
    :cond_5c
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1564
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1565
    if-nez v0, :cond_a

    move v3, v2

    goto :goto_a

    .line 1575
    :cond_6e
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->LEAF:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1576
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    move v3, v4

    goto :goto_a

    .line 1578
    :cond_80
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1579
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1580
    if-nez v0, :cond_a

    move v3, v2

    goto/16 :goto_a
.end method

.method private get_FragmentRoot()J
    .registers 5

    const-wide/16 v2, 0x0

    .line 896
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_a

    move-wide v0, v2

    .line 901
    :goto_9
    return-wide v0

    .line 897
    :cond_a
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SCENE:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Scene;

    .line 898
    if-nez v0, :cond_19

    move-wide v0, v2

    goto :goto_9

    .line 899
    :cond_19
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    .line 900
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_27
    move-wide v0, v2

    goto :goto_9

    .line 901
    :cond_29
    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v0

    goto :goto_9
.end method

.method private get_HorizontalScrollPercent()D
    .registers 11

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1697
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v0, v4

    .line 1716
    :goto_a
    return-wide v0

    .line 1699
    :cond_b
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_HorizontallyScrollable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1700
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    goto :goto_a

    .line 1703
    :cond_14
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->HORIZONTAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1704
    if-eqz v0, :cond_66

    .line 1706
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    .line 1707
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1708
    if-nez v0, :cond_32

    move-wide v0, v4

    goto :goto_a

    .line 1709
    :cond_32
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->MAX_VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 1710
    if-nez v1, :cond_40

    move-wide v0, v4

    goto :goto_a

    .line 1711
    :cond_40
    sget-object v3, Ljavafx/scene/AccessibleAttribute;->MIN_VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 1712
    if-nez v2, :cond_4e

    move-wide v0, v4

    goto :goto_a

    .line 1713
    :cond_4e
    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    div-double v0, v4, v0

    goto :goto_a

    :cond_66
    move-wide v0, v4

    .line 1716
    goto :goto_a
.end method

.method private get_HorizontalViewSize()D
    .registers 9

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 1720
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_d

    move-wide v0, v2

    .line 1728
    :goto_c
    return-wide v0

    .line 1721
    :cond_d
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_HorizontallyScrollable()Z

    move-result v0

    if-nez v0, :cond_15

    move-wide v0, v4

    goto :goto_c

    .line 1722
    :cond_15
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->CONTENTS:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1723
    if-nez v0, :cond_23

    move-wide v0, v4

    goto :goto_c

    .line 1724
    :cond_23
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->BOUNDS:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/geometry/Bounds;

    .line 1725
    if-nez v0, :cond_35

    move-wide v0, v2

    goto :goto_c

    .line 1726
    :cond_35
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->BOUNDS:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v6}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Bounds;

    .line 1727
    if-nez v1, :cond_43

    move-wide v0, v2

    goto :goto_c

    .line 1728
    :cond_43
    invoke-virtual {v1}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v2

    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v0

    div-double v0, v2, v0

    mul-double/2addr v0, v4

    goto :goto_c
.end method

.method private get_HorizontallyScrollable()Z
    .registers 4

    const/4 v1, 0x0

    .line 1687
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 1693
    :goto_8
    return v0

    .line 1689
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->HORIZONTAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1690
    if-nez v0, :cond_17

    move v0, v1

    goto :goto_8

    .line 1692
    :cond_17
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->VISIBLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1693
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8
.end method

.method private get_HostRawElementProvider()J
    .registers 4

    const-wide/16 v0, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 687
    :cond_8
    :goto_8
    return-wide v0

    .line 686
    :cond_9
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getView()Lcom/sun/glass/ui/View;

    move-result-object v2

    .line 687
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sun/glass/ui/View;->getNativeView()J

    move-result-wide v0

    goto :goto_8
.end method

.method private get_IsReadOnly()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1228
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 1240
    :goto_9
    return v0

    .line 1229
    :cond_a
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1230
    if-eqz v0, :cond_21

    .line 1231
    sget-object v3, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v3, v0

    sparse-switch v0, :sswitch_data_36

    :cond_21
    move v0, v2

    .line 1240
    goto :goto_9

    :sswitch_23
    move v0, v1

    .line 1232
    goto :goto_9

    :sswitch_25
    move v0, v2

    .line 1233
    goto :goto_9

    .line 1236
    :sswitch_27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->EDITABLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    .line 1231
    :sswitch_data_36
    .sparse-switch
        0x16 -> :sswitch_23
        0x19 -> :sswitch_27
        0x1b -> :sswitch_27
        0x22 -> :sswitch_27
        0x29 -> :sswitch_25
    .end sparse-switch
.end method

.method private get_IsSelected()Z
    .registers 4

    const/4 v0, 0x0

    .line 1328
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1329
    :goto_7
    return v0

    :cond_8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->SELECTED:Ljavafx/scene/AccessibleAttribute;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method private get_IsSelectionRequired()Z
    .registers 2

    .line 1195
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1197
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private get_LargeChange()D
    .registers 3

    .line 1256
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    .line 1257
    :goto_8
    return-wide v0

    :cond_9
    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    goto :goto_8
.end method

.method private get_Maximum()D
    .registers 5

    const-wide/16 v2, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1246
    :goto_8
    return-wide v2

    .line 1245
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->MAX_VALUE:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1246
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_1a
    move-wide v2, v0

    goto :goto_8

    :cond_1c
    move-wide v0, v2

    goto :goto_1a
.end method

.method private get_Minimum()D
    .registers 5

    const-wide/16 v2, 0x0

    .line 1250
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1252
    :goto_8
    return-wide v2

    .line 1251
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->MIN_VALUE:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1252
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_1a
    move-wide v2, v0

    goto :goto_8

    :cond_1c
    move-wide v0, v2

    goto :goto_1a
.end method

.method private get_Row()I
    .registers 5

    const/4 v1, 0x0

    .line 1429
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1442
    :goto_7
    return v1

    .line 1430
    :cond_8
    const/4 v2, 0x0

    .line 1431
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1432
    if-eqz v0, :cond_20

    .line 1433
    sget-object v3, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_42

    :cond_20
    :pswitch_20  #0x4, 0x5, 0x6
    move-object v0, v2

    .line 1442
    :goto_21
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_27
    move v1, v0

    goto :goto_7

    .line 1436
    :pswitch_29  #0x1, 0x3, 0x7
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_21

    .line 1438
    :pswitch_34  #0x2, 0x8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROW_INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_21

    :cond_3f
    move v0, v1

    .line 1442
    goto :goto_27

    .line 1433
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_34  #00000002
        :pswitch_29  #00000003
        :pswitch_20  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_29  #00000007
        :pswitch_34  #00000008
    .end packed-switch
.end method

.method private get_RowCount()I
    .registers 4

    const/4 v1, 0x0

    .line 1397
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1399
    :goto_7
    return v1

    .line 1398
    :cond_8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROW_COUNT:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1399
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_18
    move v1, v0

    goto :goto_7

    :cond_1a
    move v0, v1

    goto :goto_18
.end method

.method private get_RowOrColumnMajor()I
    .registers 3

    const/4 v1, 0x0

    .line 1466
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1467
    :cond_7
    return v1
.end method

.method private get_RowSpan()I
    .registers 2

    .line 1446
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1447
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private get_SelectionContainer()J
    .registers 5

    const-wide/16 v2, 0x0

    .line 1333
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1335
    :goto_8
    return-wide v2

    .line 1334
    :cond_9
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    .line 1335
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v0

    :goto_15
    move-wide v2, v0

    goto :goto_8

    :cond_17
    move-wide v0, v2

    goto :goto_15
.end method

.method private get_SmallChange()D
    .registers 3

    .line 1261
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    .line 1262
    :goto_8
    return-wide v0

    :cond_9
    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    goto :goto_8
.end method

.method private get_SupportedTextSelection()I
    .registers 2

    .line 1374
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1379
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private get_ToggleState()I
    .registers 5

    const/4 v0, 0x0

    .line 1499
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1504
    :cond_7
    :goto_7
    return v0

    .line 1500
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->INDETERMINATE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1501
    const/4 v0, 0x2

    goto :goto_7

    .line 1503
    :cond_1a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->SELECTED:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1504
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private get_Value()D
    .registers 7

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 1218
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1221
    :cond_9
    :goto_9
    return-wide v2

    .line 1219
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->INDETERMINATE:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1220
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1221
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_2a
    move-wide v2, v0

    goto :goto_9

    :cond_2c
    move-wide v0, v2

    goto :goto_2a
.end method

.method private get_ValueString()Ljava/lang/String;
    .registers 3

    .line 1283
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1284
    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7
.end method

.method private get_VerticalScrollPercent()D
    .registers 11

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1742
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v0, v4

    .line 1761
    :goto_a
    return-wide v0

    .line 1744
    :cond_b
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_VerticallyScrollable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1745
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    goto :goto_a

    .line 1748
    :cond_14
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VERTICAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1749
    if-eqz v0, :cond_66

    .line 1751
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    .line 1752
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1753
    if-nez v0, :cond_32

    move-wide v0, v4

    goto :goto_a

    .line 1754
    :cond_32
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->MAX_VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 1755
    if-nez v1, :cond_40

    move-wide v0, v4

    goto :goto_a

    .line 1756
    :cond_40
    sget-object v3, Ljavafx/scene/AccessibleAttribute;->MIN_VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 1757
    if-nez v2, :cond_4e

    move-wide v0, v4

    goto :goto_a

    .line 1758
    :cond_4e
    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    div-double v0, v4, v0

    goto :goto_a

    :cond_66
    move-wide v0, v4

    .line 1761
    goto :goto_a
.end method

.method private get_VerticalViewSize()D
    .registers 11

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    .line 1765
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1805
    :cond_b
    :goto_b
    return-wide v2

    .line 1766
    :cond_c
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_VerticallyScrollable()Z

    move-result v0

    if-nez v0, :cond_14

    move-wide v2, v4

    goto :goto_b

    .line 1770
    :cond_14
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->BOUNDS:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/geometry/Bounds;

    .line 1771
    if-eqz v0, :cond_b

    .line 1772
    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v6

    .line 1774
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/AccessibleRole;

    .line 1775
    if-eqz v0, :cond_b

    .line 1776
    sget-object v1, Ljavafx/scene/AccessibleRole;->SCROLL_PANE:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_5f

    .line 1777
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->CONTENTS:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1778
    if-eqz v0, :cond_91

    .line 1779
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v1, Ljavafx/scene/AccessibleAttribute;->BOUNDS:Ljavafx/scene/AccessibleAttribute;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/geometry/Bounds;

    .line 1780
    if-nez v0, :cond_5a

    move-wide v0, v2

    .line 1805
    :goto_51
    cmpl-double v8, v0, v2

    if-eqz v8, :cond_b

    div-double v0, v6, v0

    mul-double v2, v0, v4

    goto :goto_b

    .line 1780
    :cond_5a
    invoke-virtual {v0}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v0

    goto :goto_51

    .line 1783
    :cond_5f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1784
    sget-object v8, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleRole:[I

    invoke-virtual {v0}, Ljavafx/scene/AccessibleRole;->ordinal()I

    move-result v0

    aget v0, v8, v0

    packed-switch v0, :pswitch_data_94

    :pswitch_6e  #0x1f, 0x20, 0x21, 0x22, 0x23
    move-object v0, v1

    .line 1802
    :goto_6f
    if-nez v0, :cond_89

    move-wide v0, v2

    goto :goto_51

    .line 1786
    :pswitch_73  #0x1e
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ITEM_COUNT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_6f

    .line 1791
    :pswitch_7e  #0x1c, 0x1d, 0x24
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROW_COUNT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_6f

    .line 1802
    :cond_89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x18

    int-to-double v0, v0

    goto :goto_51

    :cond_91
    move-wide v0, v2

    goto :goto_51

    .line 1784
    nop

    :pswitch_data_94
    .packed-switch 0x1c
        :pswitch_7e  #0000001c
        :pswitch_7e  #0000001d
        :pswitch_73  #0000001e
        :pswitch_6e  #0000001f
        :pswitch_6e  #00000020
        :pswitch_6e  #00000021
        :pswitch_6e  #00000022
        :pswitch_6e  #00000023
        :pswitch_7e  #00000024
    .end packed-switch
.end method

.method private get_VerticallyScrollable()Z
    .registers 4

    const/4 v1, 0x0

    .line 1732
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 1738
    :goto_8
    return v0

    .line 1734
    :cond_9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VERTICAL_SCROLLBAR:Ljavafx/scene/AccessibleAttribute;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 1735
    if-nez v0, :cond_17

    move v0, v1

    goto :goto_8

    .line 1737
    :cond_17
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->VISIBLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1738
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8
.end method

.method private synthetic lambda$GetSelection$2(Ljavafx/scene/Node;)J
    .registers 4

    .line 1137
    invoke-virtual {p0, p1}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic lambda$Navigate$0(Lcom/sun/glass/ui/win/WinAccessible;Ljava/lang/Integer;)Ljavafx/scene/Node;
    .registers 5

    .line 993
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TREE_ITEM_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    return-object v0
.end method

.method private static synthetic lambda$Navigate$1(Ljava/util/List;Ljava/lang/Integer;)Ljavafx/scene/Node;
    .registers 3

    .line 1000
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    return-object v0
.end method

.method private notifyToggleState()V
    .registers 7

    const/4 v3, 0x3

    .line 402
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->get_ToggleState()I

    move-result v0

    .line 403
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 404
    iput-short v3, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 405
    iput v0, v1, Lcom/sun/glass/ui/win/WinVariant;->lVal:I

    .line 406
    new-instance v2, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v2}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 407
    iput-short v3, v2, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 408
    iput v0, v2, Lcom/sun/glass/ui/win/WinVariant;->lVal:I

    .line 409
    iget-wide v4, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v0, 0x7586

    invoke-static {v4, v5, v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationPropertyChangedEvent(JILcom/sun/glass/ui/win/WinVariant;Lcom/sun/glass/ui/win/WinVariant;)J

    .line 410
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 243
    invoke-super {p0}, Lcom/sun/glass/ui/Accessible;->dispose()V

    .line 244
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    if-eqz v0, :cond_11

    .line 245
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->dispose()V

    .line 246
    iput-object v1, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    .line 248
    :cond_11
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    if-eqz v0, :cond_1c

    .line 249
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->dispose()V

    .line 250
    iput-object v1, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    .line 252
    :cond_1c
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 253
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->_destroyGlassAccessible(J)V

    .line 254
    iput-wide v2, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    .line 256
    :cond_29
    return-void
.end method

.method protected getNativeAccessible()J
    .registers 3

    .line 414
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    return-wide v0
.end method

.method public sendNotification(Ljavafx/scene/AccessibleAttribute;)V
    .registers 10

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/16 v4, 0x4e25

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 399
    :cond_c
    :goto_c
    :pswitch_c  #0x5, 0xb
    return-void

    .line 263
    :cond_d
    sget-object v0, Lcom/sun/glass/ui/win/WinAccessible$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    invoke-virtual {p1}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_200

    .line 397
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto :goto_c

    .line 265
    :pswitch_20  #0x1
    invoke-virtual {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getView()Lcom/sun/glass/ui/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 267
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->GetFocus()J

    move-result-wide v0

    .line 268
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    .line 269
    invoke-static {v0, v1, v4}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto :goto_c

    .line 273
    :cond_34
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 274
    if-eqz v0, :cond_48

    .line 275
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto :goto_c

    .line 278
    :cond_48
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SCENE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Scene;

    .line 279
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_c

    .line 281
    sget-object v1, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v0, v1}, Lcom/sun/glass/ui/Accessible;->sendNotification(Ljavafx/scene/AccessibleAttribute;)V

    goto :goto_c

    .line 287
    :pswitch_5e  #0x2
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 288
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible(Ljavafx/scene/Node;)J

    move-result-wide v0

    .line 289
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    .line 290
    invoke-static {v0, v1, v4}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto :goto_c

    .line 295
    :pswitch_76  #0x3
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljavafx/scene/AccessibleRole;->CHECK_BOX:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_c

    .line 296
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->notifyToggleState()V

    goto :goto_c

    .line 301
    :pswitch_86  #0x4
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    sget-object v1, Ljavafx/scene/AccessibleRole;->CHECK_BOX:Ljavafx/scene/AccessibleRole;

    if-eq v0, v1, :cond_96

    sget-object v1, Ljavafx/scene/AccessibleRole;->TOGGLE_BUTTON:Ljavafx/scene/AccessibleRole;

    if-ne v0, v1, :cond_9b

    .line 303
    :cond_96
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->notifyToggleState()V

    goto/16 :goto_c

    .line 306
    :cond_9b
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SELECTED:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 307
    if-eqz v0, :cond_c

    .line 308
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 309
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v2, 0x4e2c

    invoke-static {v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto/16 :goto_c

    .line 311
    :cond_b6
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v2, 0x4e2b

    invoke-static {v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto/16 :goto_c

    .line 321
    :pswitch_bf  #0x6
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->VALUE:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 322
    if-eqz v0, :cond_c

    .line 323
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 324
    iput-short v6, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 325
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/glass/ui/win/WinVariant;->dblVal:D

    .line 326
    new-instance v2, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v2}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 327
    iput-short v6, v2, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 328
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/sun/glass/ui/win/WinVariant;->dblVal:D

    .line 329
    iget-wide v4, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v0, 0x755f

    invoke-static {v4, v5, v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationPropertyChangedEvent(JILcom/sun/glass/ui/win/WinVariant;Lcom/sun/glass/ui/win/WinVariant;)J

    goto/16 :goto_c

    .line 335
    :pswitch_ec  #0x7, 0x8
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    if-eqz v0, :cond_c

    .line 336
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SELECTION_START:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 337
    if-eqz v0, :cond_12e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v1}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getStart()I

    move-result v1

    if-eq v0, v1, :cond_12e

    move v1, v2

    .line 338
    :goto_109
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->SELECTION_END:Ljavafx/scene/AccessibleAttribute;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 339
    if-eqz v0, :cond_130

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    invoke-virtual {v4}, Lcom/sun/glass/ui/win/WinTextRangeProvider;->getEnd()I

    move-result v4

    if-eq v0, v4, :cond_130

    .line 343
    :goto_121
    if-nez v1, :cond_125

    if-eqz v2, :cond_c

    .line 344
    :cond_125
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v2, 0x4e2e

    invoke-static {v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto/16 :goto_c

    :cond_12e
    move v1, v3

    .line 337
    goto :goto_109

    :cond_130
    move v2, v3

    .line 339
    goto :goto_121

    .line 349
    :pswitch_132  #0x9
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    if-eqz v0, :cond_169

    .line 351
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 352
    const/16 v2, 0x8

    iput-short v2, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 353
    const-string v2, ""

    iput-object v2, v1, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    .line 354
    new-instance v2, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v2}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 355
    const/16 v4, 0x8

    iput-short v4, v2, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 356
    iput-object v0, v2, Lcom/sun/glass/ui/win/WinVariant;->bstrVal:Ljava/lang/String;

    .line 357
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->SPINNER:Ljavafx/scene/AccessibleRole;

    if-ne v0, v3, :cond_17a

    .line 358
    iget-wide v4, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v0, 0x7535

    invoke-static {v4, v5, v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationPropertyChangedEvent(JILcom/sun/glass/ui/win/WinVariant;Lcom/sun/glass/ui/win/WinVariant;)J

    .line 365
    :cond_169
    :goto_169
    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->selectionRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    if-nez v0, :cond_171

    iget-object v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->documentRange:Lcom/sun/glass/ui/win/WinTextRangeProvider;

    if-eqz v0, :cond_c

    .line 366
    :cond_171
    iget-wide v0, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v2, 0x4e2f

    invoke-static {v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationEvent(JI)J

    goto/16 :goto_c

    .line 361
    :cond_17a
    iget-wide v4, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v0, 0x755d

    invoke-static {v4, v5, v0, v1, v2}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationPropertyChangedEvent(JILcom/sun/glass/ui/win/WinVariant;Lcom/sun/glass/ui/win/WinVariant;)J

    goto :goto_169

    .line 370
    :pswitch_182  #0xa
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 371
    if-eqz v0, :cond_c

    .line 372
    new-instance v4, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v4}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 373
    iput-short v5, v4, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 374
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f2

    move v1, v3

    :goto_19c
    iput v1, v4, Lcom/sun/glass/ui/win/WinVariant;->lVal:I

    .line 375
    new-instance v1, Lcom/sun/glass/ui/win/WinVariant;

    invoke-direct {v1}, Lcom/sun/glass/ui/win/WinVariant;-><init>()V

    .line 376
    iput-short v5, v1, Lcom/sun/glass/ui/win/WinVariant;->vt:S

    .line 377
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f4

    move v0, v2

    :goto_1ac
    iput v0, v1, Lcom/sun/glass/ui/win/WinVariant;->lVal:I

    .line 378
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v5}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Ljavafx/scene/AccessibleRole;->TREE_TABLE_ROW:Ljavafx/scene/AccessibleRole;

    if-ne v0, v5, :cond_1f6

    .line 379
    invoke-direct {p0}, Lcom/sun/glass/ui/win/WinAccessible;->getContainer()Lcom/sun/glass/ui/Accessible;

    move-result-object v5

    .line 380
    sget-object v0, Ljavafx/scene/AccessibleAttribute;->INDEX:Ljavafx/scene/AccessibleAttribute;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v6}, Lcom/sun/glass/ui/win/WinAccessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 381
    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    .line 382
    sget-object v6, Ljavafx/scene/AccessibleAttribute;->CELL_AT_ROW_COLUMN:Ljavafx/scene/AccessibleAttribute;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/scene/Node;

    .line 383
    if-eqz v0, :cond_c

    .line 384
    invoke-virtual {p0, v0}, Lcom/sun/glass/ui/win/WinAccessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinAccessible;

    invoke-virtual {v0}, Lcom/sun/glass/ui/win/WinAccessible;->getNativeAccessible()J

    move-result-wide v2

    .line 385
    const/16 v0, 0x7576

    invoke-static {v2, v3, v0, v4, v1}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationPropertyChangedEvent(JILcom/sun/glass/ui/win/WinVariant;Lcom/sun/glass/ui/win/WinVariant;)J

    goto/16 :goto_c

    :cond_1f2
    move v1, v2

    .line 374
    goto :goto_19c

    :cond_1f4
    move v0, v3

    .line 377
    goto :goto_1ac

    .line 389
    :cond_1f6
    iget-wide v2, p0, Lcom/sun/glass/ui/win/WinAccessible;->peer:J

    const/16 v0, 0x7576

    invoke-static {v2, v3, v0, v4, v1}, Lcom/sun/glass/ui/win/WinAccessible;->UiaRaiseAutomationPropertyChangedEvent(JILcom/sun/glass/ui/win/WinVariant;Lcom/sun/glass/ui/win/WinVariant;)J

    goto/16 :goto_c

    .line 263
    nop

    :pswitch_data_200
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_5e  #00000002
        :pswitch_76  #00000003
        :pswitch_86  #00000004
        :pswitch_c  #00000005
        :pswitch_bf  #00000006
        :pswitch_ec  #00000007
        :pswitch_ec  #00000008
        :pswitch_132  #00000009
        :pswitch_182  #0000000a
        :pswitch_c  #0000000b
    .end packed-switch
.end method
