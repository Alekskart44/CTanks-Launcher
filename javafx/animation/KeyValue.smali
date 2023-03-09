.class public final Ljavafx/animation/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;


# instance fields
.field private final endValue:Ljava/lang/Object;

.field private final interpolator:Ljavafx/animation/Interpolator;

.field private final target:Ljavafx/beans/value/WritableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WritableValue",
            "<*>;"
        }
    .end annotation
.end field

.field private final type:Lcom/sun/javafx/animation/KeyValueType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-class v0, Ljavafx/animation/KeyValue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljavafx/animation/KeyValue;->$assertionsDisabled:Z

    .line 67
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    sput-object v0, Ljavafx/animation/KeyValue;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    .line 70
    new-instance v0, Ljavafx/animation/KeyValue$1;

    invoke-direct {v0}, Ljavafx/animation/KeyValue$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/animation/KeyValueHelper;->setKeyValueAccessor(Lcom/sun/javafx/animation/KeyValueHelper$KeyValueAccessor;)V

    .line 75
    return-void

    .line 65
    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljavafx/beans/value/WritableValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "endValue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/WritableValue",
            "<TT;>;TT;)V"
        }
    .end annotation

    .line 163
    sget-object v0, Ljavafx/animation/KeyValue;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    invoke-direct {p0, p1, p2, v0}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V
    .registers 6
    .param p1  # Ljavafx/beans/value/WritableValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "endValue"
        .end annotation
    .end param
    .param p3  # Ljavafx/animation/Interpolator;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "interpolator"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/WritableValue",
            "<TT;>;TT;",
            "Ljavafx/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p1, :cond_d

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Target needs to be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_d
    if-nez p3, :cond_17

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Interpolator needs to be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_17
    iput-object p1, p0, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    .line 140
    iput-object p2, p0, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    .line 141
    iput-object p3, p0, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    .line 142
    instance-of v0, p1, Ljavafx/beans/value/WritableNumberValue;

    if-eqz v0, :cond_42

    instance-of v0, p1, Ljavafx/beans/value/WritableDoubleValue;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->DOUBLE:Lcom/sun/javafx/animation/KeyValueType;

    .line 148
    :goto_27
    iput-object v0, p0, Ljavafx/animation/KeyValue;->type:Lcom/sun/javafx/animation/KeyValueType;

    .line 149
    return-void

    .line 143
    :cond_2a
    instance-of v0, p1, Ljavafx/beans/value/WritableIntegerValue;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->INTEGER:Lcom/sun/javafx/animation/KeyValueType;

    goto :goto_27

    .line 144
    :cond_31
    instance-of v0, p1, Ljavafx/beans/value/WritableFloatValue;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->FLOAT:Lcom/sun/javafx/animation/KeyValueType;

    goto :goto_27

    .line 145
    :cond_38
    instance-of v0, p1, Ljavafx/beans/value/WritableLongValue;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->LONG:Lcom/sun/javafx/animation/KeyValueType;

    goto :goto_27

    .line 146
    :cond_3f
    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->OBJECT:Lcom/sun/javafx/animation/KeyValueType;

    goto :goto_27

    .line 147
    :cond_42
    instance-of v0, p1, Ljavafx/beans/value/WritableBooleanValue;

    if-eqz v0, :cond_49

    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->BOOLEAN:Lcom/sun/javafx/animation/KeyValueType;

    goto :goto_27

    .line 148
    :cond_49
    sget-object v0, Lcom/sun/javafx/animation/KeyValueType;->OBJECT:Lcom/sun/javafx/animation/KeyValueType;

    goto :goto_27
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    if-ne p0, p1, :cond_5

    .line 213
    :cond_4
    :goto_4
    return v0

    .line 203
    :cond_5
    instance-of v2, p1, Ljavafx/animation/KeyValue;

    if-eqz v2, :cond_4e

    .line 204
    check-cast p1, Ljavafx/animation/KeyValue;

    .line 205
    sget-boolean v2, Ljavafx/animation/KeyValue;->$assertionsDisabled:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    if-eqz v2, :cond_1f

    iget-object v2, p1, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    if-eqz v2, :cond_1f

    iget-object v2, p1, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    if-nez v2, :cond_25

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 208
    :cond_25
    iget-object v2, p0, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    iget-object v3, p1, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_43

    iget-object v2, p1, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_41

    .line 210
    :goto_37
    iget-object v2, p0, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    iget-object v3, p1, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_41
    move v0, v1

    goto :goto_4

    .line 208
    :cond_43
    iget-object v2, p0, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    iget-object v3, p1, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_37

    :cond_4e
    move v0, v1

    .line 213
    goto :goto_4
.end method

.method public getEndValue()Ljava/lang/Object;
    .registers 2

    .line 100
    iget-object v0, p0, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getInterpolator()Ljavafx/animation/Interpolator;
    .registers 2

    .line 112
    iget-object v0, p0, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    return-object v0
.end method

.method public getTarget()Ljavafx/beans/value/WritableValue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/value/WritableValue",
            "<*>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    return-object v0
.end method

.method getType()Lcom/sun/javafx/animation/KeyValueType;
    .registers 2

    .line 78
    iget-object v0, p0, Ljavafx/animation/KeyValue;->type:Lcom/sun/javafx/animation/KeyValueType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 182
    sget-boolean v0, Ljavafx/animation/KeyValue;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    if-nez v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :cond_12
    iget-object v0, p0, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    .line 187
    iget-object v0, p0, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    :goto_21
    add-int/2addr v0, v1

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    return v0

    .line 187
    :cond_2c
    iget-object v0, p0, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 172
    iget-object v0, p0, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    iget-object v1, p0, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    iget-object v2, p0, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    invoke-custom {v0, v1, v2}, call_site_2242("makeConcatWithConstants", (Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)Ljava/lang/String;, "KeyValue [target=\u0001, endValue=\u0001, interpolator=\u0001]")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    return-object v0
.end method
