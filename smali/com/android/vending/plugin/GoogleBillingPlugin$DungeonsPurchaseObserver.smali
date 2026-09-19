.class Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;
.super Lcom/android/vending/plugin/PurchaseObserver;
.source "GoogleBillingPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/plugin/GoogleBillingPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DungeonsPurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;


# direct methods
.method public constructor <init>(Lcom/android/vending/plugin/GoogleBillingPlugin;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    .line 121
    iget-object v0, p1, Lcom/android/vending/plugin/GoogleBillingPlugin;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0, p2}, Lcom/android/vending/plugin/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onBillingSupported(ZLjava/lang/String;)V
    .locals 2
    .param p1, "supported"    # Z
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p2, :cond_0

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    if-eqz p1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    invoke-static {v0}, Lcom/android/vending/plugin/GoogleBillingPlugin;->access$000(Lcom/android/vending/plugin/GoogleBillingPlugin;)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const-string v0, "GooglePlugin"

    const-string v1, "onBillingSupported : not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPurchaseStateChange(Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "purchaseState"    # Lcom/android/vending/plugin/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lcom/android/vending/plugin/Consts$PurchaseState;->PURCHASED:Lcom/android/vending/plugin/Consts$PurchaseState;

    if-ne p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    iget-object v0, v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "{event:\'pay\',result:\'sucess\'}"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v0, Lcom/android/vending/plugin/Consts$PurchaseState;->CANCELED:Lcom/android/vending/plugin/Consts$PurchaseState;

    if-ne p1, v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    iget-object v0, v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "user canceled purchase"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    sget-object v0, Lcom/android/vending/plugin/Consts$PurchaseState;->OTHER:Lcom/android/vending/plugin/Consts$PurchaseState;

    if-eq p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    iget-object v0, v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "{\'event\':\'pay\',\'result\':\'fail\',\'message\':\'signature verify fail\'}"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPurchaseResponse(Lcom/android/vending/plugin/BillingService$RequestPurchase;Lcom/android/vending/plugin/Consts$ResponseCode;)V
    .locals 2
    .param p1, "request"    # Lcom/android/vending/plugin/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/android/vending/plugin/Consts$ResponseCode;

    .prologue
    .line 162
    sget-object v0, Lcom/android/vending/plugin/Consts$ResponseCode;->RESULT_OK:Lcom/android/vending/plugin/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    iget-object v0, v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "purchase was successfully sent to server"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/android/vending/plugin/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/android/vending/plugin/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    iget-object v0, v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "user canceled purchase"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    iget-object v0, v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v1, "{\'event\':\'pay\',\'result\':\'fail\',\'message\':\'purchase failed\'}"

    invoke-interface {v0, v1}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lcom/android/vending/plugin/BillingService$RestoreTransactions;Lcom/android/vending/plugin/Consts$ResponseCode;)V
    .locals 4
    .param p1, "request"    # Lcom/android/vending/plugin/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/android/vending/plugin/Consts$ResponseCode;

    .prologue
    .line 183
    sget-object v2, Lcom/android/vending/plugin/Consts$ResponseCode;->RESULT_OK:Lcom/android/vending/plugin/Consts$ResponseCode;

    if-ne p2, v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;->this$0:Lcom/android/vending/plugin/GoogleBillingPlugin;

    iget-object v2, v2, Lcom/android/vending/plugin/GoogleBillingPlugin;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "db_initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
