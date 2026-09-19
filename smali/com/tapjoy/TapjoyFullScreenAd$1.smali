.class Lcom/tapjoy/TapjoyFullScreenAd$1;
.super Ljava/lang/Object;
.source "TapjoyFullScreenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAdMain(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyFullScreenAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyFullScreenAd;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tapjoy/TapjoyFullScreenAd$1;->this$0:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$000()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v1

    const-string v2, "https://ws.tapjoyads.com/get_offers/featured.html?"

    sget-object v3, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdURLParams:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 109
    .local v0, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    if-eqz v0, :cond_3

    .line 111
    iget v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    packed-switch v1, :pswitch_data_0

    .line 125
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$200()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$200()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    const-string v2, "Error retrieving full screen ad data from the server."

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyFullScreenAd;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$200()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$200()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V

    .line 119
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponse()V

    goto :goto_0

    .line 135
    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$200()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 136
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$200()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    const-string v2, "Error retrieving full screen ad data from the server."

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 138
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
