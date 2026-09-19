.class public Lorg/apache/cordova/NativeJsCall;
.super Lorg/apache/cordova/api/Plugin;
.source "NativeJsCall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 21
    .local v3, "status":Lorg/apache/cordova/api/PluginResult$Status;
    const-string v2, ""

    .line 24
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v4, "address"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    iget-object v4, p0, Lorg/apache/cordova/NativeJsCall;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v4, Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getNativeCall()Lcom/droid/engine/NativeCall;

    move-result-object v1

    .line 26
    .local v1, "nCall":Lcom/droid/engine/NativeCall;
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/droid/engine/NativeCall;->setParams(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lcom/droid/engine/NativeCall;->address()V

    .line 53
    .end local v1    # "nCall":Lcom/droid/engine/NativeCall;
    :cond_0
    :goto_0
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v4, v3, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 55
    :goto_1
    return-object v4

    .line 28
    :cond_1
    const-string v4, "brow"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    iget-object v4, p0, Lorg/apache/cordova/NativeJsCall;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v4, Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getNativeCall()Lcom/droid/engine/NativeCall;

    move-result-object v1

    .line 30
    .restart local v1    # "nCall":Lcom/droid/engine/NativeCall;
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/droid/engine/NativeCall;->setParams(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Lcom/droid/engine/NativeCall;->brow()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "nCall":Lcom/droid/engine/NativeCall;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_1

    .line 32
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v4, "makesign"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    iget-object v4, p0, Lorg/apache/cordova/NativeJsCall;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v4, Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getNativeCall()Lcom/droid/engine/NativeCall;

    move-result-object v1

    .line 34
    .restart local v1    # "nCall":Lcom/droid/engine/NativeCall;
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/droid/engine/NativeCall;->setParams(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Lcom/droid/engine/NativeCall;->makesign()V

    goto :goto_0

    .line 36
    .end local v1    # "nCall":Lcom/droid/engine/NativeCall;
    :cond_3
    const-string v4, "payment"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    iget-object v4, p0, Lorg/apache/cordova/NativeJsCall;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v4, Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getNativeCall()Lcom/droid/engine/NativeCall;

    move-result-object v1

    .line 38
    .restart local v1    # "nCall":Lcom/droid/engine/NativeCall;
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/droid/engine/NativeCall;->setParams(Ljava/lang/String;)V

    .line 39
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/droid/engine/NativeCall;->setUser(Ljava/lang/String;)V

    .line 40
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/droid/engine/NativeCall;->setRefercode(Ljava/lang/String;)V

    .line 41
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/droid/engine/NativeCall;->setChannel(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v1    # "nCall":Lcom/droid/engine/NativeCall;
    :cond_4
    const-string v4, "resetbadge"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    iget-object v4, p0, Lorg/apache/cordova/NativeJsCall;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v4, Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getNativeCall()Lcom/droid/engine/NativeCall;

    move-result-object v1

    .line 45
    .restart local v1    # "nCall":Lcom/droid/engine/NativeCall;
    invoke-virtual {v1}, Lcom/droid/engine/NativeCall;->resetbadge()V

    goto/16 :goto_0

    .line 46
    .end local v1    # "nCall":Lcom/droid/engine/NativeCall;
    :cond_5
    const-string v4, "sysupdate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 47
    iget-object v4, p0, Lorg/apache/cordova/NativeJsCall;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v4, Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getNativeCall()Lcom/droid/engine/NativeCall;

    move-result-object v1

    .line 48
    .restart local v1    # "nCall":Lcom/droid/engine/NativeCall;
    invoke-virtual {v1}, Lcom/droid/engine/NativeCall;->sysupdate()V

    goto/16 :goto_0

    .line 49
    .end local v1    # "nCall":Lcom/droid/engine/NativeCall;
    :cond_6
    const-string v4, "tapjoy"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    iget-object v4, p0, Lorg/apache/cordova/NativeJsCall;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v4, Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getNativeCall()Lcom/droid/engine/NativeCall;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 62
    const-string v1, "address"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    const-string v1, "brow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string v1, "makesign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "payment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "resetbadge"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const-string v1, "sysupdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const-string v1, "tapjoy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-super {p0, p1}, Lorg/apache/cordova/api/Plugin;->isSynch(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
