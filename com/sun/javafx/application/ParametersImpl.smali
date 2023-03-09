.class public Lcom/sun/javafx/application/ParametersImpl;
.super Ljavafx/application/Application$Parameters;
.source "ParametersImpl.java"


# static fields
.field private static params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/application/Application;",
            "Ljavafx/application/Application$Parameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private namedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readonlyNamedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readonlyRawArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readonlyUnnamedParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unnamedParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/ParametersImpl;->params:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 71
    if-eqz p1, :cond_24

    .line 72
    invoke-direct {p0, p1}, Lcom/sun/javafx/application/ParametersImpl;->init(Ljava/util/List;)V

    .line 74
    :cond_24
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sun/javafx/application/ParametersImpl;->init(Ljava/util/Map;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 83
    if-eqz p1, :cond_28

    .line 84
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/javafx/application/ParametersImpl;->init(Ljava/util/List;)V

    .line 86
    :cond_28
    return-void
.end method

.method private computeNamedParams()V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-direct {p0, v0}, Lcom/sun/javafx/application/ParametersImpl;->isNamedParam(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 209
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 210
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 211
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 215
    :cond_2f
    return-void
.end method

.method private computeRawArgs()V
    .registers 5

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    iget-object v3, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-custom {v0, v1}, call_site_2987("makeConcatWithConstants", (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, "--\u0001=\u0001")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 230
    :cond_33
    return-void
.end method

.method private computeUnnamedParams()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-direct {p0, v0}, Lcom/sun/javafx/application/ParametersImpl;->isNamedParam(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 196
    iget-object v2, p0, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 199
    :cond_1e
    return-void
.end method

.method public static getParameters(Ljavafx/application/Application;)Ljavafx/application/Application$Parameters;
    .registers 2

    .line 256
    sget-object v0, Lcom/sun/javafx/application/ParametersImpl;->params:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavafx/application/Application$Parameters;

    .line 257
    return-object v0
.end method

.method private init(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    if-eqz v0, :cond_4

    .line 108
    iget-object v2, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 111
    :cond_18
    invoke-direct {p0}, Lcom/sun/javafx/application/ParametersImpl;->computeNamedParams()V

    .line 112
    invoke-direct {p0}, Lcom/sun/javafx/application/ParametersImpl;->computeUnnamedParams()V

    .line 113
    return-void
.end method

.method private init(Ljava/util/Map;[Ljava/lang/String;)V
    .registers 7

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Lcom/sun/javafx/application/ParametersImpl;->validKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 126
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 128
    iget-object v3, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 133
    :cond_30
    invoke-direct {p0}, Lcom/sun/javafx/application/ParametersImpl;->computeRawArgs()V

    .line 134
    if-eqz p2, :cond_48

    .line 135
    array-length v1, p2

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_48

    aget-object v2, p2, v0

    .line 136
    iget-object v3, p0, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v3, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 140
    :cond_48
    return-void
.end method

.method private isNamedParam(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 182
    const-string v1, "--"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 183
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v2, :cond_1d

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/sun/javafx/application/ParametersImpl;->validFirstChar(C)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    .line 185
    :cond_1d
    return v0
.end method

.method public static registerParameters(Ljavafx/application/Application;Ljavafx/application/Application$Parameters;)V
    .registers 3

    .line 261
    sget-object v0, Lcom/sun/javafx/application/ParametersImpl;->params:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method private validFirstChar(C)Z
    .registers 3

    .line 151
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x5f

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private validKey(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    .line 163
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 164
    check-cast p1, Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1d

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/javafx/application/ParametersImpl;->validFirstChar(C)Z

    move-result v0

    .line 170
    :cond_1d
    return v0
.end method


# virtual methods
.method public getNamed()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 241
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 243
    :cond_c
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    return-object v0
.end method

.method public getRaw()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    if-nez v0, :cond_c

    .line 234
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 236
    :cond_c
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    return-object v0
.end method

.method public getUnnamed()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    if-nez v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 250
    :cond_c
    iget-object v0, p0, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    return-object v0
.end method
