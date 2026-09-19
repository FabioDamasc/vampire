.class public Lcom/android/vending/plugin/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/plugin/BillingService$RestoreTransactions;,
        Lcom/android/vending/plugin/BillingService$GetPurchaseInformation;,
        Lcom/android/vending/plugin/BillingService$ConfirmNotifications;,
        Lcom/android/vending/plugin/BillingService$RequestPurchase;,
        Lcom/android/vending/plugin/BillingService$CheckBillingSupported;,
        Lcom/android/vending/plugin/BillingService$BillingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mDeveloperPayload:Ljava/lang/String;

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/vending/plugin/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/vending/plugin/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/vending/plugin/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/plugin/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/android/vending/plugin/BillingService;->mDeveloperPayload:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 396
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 445
    new-instance v0, Lcom/android/vending/plugin/BillingHandler;

    invoke-direct {v0, p0}, Lcom/android/vending/plugin/BillingHandler;-><init>(Lcom/android/vending/plugin/BillingService;)V

    iput-object v0, p0, Lcom/android/vending/plugin/BillingService;->mHandler:Landroid/os/Handler;

    .line 397
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/plugin/BillingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/plugin/BillingService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/vending/plugin/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/vending/plugin/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/vending/plugin/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/IMarketBillingService;

    .prologue
    .line 52
    sput-object p0, Lcom/android/vending/plugin/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/vending/plugin/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/vending/plugin/BillingService;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 500
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lcom/android/vending/plugin/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 505
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    .line 513
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 508
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static checkPayload(Ljava/lang/String;)Z
    .locals 5
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v3, 0x1

    .line 414
    .local v3, "result":Z
    if-nez p0, :cond_1

    .line 415
    const/4 v3, 0x0

    .line 428
    :cond_0
    :goto_0
    return v3

    .line 417
    :cond_1
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "paramArray":[Ljava/lang/String;
    array-length v0, v2

    .line 419
    .local v0, "count":I
    const/4 v4, 0x4

    if-le v0, v4, :cond_3

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 421
    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    const/4 v3, 0x0

    .line 420
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    .end local v1    # "i":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkResponseCode(JLcom/android/vending/plugin/Consts$ResponseCode;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/android/vending/plugin/Consts$ResponseCode;

    .prologue
    .line 637
    sget-object v1, Lcom/android/vending/plugin/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/plugin/BillingService$BillingRequest;

    .line 638
    .local v0, "request":Lcom/android/vending/plugin/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p3}, Lcom/android/vending/plugin/BillingService$BillingRequest;->responseCodeReceived(Lcom/android/vending/plugin/Consts$ResponseCode;)V

    .line 644
    :cond_0
    sget-object v1, Lcom/android/vending/plugin/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Lcom/android/vending/plugin/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/plugin/BillingService$ConfirmNotifications;-><init>(Lcom/android/vending/plugin/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 591
    new-instance v0, Lcom/android/vending/plugin/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/plugin/BillingService$GetPurchaseInformation;-><init>(Lcom/android/vending/plugin/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 652
    const/4 v0, -0x1

    .line 654
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/vending/plugin/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/plugin/BillingService$BillingRequest;

    .local v1, "request":Lcom/android/vending/plugin/BillingService$BillingRequest;
    if-eqz v1, :cond_3

    .line 655
    invoke-virtual {v1}, Lcom/android/vending/plugin/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    sget-object v2, Lcom/android/vending/plugin/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 661
    invoke-virtual {v1}, Lcom/android/vending/plugin/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 662
    invoke-virtual {v1}, Lcom/android/vending/plugin/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 667
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/plugin/BillingService;->bindToMarketBillingService()Z

    .line 681
    :cond_2
    :goto_1
    return-void

    .line 675
    :cond_3
    if-ltz v0, :cond_2

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/vending/plugin/BillingService;->stopSelf(I)V

    goto :goto_1
.end method

.method public static setPayload(Ljava/lang/String;)V
    .locals 0
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 404
    sput-object p0, Lcom/android/vending/plugin/BillingService;->mDeveloperPayload:Ljava/lang/String;

    .line 405
    return-void
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    new-instance v0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;-><init>(Lcom/android/vending/plugin/BillingService;)V

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public checkBillingSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemType"    # Ljava/lang/String;

    .prologue
    .line 533
    new-instance v0, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;-><init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "action":Ljava/lang/String;
    const-string v10, "com.example.subscriptions.CONFIRM_NOTIFICATION"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 459
    const-string v10, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v3}, Lcom/android/vending/plugin/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 488
    .end local v3    # "notifyIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const-string v10, "com.example.subscriptions.GET_PURCHASE_INFORMATION"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 462
    const-string v10, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "notifyId":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-direct {p0, p2, v10}, Lcom/android/vending/plugin/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 464
    .end local v2    # "notifyId":Ljava/lang/String;
    :cond_2
    const-string v10, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 465
    const-string v10, "inapp_signed_data"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, "signedData":Ljava/lang/String;
    const-string v10, "inapp_signature"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, "signature":Ljava/lang/String;
    move v1, p2

    .line 468
    .local v1, "mstartId":I
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/android/vending/plugin/BillingService$1;

    invoke-direct {v11, p0, v9, v8, v1}, Lcom/android/vending/plugin/BillingService$1;-><init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 481
    .end local v1    # "mstartId":I
    .end local v8    # "signature":Ljava/lang/String;
    .end local v9    # "signedData":Ljava/lang/String;
    :cond_3
    const-string v10, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 482
    const-string v10, "request_id"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 483
    .local v4, "requestId":J
    const-string v10, "response_code"

    sget-object v11, Lcom/android/vending/plugin/Consts$ResponseCode;->RESULT_ERROR:Lcom/android/vending/plugin/Consts$ResponseCode;

    invoke-virtual {v11}, Lcom/android/vending/plugin/Consts$ResponseCode;->ordinal()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 485
    .local v7, "responseCodeIndex":I
    invoke-static {v7}, Lcom/android/vending/plugin/Consts$ResponseCode;->valueOf(I)Lcom/android/vending/plugin/Consts$ResponseCode;

    move-result-object v6

    .line 486
    .local v6, "responseCode":Lcom/android/vending/plugin/Consts$ResponseCode;
    invoke-direct {p0, v4, v5, v6}, Lcom/android/vending/plugin/BillingService;->checkResponseCode(JLcom/android/vending/plugin/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 692
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/android/vending/plugin/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 693
    invoke-direct {p0}, Lcom/android/vending/plugin/BillingService;->runPendingRequests()V

    .line 694
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 701
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/plugin/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 703
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 441
    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/plugin/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 443
    :cond_0
    return-void
.end method

.method purchaseStateChanged(Ljava/util/ArrayList;I)V
    .locals 12
    .param p2, "startId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/plugin/Security$VerifiedPurchase;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/plugin/Security$VerifiedPurchase;>;"
    if-nez p1, :cond_1

    .line 604
    new-instance v0, Lcom/android/vending/plugin/Security$VerifiedPurchase;

    sget-object v1, Lcom/android/vending/plugin/Consts$PurchaseState;->REFUNDED:Lcom/android/vending/plugin/Consts$PurchaseState;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/android/vending/plugin/Security$VerifiedPurchase;-><init>(Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 605
    .local v0, "vp_empty":Lcom/android/vending/plugin/Security$VerifiedPurchase;
    iget-object v2, v0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->purchaseState:Lcom/android/vending/plugin/Consts$PurchaseState;

    iget-object v3, v0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v5, v0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v7, v0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/vending/plugin/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 622
    .end local v0    # "vp_empty":Lcom/android/vending/plugin/Security$VerifiedPurchase;
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v10, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;

    .line 612
    .local v11, "vp":Lcom/android/vending/plugin/Security$VerifiedPurchase;
    iget-object v1, v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_2
    iget-object v2, v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;->purchaseState:Lcom/android/vending/plugin/Consts$PurchaseState;

    iget-object v3, v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v5, v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v7, v11, Lcom/android/vending/plugin/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/vending/plugin/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 618
    .end local v11    # "vp":Lcom/android/vending/plugin/Security$VerifiedPurchase;
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 620
    .local v9, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v9}, Lcom/android/vending/plugin/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "itemType"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v0, Lcom/android/vending/plugin/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/plugin/BillingService$RequestPurchase;-><init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 559
    new-instance v0, Lcom/android/vending/plugin/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/android/vending/plugin/BillingService$RestoreTransactions;-><init>(Lcom/android/vending/plugin/BillingService;)V

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/android/vending/plugin/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 401
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 711
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/android/vending/plugin/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    goto :goto_0
.end method
