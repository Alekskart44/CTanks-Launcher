.class public Lcom/example/demo/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static LANG:Ljava/lang/String;

.field private static pathToConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "RU"

    sput-object v0, Lcom/example/demo/Settings;->LANG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLang()Ljava/lang/String;
    .registers 1

    .line 124
    sget-object v0, Lcom/example/demo/Settings;->LANG:Ljava/lang/String;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)V
    .registers 9
    .param p0, "path"  # Ljava/lang/String;

    .line 15
    sput-object p0, Lcom/example/demo/Settings;->pathToConfig:Ljava/lang/String;

    .line 18
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_10

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_10
    sget-object v7, Lcom/example/demo/Settings;->pathToConfig:Ljava/lang/String;

    invoke-custom {v7}, call_site_2750("makeConcatWithConstants", (Ljava/lang/String;)Ljava/lang/String;, "\u0001\\launcher.properties")@Ljava/lang/invoke/StringConcatFactory;->makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;

    move-result-object v7

    sput-object v7, Lcom/example/demo/Settings;->pathToConfig:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/example/demo/Settings;->pathToConfig:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2b

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 27
    invoke-static {}, Lcom/example/demo/Settings;->update()V

    .line 30
    :cond_2b
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 31
    .local v3, "properties":Ljava/util/Properties;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_59

    .line 32
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 35
    .local v6, "var5":Ljava/lang/Throwable;
    :try_start_36
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 36
    const-string v7, "locale"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/example/demo/Settings;->LANG:Ljava/lang/String;

    .line 37
    sget-object v7, Lcom/example/demo/Settings;->LANG:Ljava/lang/String;

    if-nez v7, :cond_4c

    .line 38
    const-string v7, "RU"

    sput-object v7, Lcom/example/demo/Settings;->LANG:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/example/demo/Settings;->update()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4c} :catch_5f
    .catchall {:try_start_36 .. :try_end_4c} :catchall_62

    .line 45
    :cond_4c
    if-eqz v2, :cond_53

    .line 46
    if-eqz v6, :cond_5b

    .line 48
    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_59

    .line 62
    .end local v0  # "dir":Ljava/io/File;
    .end local v1  # "file":Ljava/io/File;
    .end local v2  # "fis":Ljava/io/FileInputStream;
    .end local v3  # "properties":Ljava/util/Properties;
    .end local v6  # "var5":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    return-void

    .line 49
    .restart local v0  # "dir":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    .restart local v2  # "fis":Ljava/io/FileInputStream;
    .restart local v3  # "properties":Ljava/util/Properties;
    .restart local v6  # "var5":Ljava/lang/Throwable;
    :catch_54
    move-exception v4

    .line 50
    .local v4, "var14":Ljava/lang/Throwable;
    :try_start_55
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_53

    .line 58
    .end local v0  # "dir":Ljava/io/File;
    .end local v1  # "file":Ljava/io/File;
    .end local v2  # "fis":Ljava/io/FileInputStream;
    .end local v3  # "properties":Ljava/util/Properties;
    .end local v4  # "var14":Ljava/lang/Throwable;
    .end local v6  # "var5":Ljava/lang/Throwable;
    :catch_59
    move-exception v7

    goto :goto_53

    .line 53
    .restart local v0  # "dir":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    .restart local v2  # "fis":Ljava/io/FileInputStream;
    .restart local v3  # "properties":Ljava/util/Properties;
    .restart local v6  # "var5":Ljava/lang/Throwable;
    :cond_5b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_59

    goto :goto_53

    .line 41
    :catch_5f
    move-exception v5

    .line 42
    .local v5, "var15":Ljava/lang/Throwable;
    move-object v6, v5

    .line 43
    :try_start_61
    throw v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 45
    .end local v5  # "var15":Ljava/lang/Throwable;
    :catchall_62
    move-exception v7

    if-eqz v2, :cond_6a

    .line 46
    if-eqz v6, :cond_70

    .line 48
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_59

    .line 57
    :cond_6a
    :goto_6a
    :try_start_6a
    throw v7

    .line 49
    :catch_6b
    move-exception v4

    .line 50
    .restart local v4  # "var14":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 53
    .end local v4  # "var14":Ljava/lang/Throwable;
    :cond_70
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_59

    goto :goto_6a
.end method

