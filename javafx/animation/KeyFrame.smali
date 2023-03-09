.class public final Ljavafx/animation/KeyFrame;
.super Ljava/lang/Object;
.source "KeyFrame.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_NAME:Ljava/lang/String;

.field private static final DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final onFinished:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final time:Ljavafx/util/Duration;

.field private final values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/animation/KeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 56
    const-class v0, Ljavafx/animation/KeyFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Ljavafx/animation/KeyFrame;->$assertionsDisabled:Z

    .line 58
    sput-object v1, Ljavafx/animation/KeyFrame;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    .line 59
    sput-object v1, Ljavafx/animation/KeyFrame;->DEFAULT_NAME:Ljava/lang/String;

    return-void

    .line 56
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;Ljava/util/Collection;)V
    .registers 8
    .param p1  # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p3  # Ljavafx/event/EventHandler;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "onFinished"
        .end annotation
    .end param
    .param p4  # Ljava/util/Collection;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Duration;",
            "Ljava/lang/String;",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljavafx/animation/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-nez p1, :cond_d

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The time has to be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_d
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {p1, v0}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    invoke-virtual {p1, v0}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 151
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The time is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_25
    iput-object p1, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    .line 154
    iput-object p2, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    .line 155
    if-eqz p4, :cond_5e

    .line 156
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, p4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 157
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_43

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 161
    :goto_3e
    iput-object v0, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    .line 165
    :goto_40
    iput-object p3, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    .line 166
    return-void

    .line 159
    :cond_43
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 160
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/KeyValue;

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_3e

    .line 161
    :cond_59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_3e

    .line 163
    :cond_5e
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    goto :goto_40
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V
    .registers 9
    .param p1  # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p3  # Ljavafx/event/EventHandler;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "onFinished"
        .end annotation
    .end param
    .param p4  # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Duration;",
            "Ljava/lang/String;",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;[",
            "Ljavafx/animation/KeyValue;",
            ")V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    if-nez p1, :cond_d

    .line 190
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The time has to be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_d
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {p1, v0}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    invoke-virtual {p1, v0}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 193
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The time is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_25
    iput-object p1, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    .line 196
    iput-object p2, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    .line 197
    if-eqz p4, :cond_68

    .line 198
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 199
    array-length v2, p4

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v2, :cond_3e

    aget-object v3, p4, v0

    .line 200
    if-eqz v3, :cond_3b

    .line 201
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 204
    :cond_3e
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 207
    :goto_48
    iput-object v0, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    .line 211
    :goto_4a
    iput-object p3, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    .line 212
    return-void

    .line 205
    :cond_4d
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_63

    .line 206
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/animation/KeyValue;

    .line 205
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_48

    .line 207
    :cond_63
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_48

    .line 209
    :cond_68
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    goto :goto_4a
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;Ljava/lang/String;[Ljavafx/animation/KeyValue;)V
    .registers 5
    .param p1  # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p3  # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param

    .line 248
    sget-object v0, Ljavafx/animation/KeyFrame;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    invoke-direct {p0, p1, p2, v0, p3}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    .line 249
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V
    .registers 5
    .param p1  # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2  # Ljavafx/event/EventHandler;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "onFinished"
        .end annotation
    .end param
    .param p3  # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Duration;",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;[",
            "Ljavafx/animation/KeyValue;",
            ")V"
        }
    .end annotation

    .line 230
    sget-object v0, Ljavafx/animation/KeyFrame;->DEFAULT_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    .line 231
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V
    .registers 5
    .param p1  # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2  # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param

    .line 264
    sget-object v0, Ljavafx/animation/KeyFrame;->DEFAULT_NAME:Ljava/lang/String;

    sget-object v1, Ljavafx/animation/KeyFrame;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    invoke-direct {p0, p1, v0, v1, p2}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    .line 265
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-ne p0, p1, :cond_5

    .line 316
    :cond_4
    :goto_4
    return v0

    .line 306
    :cond_5
    instance-of v2, p1, Ljavafx/animation/KeyFrame;

    if-eqz v2, :cond_61

    .line 307
    check-cast p1, Ljavafx/animation/KeyFrame;

    .line 308
    sget-boolean v2, Ljavafx/animation/KeyFrame;->$assertionsDisabled:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    if-eqz v2, :cond_1f

    iget-object v2, p1, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    if-eqz v2, :cond_1f

    iget-object v2, p1, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    if-nez v2, :cond_25

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 310
    :cond_25
    iget-object v2, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    iget-object v3, p1, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    if-nez v2, :cond_4b

    iget-object v2, p1, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    if-nez v2, :cond_49

    .line 311
    :goto_37
    iget-object v2, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    if-nez v2, :cond_56

    iget-object v2, p1, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    if-nez v2, :cond_49

    .line 313
    :goto_3f
    iget-object v2, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    iget-object v3, p1, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    .line 314
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_49
    move v0, v1

    goto :goto_4

    .line 310
    :cond_4b
    iget-object v2, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    iget-object v3, p1, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_37

    :cond_56
    iget-object v2, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    iget-object v3, p1, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_3f

    :cond_61
    move v0, v1

    .line 316
    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnFinished()Ljavafx/event/EventHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    return-object v0
.end method

.method public getTime()Ljavafx/util/Duration;
    .registers 2

    .line 80
    iget-object v0, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/animation/KeyValue;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    .line 283
    sget-boolean v0, Ljavafx/animation/KeyFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    if-nez v0, :cond_13

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 286
    :cond_13
    iget-object v0, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    invoke-virtual {v0}, Ljavafx/util/Duration;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 287
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    if-nez v0, :cond_34

    move v0, v1

    :goto_22
    add-int/2addr v0, v2

    .line 288
    mul-int/lit8 v0, v0, 0x1f

    .line 289
    iget-object v2, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    if-nez v2, :cond_3b

    :goto_29
    add-int/2addr v0, v1

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    return v0

    .line 287
    :cond_34
    iget-object v0, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_22

    .line 289
    :cond_3b
    iget-object v1, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_29
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 273
    iget-object v0, p0, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    iget-object v1, p0, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    iget-object v2, p0, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    iget-object v3, p0, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    invoke-custom {v0, v1, v2, v3}, call_site_1288("makeConcatWithConstants", (Ljavafx/util/Duration;Ljava/util/Set;Ljavafx/event/EventHandler;Ljava/lang/String;)Ljava/lang/String;, "KeyFrame [time=\u0001, values=\u0001, onFinished=\u0001, name=\u0001]")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method
