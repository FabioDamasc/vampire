.class public Lcom/droid/engine/NativeCall;
.super Ljava/lang/Object;
.source "NativeCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droid/engine/NativeCall$NativeCallImpl;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final KEY_IAP:Ljava/lang/String; = "iap"

.field public static final KEY_LNG:Ljava/lang/String; = "lng"

.field public static final KEY_PRICE_ID:Ljava/lang/String; = "price_id"

.field public static final KEY_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final LOG_TAG:Ljava/lang/String; = "NativeCall"


# instance fields
.field protected currentUser:Ljava/lang/String;

.field public currentView:Ljava/lang/String;

.field protected mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

.field protected params:Ljava/lang/String;

.field protected payment_channel:Ljava/lang/String;

.field protected payment_gross:Ljava/lang/String;

.field protected payment_refercode:Ljava/lang/String;

.field protected payment_user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/droid/engine/NativeCall$NativeCallImpl;)V
    .locals 1
    .param p1, "impl"    # Lcom/droid/engine/NativeCall$NativeCallImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/NativeCall;->payment_user:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/NativeCall;->payment_gross:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/NativeCall;->payment_refercode:Ljava/lang/String;

    .line 39
    const-string v0, "paypal"

    iput-object v0, p0, Lcom/droid/engine/NativeCall;->payment_channel:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/NativeCall;->currentUser:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/NativeCall;->currentView:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    .line 59
    return-void
.end method


# virtual methods
.method public address()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    return-void
.end method

