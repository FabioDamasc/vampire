.class public Lcom/impaycenter/Paycenter;
.super Ljava/lang/Object;
.source "Paycenter.java"


# static fields
.field public static final DEBUG:Z

.field public static final KEY_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final KEY_CUSTOM:Ljava/lang/String; = "custom"

.field public static final KEY_GWALLET:Ljava/lang/String; = "channels/google/pay.php"

.field public static final KEY_IAP:Ljava/lang/String; = "iap"

.field public static final KEY_LNG:Ljava/lang/String; = "lng"

.field public static final KEY_NATIVE_SUPPORTS:Ljava/lang/String; = "n_supports"

.field public static final KEY_PARAMS:Ljava/lang/String; = "PARAMS"

.field public static final KEY_PAY:Ljava/lang/String; = "channels/alipay/pay_msp.php"

.field public static final KEY_PRICE_ID:Ljava/lang/String; = "price_id"

.field public static final KEY_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final KEY_URL:Ljava/lang/String;

.field public static final KEY_USER_CODE:Ljava/lang/String; = "navcode"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final KEY_WEB:Ljava/lang/String; = "web/nav.php"

.field public static final LOG_TAG:Ljava/lang/String; = "Paycenter"

.field public static final SDK_VERSION:Ljava/lang/String; = "2"

.field public static _paycenter:Lcom/impaycenter/Paycenter;

.field static custom:Ljava/lang/String;

.field static lng:Ljava/lang/String;

.field static n_supports:Ljava/lang/String;

.field static params:Ljava/lang/String;

.field static price_id:Ljava/lang/String;

.field static product_id:Ljava/lang/String;

.field static sdk_version:Ljava/lang/String;

.field static user_code:Ljava/lang/String;

.field static user_id:Ljava/lang/String;

.field static user_name:Ljava/lang/String;


# instance fields
.field lastRequestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    sput-boolean v0, Lcom/impaycenter/Paycenter;->DEBUG:Z

    .line 30
    sget-boolean v0, Lcom/impaycenter/Paycenter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "http://pay.igdx.com/"

    :goto_0
    sput-object v0, Lcom/impaycenter/Paycenter;->KEY_URL:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->params:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->product_id:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->user_id:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->user_name:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->price_id:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->custom:Ljava/lang/String;

    .line 53
    const-string v0, "2"

    sput-object v0, Lcom/impaycenter/Paycenter;->sdk_version:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->n_supports:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->lng:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/impaycenter/Paycenter;->user_code:Ljava/lang/String;

    return-void

    .line 30
    :cond_0
    const-string v0, "http://pay.impaycenter.com/"

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "paychannel"

    const-string v12, "xml"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 66
    .local v3, "id":I
    if-nez v3, :cond_0

    .line 67
    const-string v10, "init ERROR"

    const-string v11, "config.xml missing. Ignoring..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 70
    .local v9, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 71
    .local v2, "eventType":I
    :goto_0
    const/4 v10, 0x1

    if-eq v2, v10, :cond_2

    .line 74
    const/4 v10, 0x2

    if-ne v2, v10, :cond_1

    .line 75
    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "strNode":Ljava/lang/String;
    const-string v10, "string"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 77
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "value":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "params"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "params":Ljava/lang/String;
    const-string v10, "paychannel"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/impaycenter/IPayPlugin;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/impaycenter/IPayPlugin;

    .line 87
    .local v7, "tpImpl":Lcom/impaycenter/IPayPlugin;
    invoke-static {v7}, Lcom/impaycenter/PayPluginManager;->register(Lcom/impaycenter/IPayPlugin;)V

    .line 88
    invoke-interface {v7, v5}, Lcom/impaycenter/IPayPlugin;->initPayPlugin(Ljava/lang/String;)V

    .line 92
    .end local v0    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/impaycenter/IPayPlugin;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "strNode":Ljava/lang/String;
    .end local v7    # "tpImpl":Lcom/impaycenter/IPayPlugin;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public static getExtraParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/impaycenter/Paycenter;->params:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    sget-object v0, Lcom/impaycenter/Paycenter;->_paycenter:Lcom/impaycenter/Paycenter;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/impaycenter/Paycenter;

    invoke-direct {v0, p0}, Lcom/impaycenter/Paycenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/impaycenter/Paycenter;->_paycenter:Lcom/impaycenter/Paycenter;

    .line 146
    :cond_0
    sget-object v0, Lcom/impaycenter/Paycenter;->_paycenter:Lcom/impaycenter/Paycenter;

    return-object v0
.end method

.method public static getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/impaycenter/Paycenter;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public static getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/impaycenter/Paycenter;->product_id:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/impaycenter/Paycenter;->user_code:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/impaycenter/Paycenter;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/impaycenter/Paycenter;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public static httpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "http":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 213
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 215
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 221
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v3

    .line 221
    :cond_0
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 218
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static httpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 191
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 193
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 195
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 203
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v3

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 203
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_1
    const-string v3, "FAILED,"

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public finishPlatform()V
    .locals 3

    .prologue
    .line 174
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 175
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->finishPlatform()V

    goto :goto_0

    .line 177
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method

.method public init(Lcom/impaycenter/IPayPluginCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Lcom/impaycenter/IPayPluginCallback;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "uname"    # Ljava/lang/String;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "code"    # Ljava/lang/String;

    .prologue
    .line 101
    sput-object p2, Lcom/impaycenter/Paycenter;->product_id:Ljava/lang/String;

    .line 102
    sput-object p3, Lcom/impaycenter/Paycenter;->user_id:Ljava/lang/String;

    .line 103
    sput-object p4, Lcom/impaycenter/Paycenter;->user_name:Ljava/lang/String;

    .line 104
    sput-object p5, Lcom/impaycenter/Paycenter;->lng:Ljava/lang/String;

    .line 105
    sput-object p6, Lcom/impaycenter/Paycenter;->user_code:Ljava/lang/String;

    .line 106
    sput-object p1, Lcom/impaycenter/PayPluginManager;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    .line 107
    return-void
.end method

.method public initPayPlugin(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 163
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1, p1}, Lcom/impaycenter/IPayPlugin;->initPayPlugin(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 181
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 182
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1, p1, p2, p3}, Lcom/impaycenter/IPayPlugin;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 184
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 168
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 169
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->onPause()V

    goto :goto_0

    .line 171
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 156
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 157
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->onResume()V

    goto :goto_0

    .line 159
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "jscall_params"    # Ljava/lang/String;

    .prologue
    .line 110
    iput p2, p0, Lcom/impaycenter/Paycenter;->lastRequestCode:I

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/impaycenter/PaycenterActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "bd":Landroid/os/Bundle;
    const-string v2, "PARAMS"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public startPlatform(Landroid/content/Context;Lcom/impaycenter/IPayPluginCallback;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/impaycenter/IPayPluginCallback;
    .param p3, "orient"    # I

    .prologue
    .line 150
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 151
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1, p1, p2, p3}, Lcom/impaycenter/IPayPlugin;->startPlatform(Landroid/content/Context;Lcom/impaycenter/IPayPluginCallback;I)V

    goto :goto_0

    .line 153
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method
