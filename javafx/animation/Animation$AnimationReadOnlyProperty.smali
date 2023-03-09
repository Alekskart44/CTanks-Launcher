.class Ljavafx/animation/Animation$AnimationReadOnlyProperty;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationReadOnlyProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/animation/Animation;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->this$0:Ljavafx/animation/Animation;

    invoke-direct {p0}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    .line 243
    iput-object p2, p0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->name:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->value:Ljava/lang/Object;

    .line 245
    return-void
.end method

.method private set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->value:Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->fireValueChangedEvent()V

    .line 265
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .registers 2

    .line 249
    iget-object v0, p0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->this$0:Ljavafx/animation/Animation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->name:Ljava/lang/String;

    return-object v0
.end method
