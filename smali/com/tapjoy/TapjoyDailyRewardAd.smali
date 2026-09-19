.class public Lcom/tapjoy/TapjoyDailyRewardAd;
.super Ljava/lang/Object;
.source "TapjoyDailyRewardAd.java"


# static fields
.field private static dailyRewardNotifier:Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

.field public static dailyRewardURLParams:Ljava/lang/String;

.field private static htmlData:Ljava/lang/String;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field final TAPJOY_DAILY_REWARD:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currencyID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Daily Reward"

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->TAPJOY_DAILY_REWARD:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->context:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 28
    return-void
.end method

.method static synthetic access$000()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    sput-object p0, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/tapjoy/TapjoyDailyRewardAdNotifier;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardNotifier:Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    return-object v0
.end method


# virtual methods
.method public getDailyRewardAd(Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 37
    const-string v0, "Daily Reward"

    const-string v1, "Getting Daily Reward Ad"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V

    .line 40
    return-void
.end method

.method public getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 3
    .param p1, "theCurrencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->currencyID:Ljava/lang/String;

    .line 53
    const-string v0, "Daily Reward"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Daily Reward ad userID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currencyID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->currencyID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sput-object p2, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardNotifier:Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .line 58
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardURLParams:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&publisher_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardURLParams:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->currencyID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&currency_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->currencyID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardURLParams:Ljava/lang/String;

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyDailyRewardAd$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDailyRewardAd$1;-><init>(Lcom/tapjoy/TapjoyDailyRewardAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public showDailyRewardAd()V
    .locals 3

    .prologue
    .line 103
    const-string v1, "Daily Reward"

    const-string v2, "Displaying Daily Reward ad..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlData:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyDailyRewardAdWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    const-string v1, "RE_ENGAGEMENT_HTML_DATA"

    sget-object v2, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
