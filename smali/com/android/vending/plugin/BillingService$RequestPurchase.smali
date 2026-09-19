.class public Lcom/android/vending/plugin/BillingService$RequestPurchase;
.super Lcom/android/vending/plugin/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/plugin/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field public final mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/vending/plugin/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/plugin/BillingService$RequestPurchase;-><init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->this$0:Lcom/android/vending/plugin/BillingService;

    .line 269
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/plugin/BillingService$BillingRequest;-><init>(Lcom/android/vending/plugin/BillingService;I)V

    .line 270
    iput-object p2, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$400()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    .line 273
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected responseCodeReceived(Lcom/android/vending/plugin/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/android/vending/plugin/Consts$ResponseCode;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->this$0:Lcom/android/vending/plugin/BillingService;

    invoke-static {v0, p0, p1}, Lcom/android/vending/plugin/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/android/vending/plugin/BillingService$RequestPurchase;Lcom/android/vending/plugin/Consts$ResponseCode;)V

    .line 301
    return-void
.end method

.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/android/vending/plugin/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 278
    .local v2, "request":Landroid/os/Bundle;
    const-string v4, "ITEM_ID"

    iget-object v5, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v4, "ITEM_TYPE"

    iget-object v5, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 282
    const-string v4, "DEVELOPER_PAYLOAD"

    iget-object v5, p0, Lcom/android/vending/plugin/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 285
    .local v3, "response":Landroid/os/Bundle;
    const-string v4, "PURCHASE_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 287
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 288
    const-string v4, "BillingService"

    const-string v5, "Error with requestPurchase"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-wide v4, Lcom/android/vending/plugin/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 294
    :goto_0
    return-wide v4

    .line 292
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1, v0}, Lcom/android/vending/plugin/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 294
    const-string v4, "REQUEST_ID"

    sget-wide v5, Lcom/android/vending/plugin/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
