.class public Lcom/droid/engine/IfreeWebViewClient;
.super Lorg/apache/cordova/CordovaWebViewClient;
.source "IfreeWebViewClient.java"


# static fields
.field public static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "IfreeWebViewClient"


# instance fields
.field ENABLE_SYSCODE:Z

.field mActivity:Lcom/droid/engine/DroidGame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    sput-boolean v0, Lcom/droid/engine/IfreeWebViewClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/droid/engine/DroidGame;)V
    .locals 1
    .param p1, "ctx"    # Lcom/droid/engine/DroidGame;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/DroidGap;)V

    .line 22
    iput-object p1, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    .line 23
    sget-boolean v0, Lcom/droid/util/config;->ENABLE_SYSCODE:Z

    iput-boolean v0, p0, Lcom/droid/engine/IfreeWebViewClient;->ENABLE_SYSCODE:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x6

    .line 67
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "pagetitle":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 102
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    sget-boolean v8, Lcom/droid/engine/DroidGame;->finishInitWebView:Z

    if-nez v8, :cond_0

    .line 105
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    const/4 v8, 0x1

    sput-boolean v8, Lcom/droid/engine/DroidGame;->finishInitWebView:Z

    .line 106
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/droid/engine/IfreeWebViewClient$1;

    invoke-direct {v9, p0}, Lcom/droid/engine/IfreeWebViewClient$1;-><init>(Lcom/droid/engine/IfreeWebViewClient;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 116
    :cond_0
    return-void

    .line 71
    :cond_1
    const-string v8, "login"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 72
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/droid/engine/DroidGame;->finishActivity(I)V

    .line 73
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-static {v8}, Lcom/droid/engine/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "uid":Ljava/lang/String;
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-static {v8}, Lcom/droid/engine/Utils;->getMacAdress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "macadress":Ljava/lang/String;
    move-object v5, v6

    .line 76
    .local v5, "scode":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/droid/engine/IfreeWebViewClient;->ENABLE_SYSCODE:Z

    if-eqz v8, :cond_2

    .line 77
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-static {v8}, Lcom/droid/engine/Utils;->getSyscode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 79
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:var syscode = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\';"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " var sysmac = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\';"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "info":Ljava/lang/String;
    sget-boolean v8, Lcom/droid/util/config;->ENABLE_THIRDPLATFORM:Z

    if-nez v8, :cond_3

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "var sysuser = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'; var syspassword = \'password\';"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    :cond_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 84
    .local v1, "gameinfo":Landroid/os/Message;
    iput v11, v1, Landroid/os/Message;->what:I

    .line 85
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v8, v8, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v1, v9, v10}, Lcom/droid/engine/ViewController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 89
    .local v0, "displayVer":Landroid/os/Message;
    iput v11, v0, Landroid/os/Message;->what:I

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:if(typeof displayVerInfo === \'function\')displayVerInfo(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v9, v9, Lcom/droid/engine/DroidGame;->verInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v8, v8, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    const-wide/16 v9, 0xc8

    invoke-virtual {v8, v0, v9, v10}, Lcom/droid/engine/ViewController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 96
    .end local v0    # "displayVer":Landroid/os/Message;
    .end local v1    # "gameinfo":Landroid/os/Message;
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "macadress":Ljava/lang/String;
    .end local v5    # "scode":Ljava/lang/String;
    .end local v6    # "uid":Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 97
    .local v7, "webviewFinish":Landroid/os/Message;
    iput v11, v7, Landroid/os/Message;->what:I

    .line 98
    const-string v8, "javascript:if(typeof onWebviewFinished === \'function\')onWebviewFinished();"

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v8, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v8, v8, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v7, v9, v10}, Lcom/droid/engine/ViewController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 92
    .end local v7    # "webviewFinish":Landroid/os/Message;
    :cond_5
    const-string v8, "Emross"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "avalon"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 93
    :cond_6
    const-string v8, "javascript:var openfeint=0;"

    invoke-virtual {p1, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 34
    const-string v5, "js-call:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 35
    const-string v5, "?"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 36
    .local v2, "qpos":I
    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "command":Ljava/lang/String;
    iget-object v5, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v5, v5, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    .line 42
    :try_start_0
    iget-object v5, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v5, v5, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/droid/engine/Utils;->invokeParentOrSubclassMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "qpos":I
    :cond_0
    :goto_0
    return v3

    .line 43
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v2    # "qpos":I
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-virtual {v5}, Lcom/droid/engine/DroidGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "NOT Supported in Current Version"

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 48
    iget-object v4, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->hideLoading()V

    .line 49
    sget-boolean v4, Lcom/droid/engine/IfreeWebViewClient;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 50
    const-string v4, "IfreeWebViewClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NOT Supported in Current Version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "qpos":I
    :cond_1
    const-string v5, "http:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "https:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 54
    :cond_2
    iget-object v4, p0, Lcom/droid/engine/IfreeWebViewClient;->mActivity:Lcom/droid/engine/DroidGame;

    iget-object v4, v4, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    invoke-virtual {v4, p2}, Lcom/droid/engine/NativeCall;->brow(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v5, "main.html"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "start.html"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 57
    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_5
    const-string v3, ".html"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    .line 60
    goto :goto_0

    .line 62
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method
