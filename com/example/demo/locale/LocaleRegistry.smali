.class public Lcom/example/demo/locale/LocaleRegistry;
.super Ljava/lang/Object;
.source "LocaleRegistry.java"


# static fields
.field private static currentLang:Lcom/example/demo/locale/LangEnum;

.field private static en2ru:Ljava/util/Map;
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

.field private static enLocale:Ljava/util/Map;
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

.field private static ru2en:Ljava/util/Map;
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

.field private static ruLocale:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/example/demo/locale/LocaleRegistry;->en2ru:Ljava/util/Map;

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/example/demo/locale/LocaleRegistry;->ru2en:Ljava/util/Map;

    .line 34
    sget-object v2, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    sput-object v2, Lcom/example/demo/locale/LocaleRegistry;->currentLang:Lcom/example/demo/locale/LangEnum;

    .line 35
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "downloadClient"

    const-string v4, "Download client..."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "downloadfiles"

    const-string v4, "Download files..."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "downloadfilesdone"

    const-string v4, "Download files. Done"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "unpackingfiles"

    const-string v4, "Unpacking..."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "panelmain"

    const-string v4, "General"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "panelforum"

    const-string v4, "Forum"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "panelratings"

    const-string v4, "Ratings"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "panelpayments"

    const-string v4, "Donate"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "panelwiki"

    const-string v4, "WIKI"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    const-string v3, "panelvk"

    const-string v4, "VKontakte"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "downloadClient"

    const-string v4, "Скачивание файлов клиента..."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "downloadfiles"

    const-string v4, "Скачивание файлов..."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "downloadfilesdone"

    const-string v4, "Скачивание файлов завершенно"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "unpackingfiles"

    const-string v4, "Распаковка..."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "panelmain"

    const-string v4, "Главная"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "panelratings"

    const-string v4, "Рейтинги"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "panelforum"

    const-string v4, "Форум"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "panelpayments"

    const-string v4, "Пополнить счёт"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "panelwiki"

    const-string v4, "Вики"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    const-string v3, "panelvk"

    const-string v4, "ВКонтакте"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/example/demo/locale/LocaleConsts;->dump()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    .local v1, "var0":Ljava/util/Iterator;
    :goto_dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "localeId":Ljava/lang/String;
    sget-object v4, Lcom/example/demo/locale/LocaleRegistry;->en2ru:Ljava/util/Map;

    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v4, Lcom/example/demo/locale/LocaleRegistry;->ru2en:Ljava/util/Map;

    sget-object v2, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dc

    .line 63
    .end local v0  # "localeId":Ljava/lang/String;
    :cond_113
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLang()Lcom/example/demo/locale/LangEnum;
    .registers 1

    .line 26
    sget-object v0, Lcom/example/demo/locale/LocaleRegistry;->currentLang:Lcom/example/demo/locale/LangEnum;

    if-nez v0, :cond_7

    sget-object v0, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/example/demo/locale/LocaleRegistry;->currentLang:Lcom/example/demo/locale/LangEnum;

    goto :goto_6
.end method

.method public static getLocalizationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "localeId"  # Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/example/demo/locale/LocaleRegistry;->currentLang:Lcom/example/demo/locale/LangEnum;

    sget-object v1, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/example/demo/locale/LocaleRegistry;->ruLocale:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/example/demo/locale/LocaleRegistry;->enLocale:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public static setCurrentLang(Lcom/example/demo/locale/LangEnum;)V
    .registers 1
    .param p0, "lang"  # Lcom/example/demo/locale/LangEnum;

    .line 21
    sput-object p0, Lcom/example/demo/locale/LocaleRegistry;->currentLang:Lcom/example/demo/locale/LangEnum;

    .line 22
    invoke-static {}, Lcom/example/demo/Settings;->update()V

    .line 23
    return-void
.end method

.method public static transformLocalizationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeString"  # Ljava/lang/String;

    .line 16
    sget-object v1, Lcom/example/demo/locale/LocaleRegistry;->currentLang:Lcom/example/demo/locale/LangEnum;

    sget-object v2, Lcom/example/demo/locale/LangEnum;->RU:Lcom/example/demo/locale/LangEnum;

    if-ne v1, v2, :cond_12

    sget-object v1, Lcom/example/demo/locale/LocaleRegistry;->en2ru:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 17
    .local v0, "transformedString":Ljava/lang/String;
    :goto_f
    if-nez v0, :cond_1c

    .end local p0  # "localeString":Ljava/lang/String;
    :goto_11
    return-object p0

    .line 16
    .end local v0  # "transformedString":Ljava/lang/String;
    .restart local p0  # "localeString":Ljava/lang/String;
    :cond_12
    sget-object v1, Lcom/example/demo/locale/LocaleRegistry;->ru2en:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_f

    .restart local v0  # "transformedString":Ljava/lang/String;
    :cond_1c
    move-object p0, v0

    .line 17
    goto :goto_11
.end method