.method public applyThirdPlatformAPI()V
    .locals 7

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "api":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    iget-object v4, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 330
    .local v2, "guidObject":Lorg/json/JSONObject;
    const-string v4, "api"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v4, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v4}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getThirdPlatform()Lcom/thirdplatform/ThirdPlatform;

    move-result-object v4

    iget-object v5, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    iput-object v5, v4, Lcom/thirdplatform/ThirdPlatform;->params:Ljava/lang/String;

    .line 332
    iget-object v4, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v4}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getThirdPlatform()Lcom/thirdplatform/ThirdPlatform;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/droid/engine/Utils;->invokeParentOrSubclassMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v2    # "guidObject":Lorg/json/JSONObject;
    .end local v3    # "jsonParser":Lorg/json/JSONTokener;
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public brow()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/droid/engine/BrowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PARAMS"

    iget-object v2, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "LANGUAGE"

    sget-object v2, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "PRODUCT"

    sget-object v2, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public brow(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/droid/engine/BrowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PARAMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "LANGUAGE"

    sget-object v2, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "PRODUCT"

    sget-object v2, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public hideInput()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public initpaycenter()V
    .locals 12

    .prologue
    .line 277
    sget-boolean v0, Lcom/droid/util/config;->ENABLE_PAYCENTER:Z

    if-eqz v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 279
    .local v11, "paramArray":[Ljava/lang/String;
    array-length v0, v11

    if-lez v0, :cond_5

    .line 280
    sget-object v5, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    .line 281
    .local v5, "_lng":Ljava/lang/String;
    const-string v3, ""

    .line 282
    .local v3, "_uid":Ljava/lang/String;
    const-string v4, ""

    .line 283
    .local v4, "_uname":Ljava/lang/String;
    move-object v7, v11

    .local v7, "arr$":[Ljava/lang/String;
    array-length v9, v7

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v10, v7, v8

    .line 284
    .local v10, "p":Ljava/lang/String;
    const-string v0, "user_id="

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "user_id="

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 283
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 286
    :cond_1
    const-string v0, "user_name="

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string v0, "user_name="

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 288
    :cond_2
    const-string v0, "lng="

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "lng="

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 293
    .end local v10    # "p":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:showInfo(\' error: null params \');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 307
    .end local v3    # "_uid":Ljava/lang/String;
    .end local v4    # "_uname":Ljava/lang/String;
    .end local v5    # "_lng":Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "paramArray":[Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 299
    .restart local v3    # "_uid":Ljava/lang/String;
    .restart local v4    # "_uname":Ljava/lang/String;
    .restart local v5    # "_lng":Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "paramArray":[Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    move-result-object v0

    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/droid/engine/DroidGame;

    sget-object v2, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    iget-object v6, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v6}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/droid/engine/Utils;->getSyscode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/impaycenter/Paycenter;->init(Lcom/impaycenter/IPayPluginCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 304
    .end local v3    # "_uid":Ljava/lang/String;
    .end local v4    # "_uname":Ljava/lang/String;
    .end local v5    # "_lng":Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "paramArray":[Ljava/lang/String;
    :cond_7
    const-string v0, "NativeCall"

    const-string v1, "paycenter NOT Supported in Current Version"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->hideLoading()V

    goto :goto_2
.end method

.method public link()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NOT Supported in Current Version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    return-void
.end method

.method public makesign()V
    .locals 14

    .prologue
    .line 62
    iget-object v11, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v11}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    .line 63
    .local v7, "pview":Landroid/webkit/WebView;
    iget-object v11, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    .line 64
    iget-object v11, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "paramarray":[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_3

    .line 66
    const/4 v11, 0x0

    aget-object v4, v5, v11

    .line 67
    .local v4, "funcname":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v0, v5, v11

    .line 68
    .local v0, "account":Ljava/lang/String;
    const-string v6, ""

    .line 69
    .local v6, "password":Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x2

    if-le v11, v12, :cond_0

    .line 70
    const/4 v11, 0x2

    aget-object v6, v5, v11

    .line 72
    :cond_0
    const-string v8, ""

    .line 73
    .local v8, "referer":Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x3

    if-le v11, v12, :cond_1

    .line 74
    const/4 v11, 0x3

    aget-object v8, v5, v11

    .line 76
    :cond_1
    const-string v3, ""

    .line 77
    .local v3, "email":Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x4

    if-le v11, v12, :cond_2

    .line 78
    const/4 v11, 0x4

    aget-object v3, v5, v11

    .line 80
    :cond_2
    iget-object v11, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v11}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/droid/engine/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "deviceUDID":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ece80d3df6244588b99ca22fd0ed233c"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "authTxt":Ljava/lang/String;
    invoke-static {v1}, Lcom/droid/engine/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "sign":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\');"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "script":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "javascript:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "authTxt":Ljava/lang/String;
    .end local v2    # "deviceUDID":Ljava/lang/String;
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "funcname":Ljava/lang/String;
    .end local v5    # "paramarray":[Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v8    # "referer":Ljava/lang/String;
    .end local v9    # "script":Ljava/lang/String;
    .end local v10    # "sign":Ljava/lang/String;
    :goto_0
    return-void

    .line 94
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "javascript:showInfo(\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v12}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/droid/engine/R$string;->com_droid_engine_invalid_parameter:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\');"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openBrower()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public openfeint()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public paycenter()V
    .locals 4

    .prologue
    .line 311
    sget-boolean v0, Lcom/droid/util/config;->ENABLE_PAYCENTER:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    move-result-object v0

    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/impaycenter/Paycenter;->show(Landroid/content/Context;ILjava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NOT Supported in Current Version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v0, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->hideLoading()V

    goto :goto_0
.end method

.method public registerJavascriptObject(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    .line 340
    new-instance v0, Lcom/droid/engine/NativeCall$1;

    invoke-direct {v0, p0}, Lcom/droid/engine/NativeCall$1;-><init>(Lcom/droid/engine/NativeCall;)V

    const-string v1, "droid"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public resetbadge()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/droid/engine/NativeCall;->payment_channel:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setMute(Z)V
    .locals 4
    .param p1, "isMute"    # Z

    .prologue
    const/4 v3, 0x3

    .line 267
    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 268
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setRefercode(Ljava/lang/String;)V
    .locals 0
    .param p1, "refercode"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/droid/engine/NativeCall;->payment_refercode:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/droid/engine/NativeCall;->payment_user:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public showReview()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v3}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v1}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public sysupdate()V
    .locals 3

    .prologue
    .line 255
    iget-object v2, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v2}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/droid/engine/DroidGame;

    invoke-virtual {v2}, Lcom/droid/engine/DroidGame;->getControllor()Lcom/droid/engine/ViewController;

    move-result-object v0

    .line 256
    .local v0, "controller":Lcom/droid/engine/ViewController;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 257
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 258
    invoke-virtual {v0, v1}, Lcom/droid/engine/ViewController;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method

.method public updateStage()V
    .locals 8

    .prologue
    .line 179
    iget-object v6, p0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 180
    .local v5, "needUpdateStage":I
    invoke-static {v5}, Lcom/droid/engine/Utils;->checkStage(I)Z

    move-result v4

    .line 181
    .local v4, "needUpdate":Z
    if-eqz v4, :cond_1

    .line 182
    iget-object v6, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v6}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/droid/engine/DroidGame;

    invoke-virtual {v6}, Lcom/droid/engine/DroidGame;->getUpdateState()Z

    move-result v2

    .line 183
    .local v2, "isUpdating":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 185
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    iget-object v6, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v6}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/droid/engine/DroidGame;

    invoke-virtual {v6}, Lcom/droid/engine/DroidGame;->getUpdateState()Z

    move-result v2

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 192
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v6, p0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v6}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/droid/engine/DroidGame;

    invoke-virtual {v6}, Lcom/droid/engine/DroidGame;->getControllor()Lcom/droid/engine/ViewController;

    move-result-object v0

    .line 193
    .local v0, "controller":Lcom/droid/engine/ViewController;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 194
    .local v3, "message":Landroid/os/Message;
    const/4 v6, 0x3

    iput v6, v3, Landroid/os/Message;->what:I

    .line 195
    invoke-virtual {v0, v3}, Lcom/droid/engine/ViewController;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .end local v0    # "controller":Lcom/droid/engine/ViewController;
    .end local v2    # "isUpdating":Z
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public url()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/droid/engine/NativeCall;->brow()V

    .line 203
    return-void
.end method
