.class public Lcom/droid/util/config;
.super Ljava/lang/Object;
.source "config.java"


# static fields
.field public static DEBUG:Z = false

.field public static final DEVICE_CONFIG_FILE:Ljava/lang/String; = "data/boot.js"

.field public static final DIR_BUILD:Ljava/lang/String; = "build"

.field public static ENABLE_FULLSCREEN:Z = false

.field public static ENABLE_INCESSANTLY:Z = false

.field public static ENABLE_PAYCENTER:Z = false

.field public static ENABLE_PORTRAIT:Z = false

.field public static ENABLE_SYSCODE:Z = false

.field public static ENABLE_THIRDPLATFORM:Z = false

.field public static final ENCODE_UTF:Ljava/lang/String; = "UTF-8"

.field public static LANGUAGE:Ljava/lang/String; = null

.field public static final MAIN_INDEX:Ljava/lang/String; = "start"

.field public static OLD_GAME_SUPPORT:Z = false

.field public static final OLD_VER:Ljava/lang/String; = "0"

.field public static PATH_DEBUG_SERVER_VER:Ljava/lang/String; = null

.field public static final PATH_LOCAL_MD5_VER:Ljava/lang/String; = "md5.dat"

.field public static PATH_LOCAL_SERVER_VER:Ljava/lang/String; = null

.field public static PATH_LOCAL_TEMP:Ljava/lang/String; = null

.field public static final PATH_LOCAL_VER:Ljava/lang/String; = "ver.dat"

.field public static PRODUCT:Ljava/lang/String; = null

.field public static ROOT_UPDATE:Ljava/lang/String; = null

.field public static final SERVER_KEY:Ljava/lang/String; = "%@"

.field public static SERVER_VALUE:Ljava/lang/String; = null

.field public static final VER_INFO:Ljava/lang/String; = "20130301-0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    .line 13
    sput-boolean v0, Lcom/droid/util/config;->OLD_GAME_SUPPORT:Z

    .line 14
    sput-boolean v1, Lcom/droid/util/config;->ENABLE_PAYCENTER:Z

    .line 15
    sput-boolean v0, Lcom/droid/util/config;->ENABLE_SYSCODE:Z

    .line 16
    sput-boolean v0, Lcom/droid/util/config;->ENABLE_THIRDPLATFORM:Z

    .line 17
    sput-boolean v1, Lcom/droid/util/config;->ENABLE_INCESSANTLY:Z

    .line 18
    sput-boolean v0, Lcom/droid/util/config;->ENABLE_PORTRAIT:Z

    .line 19
    sput-boolean v1, Lcom/droid/util/config;->ENABLE_FULLSCREEN:Z

    .line 27
    const-string v0, "/data/data/packegename/files/build/"

    sput-object v0, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    .line 43
    const-string v0, "http://masterurl"

    sput-object v0, Lcom/droid/util/config;->SERVER_VALUE:Ljava/lang/String;

    .line 53
    const-string v0, "md5ver.dat"

    sput-object v0, Lcom/droid/util/config;->PATH_LOCAL_SERVER_VER:Ljava/lang/String;

    .line 63
    const-string v0, "update_tmp/"

    sput-object v0, Lcom/droid/util/config;->PATH_LOCAL_TEMP:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://172.16.10.185/update/masturl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/droid/util/config;->PATH_LOCAL_SERVER_VER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/droid/util/config;->PATH_DEBUG_SERVER_VER:Ljava/lang/String;

    .line 75
    const-string v0, "en"

    sput-object v0, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    .line 76
    const-string v0, "PRODUCT_ID"

    sput-object v0, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadConfig(Landroid/content/Context;)Z
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "config"

    const-string v13, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, "id":I
    if-nez v2, :cond_0

    .line 83
    const-string v10, "init ERROR"

    const-string v11, "config.xml missing. Ignoring..."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return v9

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 87
    .local v8, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v1, -0x1

    .line 88
    .local v1, "eventType":I
    :goto_1
    if-eq v1, v10, :cond_5

    .line 91
    const/4 v11, 0x2

    if-ne v1, v11, :cond_1

    .line 92
    :try_start_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "strNode":Ljava/lang/String;
    const-string v11, "string"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 94
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v8, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "name":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v8, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "value":Ljava/lang/String;
    const-class v11, Lcom/droid/util/config;

    invoke-virtual {v11, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 97
    .local v4, "sfield":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "sfield":Ljava/lang/reflect/Field;
    .end local v5    # "strNode":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_1

    .line 99
    .restart local v5    # "strNode":Ljava/lang/String;
    :cond_2
    const-string v11, "boolean"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 100
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v8, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .restart local v3    # "name":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v8, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "value_str":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v6, v10

    .line 103
    .local v6, "value":Z
    :goto_3
    const-class v11, Lcom/droid/util/config;

    invoke-virtual {v11, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 104
    .restart local v4    # "sfield":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 116
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "sfield":Ljava/lang/reflect/Field;
    .end local v5    # "strNode":Ljava/lang/String;
    .end local v6    # "value":Z
    .end local v7    # "value_str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "strNode":Ljava/lang/String;
    .restart local v7    # "value_str":Ljava/lang/String;
    :cond_3
    move v6, v9

    .line 102
    goto :goto_3

    .line 106
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "value_str":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v11, "int"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 107
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v8, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .restart local v3    # "name":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v8, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .restart local v7    # "value_str":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 110
    .local v6, "value":I
    const-class v11, Lcom/droid/util/config;

    invoke-virtual {v11, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 111
    .restart local v4    # "sfield":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "sfield":Ljava/lang/reflect/Field;
    .end local v5    # "strNode":Ljava/lang/String;
    .end local v6    # "value":I
    .end local v7    # "value_str":Ljava/lang/String;
    :cond_5
    move v9, v10

    .line 121
    goto/16 :goto_0
.end method
