.class public Lcom/android/vending/plugin/GoogleBillingPlugin;
.super Ljava/lang/Object;
.source "GoogleBillingPlugin.java"

# interfaces
.implements Lcom/impaycenter/IPayPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;,
        Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;
    }
.end annotation


# static fields
.field private static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field public static final LOG_TAG:Ljava/lang/String; = "GooglePlugin"

.field private static mBillingService:Lcom/android/vending/plugin/BillingService;


# instance fields
.field public mCallback:Lcom/impaycenter/IPayPluginCallback;

.field public mContext:Landroid/content/Context;

.field private mDungeonsPurchaseObserver:Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mHandler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/plugin/GoogleBillingPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/plugin/GoogleBillingPlugin;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/vending/plugin/GoogleBillingPlugin;->restoreDatabase()V

    return-void
.end method

.method private restoreDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v2, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 112
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "db_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 114
    sget-object v2, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    invoke-virtual {v2}, Lcom/android/vending/plugin/BillingService;->restoreTransactions()Z

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public finishPlatform()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mDungeonsPurchaseObserver:Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;

    invoke-static {v0}, Lcom/android/vending/plugin/ResponseHandler;->unregister(Lcom/android/vending/plugin/PurchaseObserver;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mDungeonsPurchaseObserver:Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;

    .line 60
    sget-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService;->unbind()V

    .line 61
    :cond_0
    return-void
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "GOOGLE_IAP"

    return-object v0
.end method

.method public getNativeSupportBitPos()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x4

    return v0
.end method

.method public initPayPlugin(Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public launch(Ljava/lang/String;)V
    .locals 14
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v10, "GooglePlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BillingSupported : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    const-string v13, "inapp"

    invoke-virtual {v12, v13}, Lcom/android/vending/plugin/BillingService;->checkBillingSupported(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, ""

    .line 68
    .local v0, "_iap":Ljava/lang/String;
    const-string v1, ""

    .line 69
    .local v1, "_price_id":Ljava/lang/String;
    const-string v2, ""

    .line 70
    .local v2, "_user_code":Ljava/lang/String;
    const-string v10, "&"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "paramArray":[Ljava/lang/String;
    array-length v10, v8

    if-lez v10, :cond_3

    .line 72
    move-object v3, v8

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v7, v3, v4

    .line 73
    .local v7, "p":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "keyvalue":[Ljava/lang/String;
    array-length v10, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 75
    const-string v10, "iap"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 76
    const/4 v10, 0x1

    aget-object v0, v5, v10

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const-string v10, "price_id"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 78
    const/4 v10, 0x1

    aget-object v1, v5, v10

    goto :goto_1

    .line 79
    :cond_2
    const-string v10, "navcode"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 80
    const/4 v10, 0x1

    aget-object v2, v5, v10

    goto :goto_1

    .line 85
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "keyvalue":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "p":Ljava/lang/String;
    :cond_3
    const-string v10, "%s&%s&%s&%s&%s&%s"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/impaycenter/Paycenter;->getProductId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {}, Lcom/impaycenter/Paycenter;->getLng()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    aput-object v1, v11, v12

    const/4 v12, 0x5

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "payload":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/vending/plugin/BillingService;->checkPayload(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 87
    invoke-static {v9}, Lcom/android/vending/plugin/BillingService;->setPayload(Ljava/lang/String;)V

    .line 88
    sget-object v10, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    const-string v11, "inapp"

    invoke-virtual {v10, v0, v11}, Lcom/android/vending/plugin/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    :goto_2
    return-void

    .line 90
    :cond_4
    iget-object v10, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    const-string v11, "{\'event\':\'pay\',\'result\':\'fail\',\'message\':\'invalid parameters!\'}"

    invoke-interface {v10, v11}, Lcom/impaycenter/IPayPluginCallback;->onPaycenterCallback(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 205
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onPayCenterPause()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onPayCenterResume()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mDungeonsPurchaseObserver:Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;

    invoke-static {v0}, Lcom/android/vending/plugin/ResponseHandler;->register(Lcom/android/vending/plugin/PurchaseObserver;)V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public startPlatform(Landroid/content/Context;Lcom/impaycenter/IPayPluginCallback;I)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/impaycenter/IPayPluginCallback;
    .param p3, "orient"    # I

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    .line 37
    sget-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/vending/plugin/BillingService;

    invoke-direct {v0}, Lcom/android/vending/plugin/BillingService;-><init>()V

    sput-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    .line 39
    sget-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    iget-object v1, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/vending/plugin/BillingService;->setContext(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mBillingService:Lcom/android/vending/plugin/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/plugin/BillingService;->restoreTransactions()Z

    .line 42
    :cond_0
    const-string v0, "%s&%s&%s&%s&%s&%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/impaycenter/Paycenter;->getUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lcom/impaycenter/Paycenter;->getProductId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/impaycenter/Paycenter;->getLng()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/plugin/BillingService;->setPayload(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;

    iget-object v1, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;-><init>(Lcom/android/vending/plugin/GoogleBillingPlugin;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/plugin/GoogleBillingPlugin;->mDungeonsPurchaseObserver:Lcom/android/vending/plugin/GoogleBillingPlugin$DungeonsPurchaseObserver;

    .line 44
    return-void
.end method
