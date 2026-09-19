.class public Lcom/tapjoy/TapjoyDailyRewardAdWebView;
.super Landroid/app/Activity;
.source "TapjoyDailyRewardAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyDailyRewardAdWebView$1;,
        Lcom/tapjoy/TapjoyDailyRewardAdWebView$TapjoyWebViewClient;,
        Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;
    }
.end annotation


# instance fields
.field final TAPJOY_DAILY_REWARD:Ljava/lang/String;

.field private htmlRawData:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->htmlRawData:Ljava/lang/String;

    .line 26
    const-string v0, "Daily Reward"

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->TAPJOY_DAILY_REWARD:Ljava/lang/String;

    .line 126
    return-void
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyDailyRewardAdWebView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDailyRewardAdWebView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TapjoyDailyRewardAdWebView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDailyRewardAdWebView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TapjoyDailyRewardAdWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDailyRewardAdWebView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->finish()V

    .line 165
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    iget-object v1, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;-><init>(Lcom/tapjoy/TapjoyDailyRewardAdWebView;Lcom/tapjoy/TapjoyDailyRewardAdWebView$1;)V

    .line 82
    .local v0, "refreshTask":Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    .end local v0    # "refreshTask":Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v5, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 35
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "RE_ENGAGEMENT_HTML_DATA"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->htmlRawData:Ljava/lang/String;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->requestWindowFeature(I)Z

    .line 40
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v7, "layout":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    .line 44
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tapjoy/TapjoyDailyRewardAdWebView$TapjoyWebViewClient;

    invoke-direct {v1, p0, v5}, Lcom/tapjoy/TapjoyDailyRewardAdWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TapjoyDailyRewardAdWebView;Lcom/tapjoy/TapjoyDailyRewardAdWebView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .line 47
    .local v9, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v9, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x101007a

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->progressBar:Landroid/widget/ProgressBar;

    .line 51
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v8, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7, v0, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 60
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v7}, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Landroid/webkit/WebView;

    const-string v1, "https://ws.tapjoyads.com/"

    iget-object v2, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->htmlRawData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "Daily Reward"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening Daily Reward ad = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->htmlRawData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
