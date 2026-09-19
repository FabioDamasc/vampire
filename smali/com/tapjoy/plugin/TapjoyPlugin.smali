.class public Lcom/tapjoy/plugin/TapjoyPlugin;
.super Ljava/lang/Object;
.source "TapjoyPlugin.java"

# interfaces
.implements Lcom/impaycenter/IPayPlugin;


# instance fields
.field public id:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public mCallback:Lcom/impaycenter/IPayPluginCallback;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishPlatform()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "TAPJOY"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeSupportBitPos()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    return v0
.end method

.method public initPayPlugin(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->key:Ljava/lang/String;

    .line 55
    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->id:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public launch(Ljava/lang/String;)V
    .locals 10
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v6, 0x0

    .line 25
    .local v6, "priceId":Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 26
    .local v5, "param":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "pair":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-gt v1, v7, :cond_1

    .line 28
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "price_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 29
    const/4 v7, 0x1

    aget-object v6, v4, v7

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    .end local v4    # "pair":[Ljava/lang/String;
    .end local v5    # "param":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tapjoy/TapjoyConnect;->setUserID(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 37
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 95
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onPayCenterPause()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onPayCenterResume()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public startPlatform(Landroid/content/Context;Lcom/impaycenter/IPayPluginCallback;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/impaycenter/IPayPluginCallback;
    .param p3, "orient"    # I

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    .line 68
    iget-object v0, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/plugin/TapjoyPlugin;->key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
