.class public Lcom/impaycenter/PaycenterActivity;
.super Landroid/app/Activity;
.source "PaycenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/impaycenter/PaycenterActivity$PPWebViewClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "PaycenterActivity"


# instance fields
.field protected appView:Landroid/webkit/WebView;

.field protected params:Ljava/lang/String;

.field private pluginManager:Lcom/impaycenter/PayPluginManager;

.field protected root:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    .line 245
    return-void
.end method

.method private getPluginSupports()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-static {}, Lcom/impaycenter/PayPluginManager;->getNativeSupportString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/impaycenter/Paycenter;->n_supports:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static invokeParentOrSubclassMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "wacth method:"

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v6, "wacth className:"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, p1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v6, "watch:"

    const-string v7, "\u8c03\u7528\u5b50\u7c7b\u65b9\u6cd5"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 294
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v6, Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eq v0, v6, :cond_1

    .line 296
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 297
    const-string v6, "\u7236\u7c7b\u65b9\u6cd5\u540d\uff1a"

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 294
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 302
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 304
    if-eqz v5, :cond_0

    .line 306
    :try_start_4
    invoke-virtual {v5, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v6, "watch:"

    const-string v7, "\u8c03\u7528\u7236\u7c7b\u65b9\u6cd5"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 309
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 317
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    goto :goto_0

    .line 311
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v3

    .line 312
    .local v3, "e2":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    .line 314
    .local v4, "e3":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 298
    .end local v4    # "e3":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    const-string v1, "payfailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/impaycenter/PayPluginManager;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "{\"event\":\"pay\",\"result\":\"fail\"}"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->finish()V

    .line 168
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    const-string v1, "paysuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/impaycenter/PayPluginManager;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "{\"event\":\"pay\",\"result\":\"sucess\"}"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getPaycenterUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 188
    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getLng()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 204
    :cond_1
    :goto_0
    return-object v0

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/impaycenter/PaycenterActivity;->getPluginSupports()V

    .line 197
    const-string v1, "%s%s?%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s"

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/impaycenter/Paycenter;->KEY_URL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "web/nav.php"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "product_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getProductId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "user_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "user_name"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "lng"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getLng()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "sdk_version"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/impaycenter/Paycenter;->sdk_version:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "n_supports"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/impaycenter/Paycenter;->n_supports:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "navcode"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 212
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 215
    .local v5, "param":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "pair":[Ljava/lang/String;
    const-string v2, ""

    .line 217
    .local v2, "key":Ljava/lang/String;
    const-string v7, ""

    .line 220
    .local v7, "value":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v4, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 225
    :goto_1
    array-length v8, v4

    if-le v8, v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 228
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v4, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 233
    :goto_2
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "pair":[Ljava/lang/String;
    .end local v5    # "param":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    return-object v6

    .line 229
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "pair":[Ljava/lang/String;
    .restart local v5    # "param":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 221
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method protected initLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 124
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/impaycenter/PaycenterActivity;->root:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/impaycenter/PaycenterActivity;->setContentView(Landroid/view/View;)V

    .line 130
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "btn_close":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com_impaycenter_close"

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 133
    new-instance v1, Lcom/impaycenter/PaycenterActivity$1;

    invoke-direct {v1, p0}, Lcom/impaycenter/PaycenterActivity$1;-><init>(Lcom/impaycenter/PaycenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    .line 141
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 143
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    new-instance v2, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;-><init>(Lcom/impaycenter/PaycenterActivity;Lcom/impaycenter/PaycenterActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->root:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 155
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 156
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x800

    const/16 v4, 0x400

    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-boolean v1, Lcom/droid/util/config;->ENABLE_PORTRAIT:Z

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "SCREEN"

    const-string v2, "SCREEN_ORIENTATION_PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0, v3}, Lcom/impaycenter/PaycenterActivity;->setRequestedOrientation(I)V

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 57
    sget-boolean v1, Lcom/droid/util/config;->ENABLE_FULLSCREEN:Z

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->initLayout()V

    .line 66
    new-instance v1, Lcom/impaycenter/PayPluginManager;

    invoke-direct {v1}, Lcom/impaycenter/PayPluginManager;-><init>()V

    iput-object v1, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    .line 67
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-virtual {v1}, Lcom/impaycenter/PayPluginManager;->onCreate()V

    .line 69
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "bd":Landroid/os/Bundle;
    const-string v1, "PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    .line 72
    return-void

    .line 51
    .end local v0    # "bd":Landroid/os/Bundle;
    :cond_0
    const-string v1, "SCREEN"

    const-string v2, "SCREEN_ORIENTATION_LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/impaycenter/PaycenterActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-virtual {v0}, Lcom/impaycenter/PayPluginManager;->onDestroy()V

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-virtual {v0}, Lcom/impaycenter/PayPluginManager;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/impaycenter/PaycenterActivity;->getPaycenterUrl()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-virtual {v1}, Lcom/impaycenter/PayPluginManager;->onResume()V

    .line 97
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 80
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-virtual {v0}, Lcom/impaycenter/PayPluginManager;->onStart()V

    .line 81
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 112
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-virtual {v0}, Lcom/impaycenter/PayPluginManager;->onStop()V

    .line 113
    return-void
.end method

.method public payment()V
    .locals 5

    .prologue
    .line 171
    const-string v1, "%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "product_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getProductId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "user_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "user_name"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "lng"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getLng()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "navcode"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    invoke-static {p0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/impaycenter/PaycenterActivity;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 176
    .local v0, "rparams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    iget-object v2, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/impaycenter/PayPluginManager;->launchChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public registerNativeChannel(Lcom/impaycenter/IPayPlugin;)V
    .locals 1
    .param p1, "channel"    # Lcom/impaycenter/IPayPlugin;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/impaycenter/PaycenterActivity;->pluginManager:Lcom/impaycenter/PayPluginManager;

    invoke-static {p1}, Lcom/impaycenter/PayPluginManager;->register(Lcom/impaycenter/IPayPlugin;)V

    .line 185
    return-void
.end method
