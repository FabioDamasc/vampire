.class public Lcom/android/vending/plugin/BillingService$RestoreTransactions;
.super Lcom/android/vending/plugin/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/plugin/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/android/vending/plugin/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/plugin/BillingService;)V
    .locals 1

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->this$0:Lcom/android/vending/plugin/BillingService;

    .line 368
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/plugin/BillingService$BillingRequest;-><init>(Lcom/android/vending/plugin/BillingService;I)V

    .line 369
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/android/vending/plugin/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 386
    iget-wide v0, p0, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/android/vending/plugin/Security;->removeNonce(J)V

    .line 387
    return-void
.end method

.method protected responseCodeReceived(Lcom/android/vending/plugin/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/android/vending/plugin/Consts$ResponseCode;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->this$0:Lcom/android/vending/plugin/BillingService;

    invoke-static {v0, p0, p1}, Lcom/android/vending/plugin/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/android/vending/plugin/BillingService$RestoreTransactions;Lcom/android/vending/plugin/Consts$ResponseCode;)V

    .line 392
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lcom/android/vending/plugin/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->mNonce:J

    .line 375
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 376
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 377
    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 378
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 379
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lcom/android/vending/plugin/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
