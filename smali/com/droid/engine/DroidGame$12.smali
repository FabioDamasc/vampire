.class Lcom/droid/engine/DroidGame$12;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->onUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/DroidGame;


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/droid/engine/DroidGame$12;->this$0:Lcom/droid/engine/DroidGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 869
    iget-object v1, p0, Lcom/droid/engine/DroidGame$12;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v1}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 870
    .local v0, "webView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 871
    iget-object v1, p0, Lcom/droid/engine/DroidGame$12;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v1}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:if(typeof onStageUpdate === \'function\'){onStageUpdate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/droid/engine/DroidGame$12;->this$0:Lcom/droid/engine/DroidGame;

    iget v3, v3, Lcom/droid/engine/DroidGame;->mProgres:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 873
    :cond_0
    return-void
.end method
