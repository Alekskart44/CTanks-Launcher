.class public final Lcom/sun/glass/ui/View$Capability;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capability"
.end annotation


# static fields
.field public static final k3dDepthKey:Ljava/lang/Object;

.field public static final k3dDepthKeyValue:I = 0x4

.field public static final k3dKey:Ljava/lang/Object;

.field public static final k3dKeyValue:I = 0x0

.field public static final k3dProjectionAngleKey:Ljava/lang/Object;

.field public static final k3dProjectionAngleKeyValue:I = 0x3

.field public static final k3dProjectionKey:Ljava/lang/Object;

.field public static final k3dProjectionKeyValue:I = 0x2

.field public static final kHiDPIAwareKey:Ljava/lang/Object;

.field public static final kHiDPIAwareKeyValue:I = 0x5

.field public static final kSyncKey:Ljava/lang/Object;

.field public static final kSyncKeyValue:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 415
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/View$Capability;->k3dKey:Ljava/lang/Object;

    .line 416
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/View$Capability;->kSyncKey:Ljava/lang/Object;

    .line 417
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/View$Capability;->k3dProjectionKey:Ljava/lang/Object;

    .line 418
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/View$Capability;->k3dProjectionAngleKey:Ljava/lang/Object;

    .line 419
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/View$Capability;->k3dDepthKey:Ljava/lang/Object;

    .line 420
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/View$Capability;->kHiDPIAwareKey:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
