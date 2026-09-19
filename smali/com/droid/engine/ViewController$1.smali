.class Lcom/droid/engine/ViewController$1;
.super Ljava/lang/Object;
.source "ViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/ViewController;


# direct methods
.method constructor <init>(Lcom/droid/engine/ViewController;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/droid/engine/ViewController$1;->this$0:Lcom/droid/engine/ViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lcom/droid/engine/ViewController$1;->this$0:Lcom/droid/engine/ViewController;

    iget-object v2, v2, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    sget v3, Lcom/droid/engine/R$id;->com_droid_engine_linearlayout_logo:I

    invoke-virtual {v2, v3}, Lcom/droid/engine/DroidGame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 65
    .local v0, "message0":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 66
    iget-object v2, p0, Lcom/droid/engine/ViewController$1;->this$0:Lcom/droid/engine/ViewController;

    iget-object v2, v2, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v2, v2, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    invoke-virtual {v2, v0}, Lcom/droid/engine/ViewController;->sendMessage(Landroid/os/Message;)Z

    .line 67
    return-void
.end method
