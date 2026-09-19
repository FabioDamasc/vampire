.class Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;
.super Landroid/os/AsyncTask;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyDisplayAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBannerAdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/tapjoy/TapjoyHttpURLResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyDisplayAd$1;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$800()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v1

    const-string v2, "https://ws.tapjoyads.com/display_ad.html?"

    sget-object v3, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 337
    .local v0, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->doInBackground([Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 8
    .param p1, "httpResponse"    # Lcom/tapjoy/TapjoyHttpURLResponse;

    .prologue
    const/4 v5, 0x0

    .line 249
    if-eqz p1, :cond_0

    .line 251
    iget v1, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    packed-switch v1, :pswitch_data_0

    .line 327
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$100()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v1

    const-string v2, "No ad to display."

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v1}, Lcom/tapjoy/TapjoyDisplayAd;->access$200(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "webView":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 258
    .local v7, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 260
    new-instance v1, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;-><init>(Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 285
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$400()I

    move-result v1

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$500()I

    move-result v2

    invoke-direct {v6, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 286
    .local v6, "layout":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 293
    const-string v1, "https://ws.tapjoyads.com/"

    iget-object v2, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/TapjoyDisplayAd;->lastAd:Landroid/graphics/Bitmap;

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iput-object v0, v1, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    .line 303
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->lastAd:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v3, v3, Lcom/tapjoy/TapjoyDisplayAd;->lastAd:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$100()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponse(Landroid/view/View;)V

    .line 309
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 312
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iput-object v5, v1, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v1}, Lcom/tapjoy/TapjoyDisplayAd;->access$600(Lcom/tapjoy/TapjoyDisplayAd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 318
    const-string v1, "Banner Ad"

    const-string v2, "will refresh banner ad in 15s..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 320
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;

    iget-object v3, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v2, v3, v5}, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, Lcom/tapjoy/TapjoyHttpURLResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->onPostExecute(Lcom/tapjoy/TapjoyHttpURLResponse;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 245
    return-void
.end method