.method public static update()V
    .registers 12

    .line 65
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "update"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v10, Lcom/example/demo/Settings;->LANG:Ljava/lang/String;

    invoke-static {}, Lcom/example/demo/locale/LocaleRegistry;->getCurrentLang()Lcom/example/demo/locale/LangEnum;

    move-result-object v11

    invoke-virtual {v11}, Lcom/example/demo/locale/LangEnum;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_58

    .line 67
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "update2"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    :try_start_1e
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v10, Lcom/example/demo/Settings;->pathToConfig:Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_6a

    .line 71
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 74
    .local v3, "var1":Ljava/lang/Throwable;
    :try_start_26
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v10, Lcom/example/demo/Settings;->pathToConfig:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2d} :catch_5e
    .catchall {:try_start_26 .. :try_end_2d} :catchall_61

    .line 75
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 78
    .local v7, "var3":Ljava/lang/Throwable;
    :try_start_2e
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 79
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 80
    const-string v10, "locale"

    invoke-static {}, Lcom/example/demo/locale/LocaleRegistry;->getCurrentLang()Lcom/example/demo/locale/LangEnum;

    move-result-object v11

    invoke-virtual {v11}, Lcom/example/demo/locale/LangEnum;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/example/demo/Settings;->LANG:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v10, "CTanks Standlone"

    invoke-virtual {v2, v1, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_4a} :catch_73
    .catchall {:try_start_2e .. :try_end_4a} :catchall_76

    .line 86
    if-eqz v0, :cond_51

    .line 87
    if-eqz v7, :cond_6f

    .line 89
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_59
    .catchall {:try_start_4e .. :try_end_51} :catchall_61

    .line 103
    :cond_51
    :goto_51
    if-eqz v1, :cond_58

    .line 104
    if-eqz v3, :cond_8d

    .line 106
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_88
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_6a

    .line 121
    .end local v0  # "fis":Ljava/io/FileInputStream;
    .end local v2  # "properties":Ljava/util/Properties;
    .end local v7  # "var3":Ljava/lang/Throwable;
    :cond_58
    :goto_58
    return-void

    .line 90
    .restart local v0  # "fis":Ljava/io/FileInputStream;
    .restart local v2  # "properties":Ljava/util/Properties;
    .restart local v7  # "var3":Ljava/lang/Throwable;
    :catch_59
    move-exception v5

    .line 91
    .local v5, "var27":Ljava/lang/Throwable;
    :try_start_5a
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_61

    goto :goto_51

    .line 99
    .end local v0  # "fis":Ljava/io/FileInputStream;
    .end local v2  # "properties":Ljava/util/Properties;
    .end local v5  # "var27":Ljava/lang/Throwable;
    .end local v7  # "var3":Ljava/lang/Throwable;
    :catch_5e
    move-exception v8

    .line 100
    .local v8, "var30":Ljava/lang/Throwable;
    move-object v3, v8

    .line 101
    :try_start_60
    throw v8
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 103
    .end local v8  # "var30":Ljava/lang/Throwable;
    :catchall_61
    move-exception v10

    if-eqz v1, :cond_69

    .line 104
    if-eqz v3, :cond_96

    .line 106
    :try_start_66
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_69} :catch_91
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    .line 115
    :cond_69
    :goto_69
    :try_start_69
    throw v10
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6a} :catch_6a

    .line 116
    :catch_6a
    move-exception v9

    .line 117
    .local v9, "var32":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/example/demo/alerts/ErrorAlertManager;->showErrorAlert(Ljava/lang/Exception;)V

    goto :goto_58

    .line 94
    .end local v9  # "var32":Ljava/lang/Exception;
    .restart local v0  # "fis":Ljava/io/FileInputStream;
    .restart local v2  # "properties":Ljava/util/Properties;
    .restart local v7  # "var3":Ljava/lang/Throwable;
    :cond_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_5e
    .catchall {:try_start_6f .. :try_end_72} :catchall_61

    goto :goto_51

    .line 82
    .end local v2  # "properties":Ljava/util/Properties;
    :catch_73
    move-exception v6

    .line 83
    .local v6, "var28":Ljava/lang/Throwable;
    move-object v7, v6

    .line 84
    :try_start_75
    throw v6
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    .line 86
    .end local v6  # "var28":Ljava/lang/Throwable;
    :catchall_76
    move-exception v10

    if-eqz v0, :cond_7e

    .line 87
    if-eqz v7, :cond_84

    .line 89
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_7f
    .catchall {:try_start_7b .. :try_end_7e} :catchall_61

    .line 98
    :cond_7e
    :goto_7e
    :try_start_7e
    throw v10

    .line 90
    :catch_7f
    move-exception v5

    .line 91
    .restart local v5  # "var27":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 94
    .end local v5  # "var27":Ljava/lang/Throwable;
    :cond_84
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_87} :catch_5e
    .catchall {:try_start_7e .. :try_end_87} :catchall_61

    goto :goto_7e

    .line 107
    .restart local v2  # "properties":Ljava/util/Properties;
    :catch_88
    move-exception v4

    .line 108
    .local v4, "var26":Ljava/lang/Throwable;
    :try_start_89
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_58

    .line 111
    .end local v4  # "var26":Ljava/lang/Throwable;
    :cond_8d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_58

    .line 107
    .end local v0  # "fis":Ljava/io/FileInputStream;
    .end local v2  # "properties":Ljava/util/Properties;
    .end local v7  # "var3":Ljava/lang/Throwable;
    :catch_91
    move-exception v4

    .line 108
    .restart local v4  # "var26":Ljava/lang/Throwable;
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_69

    .line 111
    .end local v4  # "var26":Ljava/lang/Throwable;
    :cond_96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_99} :catch_6a

    goto :goto_69
.end method
