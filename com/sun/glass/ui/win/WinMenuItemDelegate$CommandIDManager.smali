.class Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;
.super Ljava/lang/Object;
.source "WinMenuItemDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/win/WinMenuItemDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommandIDManager"
.end annotation


# static fields
.field private static final FIRST_ID:I = 0x1

.field private static final LAST_ID:I = 0xffff

.field private static freeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/glass/ui/win/WinMenuItemDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static nextID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->freeList:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->map:Ljava/util/Map;

    .line 142
    const/4 v0, 0x1

    sput v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->nextID:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized freeID(I)V
    .registers 4

    .line 162
    const-class v1, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    sget-object v2, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 164
    sget-object v2, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->freeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 166
    :cond_14
    monitor-exit v1

    return-void

    .line 162
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHandler(I)Lcom/sun/glass/ui/win/WinMenuItemDelegate;
    .registers 3

    .line 169
    sget-object v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate;

    return-object v0
.end method

.method public static declared-synchronized getID(Lcom/sun/glass/ui/win/WinMenuItemDelegate;)I
    .registers 4

    .line 146
    const-class v1, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->freeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 147
    sget v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->nextID:I

    const v2, 0xffff

    if-le v0, v2, :cond_15

    .line 149
    const/4 v0, 0x1

    sput v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->nextID:I

    .line 151
    :cond_15
    sget v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->nextID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 152
    sget v2, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->nextID:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->nextID:I

    .line 157
    :goto_21
    sget-object v2, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->map:Ljava/util/Map;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3d

    move-result v0

    monitor-exit v1

    return v0

    .line 155
    :cond_2c
    :try_start_2c
    sget-object v0, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->freeList:Ljava/util/List;

    sget-object v2, Lcom/sun/glass/ui/win/WinMenuItemDelegate$CommandIDManager;->freeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3d

    goto :goto_21

    .line 146
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
