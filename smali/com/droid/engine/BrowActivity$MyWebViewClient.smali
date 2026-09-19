.class Lcom/droid/engine/BrowActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droid/engine/BrowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/BrowActivity;


# direct methods
.method constructor <init>(Lcom/droid/engine/BrowActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/droid/engine/BrowActivity$MyWebViewClient;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 114
    const-string v3, "js-call:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "?"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 116
    .local v2, "qpos":I
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "command":Ljava/lang/String;
    iget-object v3, p0, Lcom/droid/engine/BrowActivity$MyWebViewClient;->this$0:Lcom/droid/engine/BrowActivity;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/droid/engine/BrowActivity;->params:Ljava/lang/String;

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/droid/engine/BrowActivity$MyWebViewClient;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/droid/engine/BrowActivity$MyWebViewClient;->this$0:Lcom/droid/engine/BrowActivity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "qpos":I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 121
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v2    # "qpos":I
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/droid/engine/BrowActivity$MyWebViewClient;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-virtual {v3}, Lcom/droid/engine/BrowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "NOT Supported in Current Version"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "qpos":I
    :cond_0
    iget-object v3, p0, Lcom/droid/engine/BrowActivity$MyWebViewClient;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-virtual {v3, p2}, Lcom/droid/engine/BrowActivity;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
