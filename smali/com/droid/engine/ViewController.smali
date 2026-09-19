.class public Lcom/droid/engine/ViewController;
.super Landroid/os/Handler;
.source "ViewController.java"


# static fields
.field public static final STATE_INIT_WEBVIEW:I = 0x4

.field public static final STATE_LOGO_ICP:I = 0x1

.field public static final STATE_LOGO_ISP:I = 0x0

.field public static final STATE_START_GAME:I = 0x5

.field public static final STATE_UPDATE:I = 0x2

.field public static final STATE_UPDATE_NEWTHREAD:I = 0x3

.field public static final STATE_WEBPAGE_FINISHED:I = 0x6


# instance fields
.field mActivity:Lcom/droid/engine/DroidGame;


# direct methods
.method public constructor <init>(Lcom/droid/engine/DroidGame;)V
    .locals 0
    .param p1, "activity"    # Lcom/droid/engine/DroidGame;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    .line 25
    return-void
.end method

.method private stateSet(ILjava/lang/Object;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 57
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v3, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v3, v3, Lcom/droid/engine/DroidGame;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/droid/engine/ViewController$1;

    invoke-direct {v4, p0}, Lcom/droid/engine/ViewController$1;-><init>(Lcom/droid/engine/ViewController;)V

    const-wide/16 v5, 0x4b0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/droid/engine/ViewController$2;

    invoke-direct {v4, p0}, Lcom/droid/engine/ViewController$2;-><init>(Lcom/droid/engine/ViewController;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v3, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    sget v4, Lcom/droid/engine/R$id;->com_droid_engine_text_progress:I

    invoke-virtual {v3, v4}, Lcom/droid/engine/DroidGame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 92
    .local v0, "message1":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 93
    iget-object v3, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v3, v3, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    invoke-virtual {v3, v0}, Lcom/droid/engine/ViewController;->sendMessage(Landroid/os/Message;)Z

    .line 95
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    .local v1, "message2":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 97
    iget-object v3, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v3, v3, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    invoke-virtual {v3, v1}, Lcom/droid/engine/ViewController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 100
    .end local v0    # "message1":Landroid/os/Message;
    .end local v1    # "message2":Landroid/os/Message;
    .end local v2    # "tv":Landroid/widget/TextView;
    :pswitch_3
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/droid/engine/ViewController$3;

    invoke-direct {v4, p0}, Lcom/droid/engine/ViewController$3;-><init>(Lcom/droid/engine/ViewController;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v3, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-virtual {v3}, Lcom/droid/engine/DroidGame;->initWebView()V

    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v3, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-virtual {v3}, Lcom/droid/engine/DroidGame;->startGame()V

    goto :goto_0

    .line 126
    :pswitch_6
    iget-object v3, p0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/droid/engine/DroidGame;->runJSOnMainThread(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 33
    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V

    goto :goto_0

    .line 36
    :pswitch_1
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V

    goto :goto_0

    .line 39
    :pswitch_2
    const/4 v0, 0x2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V

    goto :goto_0

    .line 42
    :pswitch_3
    const/4 v0, 0x3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V

    goto :goto_0

    .line 45
    :pswitch_4
    const/4 v0, 0x4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V

    goto :goto_0

    .line 48
    :pswitch_5
    const/4 v0, 0x5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V

    goto :goto_0

    .line 51
    :pswitch_6
    const/4 v0, 0x6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
