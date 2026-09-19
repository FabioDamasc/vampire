.class Lcom/droid/engine/IfreeWebViewClient$1;
.super Ljava/lang/Object;
.source "IfreeWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/IfreeWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/IfreeWebViewClient;


# direct methods
.method constructor <init>(Lcom/droid/engine/IfreeWebViewClient;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/droid/engine/IfreeWebViewClient$1;->this$0:Lcom/droid/engine/IfreeWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 111
    .local v0, "message1":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 112
    iget-object v1, p0, Lcom/droid/engine/IfreeWebViewClient$1;->this$0:Lcom/droid/engine/IfreeWebViewClient;

    iget-object v1, v1, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v1, v1, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/droid/engine/ViewController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    return-void
.end method
