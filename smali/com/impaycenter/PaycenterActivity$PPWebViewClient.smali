.class Lcom/impaycenter/PaycenterActivity$PPWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PaycenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/impaycenter/PaycenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/impaycenter/PaycenterActivity;


# direct methods
.method private constructor <init>(Lcom/impaycenter/PaycenterActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;->this$0:Lcom/impaycenter/PaycenterActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/impaycenter/PaycenterActivity;Lcom/impaycenter/PaycenterActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/impaycenter/PaycenterActivity;
    .param p2, "x1"    # Lcom/impaycenter/PaycenterActivity$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;-><init>(Lcom/impaycenter/PaycenterActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 249
    const-string v3, "js-call:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const-string v3, "?"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 251
    .local v2, "qpos":I
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "command":Ljava/lang/String;
    iget-object v3, p0, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;->this$0:Lcom/impaycenter/PaycenterActivity;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/impaycenter/PaycenterActivity;->params:Ljava/lang/String;

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;->this$0:Lcom/impaycenter/PaycenterActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5}, Lcom/impaycenter/PaycenterActivity;->invokeParentOrSubclassMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    iget-object v3, p0, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;->this$0:Lcom/impaycenter/PaycenterActivity;

    invoke-virtual {v3}, Lcom/impaycenter/PaycenterActivity;->finish()V

    .line 269
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "qpos":I
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 256
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v2    # "qpos":I
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;->this$0:Lcom/impaycenter/PaycenterActivity;

    invoke-virtual {v3}, Lcom/impaycenter/PaycenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "NOT Supported in Current Version"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object v3, p0, Lcom/impaycenter/PaycenterActivity$PPWebViewClient;->this$0:Lcom/impaycenter/PaycenterActivity;

    invoke-virtual {v3}, Lcom/impaycenter/PaycenterActivity;->finish()V

    goto :goto_0

    .line 266
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "qpos":I
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
