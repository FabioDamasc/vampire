.class Lcom/droid/engine/DroidGame$9;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->runJSOnMainThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/DroidGame;

.field final synthetic val$Params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/droid/engine/DroidGame$9;->this$0:Lcom/droid/engine/DroidGame;

    iput-object p2, p0, Lcom/droid/engine/DroidGame$9;->val$Params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 759
    iget-object v2, p0, Lcom/droid/engine/DroidGame$9;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v2}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 760
    .local v1, "wv":Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 761
    iget-object v0, p0, Lcom/droid/engine/DroidGame$9;->val$Params:Ljava/lang/String;

    .line 762
    .local v0, "javascript":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 764
    .end local v0    # "javascript":Ljava/lang/String;
    :cond_0
    return-void
.end method
