.class Lcom/android/vending/plugin/BillingService$CheckBillingSupported;
.super Lcom/android/vending/plugin/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/plugin/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field public mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/vending/plugin/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/plugin/BillingService;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->this$0:Lcom/android/vending/plugin/BillingService;

    .line 202
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/plugin/BillingService$BillingRequest;-><init>(Lcom/android/vending/plugin/BillingService;I)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemType"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->this$0:Lcom/android/vending/plugin/BillingService;

    .line 217
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/plugin/BillingService$BillingRequest;-><init>(Lcom/android/vending/plugin/BillingService;I)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 224
    .local v1, "request":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 225
    const-string v4, "ITEM_TYPE"

    iget-object v5, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 228
    .local v2, "response":Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 233
    .local v3, "responseCode":I
    sget-object v4, Lcom/android/vending/plugin/Consts$ResponseCode;->RESULT_OK:Lcom/android/vending/plugin/Consts$ResponseCode;

    invoke-virtual {v4}, Lcom/android/vending/plugin/Consts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 234
    .local v0, "billingSupported":Z
    :goto_0
    iget-object v4, p0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/vending/plugin/ResponseHandler;->checkBillingSupportedResponse(ZLjava/lang/String;)V

    .line 235
    sget-wide v4, Lcom/android/vending/plugin/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 233
    .end local v0    # "billingSupported":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
