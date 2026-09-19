.class Lcom/droid/engine/ViewController$2;
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
    .line 72
    iput-object p1, p0, Lcom/droid/engine/ViewController$2;->this$0:Lcom/droid/engine/ViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/droid/engine/ViewController$2;->this$0:Lcom/droid/engine/ViewController;

    iget-object v1, v1, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v1, v1, Lcom/droid/engine/DroidGame;->mUpdate:Lcom/droid/engine/Update;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ver.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/droid/engine/Update;->isClear(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/droid/engine/ViewController$2;->this$0:Lcom/droid/engine/ViewController;

    iget-object v1, v1, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    sget-object v2, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    const-string v3, "build"

    invoke-static {v1, v2, v3}, Lcom/droid/engine/Utils;->copyBaseVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 79
    .local v0, "message1":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 80
    iget-object v1, p0, Lcom/droid/engine/ViewController$2;->this$0:Lcom/droid/engine/ViewController;

    iget-object v1, v1, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v1, v1, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    invoke-virtual {v1, v0}, Lcom/droid/engine/ViewController;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method
