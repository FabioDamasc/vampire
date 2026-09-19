.class public Lcom/tapjoy/TapjoyFullScreenAd;
.super Ljava/lang/Object;
.source "TapjoyFullScreenAd.java"


# static fields
.field private static featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

.field private static fullScreenAdNotifier:Lcom/tapjoy/TapjoyFullScreenAdNotifier;

.field public static fullScreenAdURLParams:Ljava/lang/String;

.field private static htmlData:Ljava/lang/String;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field final TAPJOY_FULL_SCREEN_AD:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currencyID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "Full Screen Ad"

    iput-object v0, p0, Lcom/tapjoy/TapjoyFullScreenAd;->TAPJOY_FULL_SCREEN_AD:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 30
    return-void
.end method

.method static synthetic access$000()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    sput-object p0, Lcom/tapjoy/TapjoyFullScreenAd;->htmlData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/tapjoy/TapjoyFeaturedAppNotifier;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    return-object v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdNotifier:Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    return-object v0
.end method


# virtual methods
.method public getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 59
    return-void
.end method

.method public getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 0
    .param p1, "theCurrencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 69
    sput-object p2, Lcom/tapjoy/TapjoyFullScreenAd;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .line 70
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAdMain(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 39
    return-void
.end method

.method public getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 0
    .param p1, "theCurrencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 46
    sput-object p2, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdNotifier:Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAdMain(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public getFullScreenAdMain(Ljava/lang/String;)V
    .locals 3
    .param p1, "theCurrencyID"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "Full Screen Ad"

    const-string v1, "Getting Full Screen Ad"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->currencyID:Ljava/lang/String;

    .line 86
    const-string v0, "Full Screen Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Full Screen Ad userID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currencyID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyFullScreenAd;->currencyID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

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

    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/tapjoy/TapjoyFullScreenAd;->currencyID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&currency_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->currencyID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

    .line 97
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVideoParams()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVideoParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyFullScreenAd$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyFullScreenAd$1;-><init>(Lcom/tapjoy/TapjoyFullScreenAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method

.method public setDisplayCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 188
    return-void
.end method

.method public showFeaturedAppFullScreenAd()V
    .locals 3

    .prologue
    .line 170
    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->htmlData:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->htmlData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "featuredAppIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    const-string v1, "FULLSCREEN_HTML_DATA"

    sget-object v2, Lcom/tapjoy/TapjoyFullScreenAd;->htmlData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    .end local v0    # "featuredAppIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public showFullScreenAd()V
    .locals 3

    .prologue
    .line 152
    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->htmlData:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->htmlData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyFullScreenAdWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "featuredAppIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "FULLSCREEN_HTML_DATA"

    sget-object v2, Lcom/tapjoy/TapjoyFullScreenAd;->htmlData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v0    # "featuredAppIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
