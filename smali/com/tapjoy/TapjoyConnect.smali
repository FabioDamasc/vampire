.class public final Lcom/tapjoy/TapjoyConnect;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"


# static fields
.field public static final TAPJOY_CONNECT:Ljava/lang/String; = "TapjoyConnect"

.field private static connectFlags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

.field private static tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

.field private static tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

.field private static tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

.field private static tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

.field private static tapjoyOffers:Lcom/tapjoy/TJCOffers;

.field private static tapjoyVideo:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 24
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 25
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    .line 26
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 27
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 28
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    .line 29
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    .line 32
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .param p5, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p4, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 155
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 55
    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 56
    return-void
.end method

.method public static getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, "TapjoyConnect"

    const-string v1, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    return-object v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 72
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 91
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p4, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "offers"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/tapjoy/TapjoyConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 114
    new-instance v0, Lcom/tapjoy/TJCOffers;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 115
    new-instance v0, Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyFullScreenAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    .line 116
    new-instance v0, Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 117
    new-instance v0, Lcom/tapjoy/TapjoyVideo;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 118
    new-instance v0, Lcom/tapjoy/TapjoyEvent;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyEvent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    .line 119
    new-instance v0, Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDailyRewardAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    .line 123
    return-void
.end method

.method public static setFlagKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    .line 45
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 296
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCOffers;->awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V

    .line 297
    return-void
.end method

.method public cacheVideos()V
    .locals 1

    .prologue
    .line 562
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyVideo;->cacheVideos()V

    .line 563
    return-void
.end method

.method public enableBannerAdAutoRefresh(Z)V
    .locals 1
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 491
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->enableAutoRefresh(Z)V

    .line 492
    return-void
.end method

.method public enableDisplayAdAutoRefresh(Z)V
    .locals 1
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 479
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->enableAutoRefresh(Z)V

    .line 480
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public enableVideoCache(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 551
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->enableVideoCache(Z)V

    .line 552
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    return v0
.end method

.method public getDailyRewardAd(Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 412
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAd(Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V

    .line 413
    return-void
.end method

.method public getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 424
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V

    .line 425
    return-void
.end method

.method public getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 502
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 503
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 515
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 516
    return-void
.end method

.method public getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 358
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 359
    return-void
.end method

.method public getFeaturedAppWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 373
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyFullScreenAd;->getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 374
    return-void
.end method

.method public getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 322
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 323
    return-void
.end method

.method public getFullScreenAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 335
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 336
    return-void
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 274
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 275
    return-void
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 531
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 532
    return-void
.end method

.method public sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "price"    # F
    .param p3, "quantity"    # I
    .param p4, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 596
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TapjoyEvent;->sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V

    .line 597
    return-void
.end method

.method public sendShutDownEvent()V
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyEvent;->sendShutDownEvent()V

    .line 584
    return-void
.end method

.method public setBannerAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 469
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setBannerAdSize(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 211
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 212
    return-void
.end method

.method public setDisplayAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 453
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setDisplayAdSize(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 306
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 307
    return-void
.end method

.method public setFeaturedAppDisplayCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 385
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->setDisplayCount(I)V

    .line 386
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 541
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoCacheCount(I)V

    .line 542
    return-void
.end method

.method public setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 571
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 572
    return-void
.end method

.method public showDailyRewardAd()V
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDailyRewardAd;->showDailyRewardAd()V

    .line 435
    return-void
.end method

.method public showFeaturedAppFullScreenAd()V
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyFullScreenAd;->showFeaturedAppFullScreenAd()V

    .line 398
    return-void
.end method

.method public showFullScreenAd()V
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyFullScreenAd;->showFullScreenAd()V

    .line 346
    return-void
.end method

.method public showOffers()V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0}, Lcom/tapjoy/TJCOffers;->showOffers()V

    .line 252
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    .line 263
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 285
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCOffers;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 286
    return-void
.end method
