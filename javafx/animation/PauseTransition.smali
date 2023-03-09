.class public final Ljavafx/animation/PauseTransition;
.super Ljavafx/animation/Transition;
.source "PauseTransition.java"


# static fields
.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;


# instance fields
.field private duration:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 93
    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 151
    sget-object v0, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {p0, v0}, Ljavafx/animation/PauseTransition;-><init>(Ljavafx/util/Duration;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljavafx/animation/Transition;-><init>()V

    .line 143
    invoke-virtual {p0, p1}, Ljavafx/animation/PauseTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 144
    invoke-virtual {p0, p1}, Ljavafx/animation/PauseTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final durationProperty()Ljavafx/beans/property/ObjectProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_d

    .line 107
    new-instance v0, Ljavafx/animation/PauseTransition$1;

    sget-object v1, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v0, p0, v1}, Ljavafx/animation/PauseTransition$1;-><init>(Ljavafx/animation/PauseTransition;Ljavafx/util/Duration;)V

    iput-object v0, p0, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 133
    :cond_d
    iget-object v0, p0, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    return-object v0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .registers 2

    .line 102
    iget-object v0, p0, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_7

    sget-object v0, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v0}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/util/Duration;

    goto :goto_6
.end method

.method public interpolate(D)V
    .registers 3

    .line 160
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .registers 3

    .line 96
    iget-object v0, p0, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v0, :cond_c

    sget-object v0, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-virtual {v0, p1}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 97
    :cond_c
    invoke-virtual {p0}, Ljavafx/animation/PauseTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 99
    :cond_13
    return-void
.end method
