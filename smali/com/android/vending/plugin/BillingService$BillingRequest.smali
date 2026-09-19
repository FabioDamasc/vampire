.class abstract Lcom/android/vending/plugin/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/plugin/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/android/vending/plugin/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/plugin/BillingService;I)V
    .locals 0
    .param p2, "startId"    # I

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->this$0:Lcom/android/vending/plugin/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p2, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->mStartId:I

    .line 88
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Bundle;

    .prologue
    .line 172
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/vending/plugin/Consts$ResponseCode;->valueOf(I)Lcom/android/vending/plugin/Consts$ResponseCode;

    move-result-object v0

    .line 177
    .local v0, "responseCode":Lcom/android/vending/plugin/Consts$ResponseCode;
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "request":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->this$0:Lcom/android/vending/plugin/BillingService;

    invoke-virtual {v2}, Lcom/android/vending/plugin/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 145
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/vending/plugin/BillingService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 147
    return-void
.end method

.method protected responseCodeReceived(Lcom/android/vending/plugin/Consts$ResponseCode;)V
    .locals 0
    .param p1, "responseCode"    # Lcom/android/vending/plugin/Consts$ResponseCode;

    .prologue
    .line 161
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 121
    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->mRequestId:J

    .line 127
    iget-wide v1, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 128
    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$300()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    const/4 v1, 0x1

    .line 135
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/android/vending/plugin/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :goto_0
    return v0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/vending/plugin/BillingService$BillingRequest;->this$0:Lcom/android/vending/plugin/BillingService;

    invoke-static {v1}, Lcom/android/vending/plugin/BillingService;->access$000(Lcom/android/vending/plugin/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$100()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
