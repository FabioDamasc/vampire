.class public Lcom/droid/engine/BrowActivity;
.super Landroid/app/Activity;
.source "BrowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droid/engine/BrowActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field LANGUAGE:Ljava/lang/String;

.field PRODUCT:Ljava/lang/String;

.field params:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/BrowActivity;->LANGUAGE:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/droid/engine/BrowActivity;->PRODUCT:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->finish()V

    .line 85
    const-string v0, ""

    .line 99
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_l"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/droid/engine/BrowActivity;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_1
    :goto_1
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_p="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/droid/engine/BrowActivity;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v0, p1

    .line 99
    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?&_l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/droid/engine/BrowActivity;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    const-string v1, "payfailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/droid/engine/BrowActivity;->setResult(I)V

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->finish()V

    .line 109
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    const-string v1, "paysuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/droid/engine/BrowActivity;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x800

    const/16 v2, 0x400

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-boolean v1, Lcom/droid/util/config;->ENABLE_PORTRAIT:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0, v3}, Lcom/droid/engine/BrowActivity;->setRequestedOrientation(I)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 37
    sget-boolean v1, Lcom/droid/util/config;->ENABLE_FULLSCREEN:Z

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 45
    :goto_1
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 47
    sget v1, Lcom/droid/engine/R$layout;->com_droid_engine_brow:I

    invoke-virtual {p0, v1}, Lcom/droid/engine/BrowActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PARAMS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/droid/engine/BrowActivity;->LANGUAGE:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PRODUCT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/droid/engine/BrowActivity;->PRODUCT:Ljava/lang/String;

    .line 51
    sget v1, Lcom/droid/engine/R$id;->com_droid_engine_browWebView:I

    invoke-virtual {p0, v1}, Lcom/droid/engine/BrowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 52
    .local v0, "brow":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 54
    new-instance v1, Lcom/droid/engine/BrowActivity$MyWebViewClient;

    invoke-direct {v1, p0}, Lcom/droid/engine/BrowActivity$MyWebViewClient;-><init>(Lcom/droid/engine/BrowActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 55
    new-instance v1, Lcom/droid/engine/BrowActivity$1;

    invoke-direct {v1, p0}, Lcom/droid/engine/BrowActivity$1;-><init>(Lcom/droid/engine/BrowActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 66
    iget-object v1, p0, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/droid/engine/BrowActivity;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/droid/engine/BrowActivity$2;

    invoke-direct {v1, p0}, Lcom/droid/engine/BrowActivity$2;-><init>(Lcom/droid/engine/BrowActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 74
    return-void

    .line 32
    .end local v0    # "brow":Landroid/webkit/WebView;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/droid/engine/BrowActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 79
    invoke-virtual {p0}, Lcom/droid/engine/BrowActivity;->finish()V

    .line 80
    return-void
.end method
