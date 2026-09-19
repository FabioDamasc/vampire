.class Lcom/droid/engine/NativeCall$1;
.super Ljava/lang/Object;
.source "NativeCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/NativeCall;->registerJavascriptObject(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/NativeCall;


# direct methods
.method constructor <init>(Lcom/droid/engine/NativeCall;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyThirdPlatformAPI(Ljava/lang/String;)V
    .locals 1
    .param p1, "returnParameter"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p1, v0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    invoke-virtual {v0}, Lcom/droid/engine/NativeCall;->applyThirdPlatformAPI()V

    .line 407
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iget-object v0, v0, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v0}, Lcom/droid/engine/NativeCall$NativeCallImpl;->exitGame()V

    .line 366
    return-void
.end method

.method public getClientCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    const-string v0, "qq"

    return-object v0
.end method

.method public initpaycenter(Ljava/lang/String;)V
    .locals 1
    .param p1, "returnParameter"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p1, v0, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    invoke-virtual {v0}, Lcom/droid/engine/NativeCall;->initpaycenter()V

    .line 396
    return-void
.end method

.method public isAssetsCopied()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public nativeLoadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string v3, "data/boot.js"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window._l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";window._p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    :goto_0
    return-object v3

    .line 414
    :cond_0
    const-string v3, "sub.html"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/droid/engine/Utils;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 417
    :cond_1
    const/4 v2, 0x0

    .line 420
    .local v2, "js_data":[B
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/droid/engine/Utils;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 422
    .local v0, "data":[B
    invoke-static {v0}, Lcom/droid/engine/Security;->init([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 431
    .end local v0    # "data":[B
    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iget-object v3, v3, Lcom/droid/engine/NativeCall;->mNativeCallImpl:Lcom/droid/engine/NativeCall$NativeCallImpl;

    invoke-interface {v3}, Lcom/droid/engine/NativeCall$NativeCallImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:showInfo(\' load file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "failed. \');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public paycenter()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    invoke-virtual {v0}, Lcom/droid/engine/NativeCall;->paycenter()V

    .line 401
    return-void
.end method

.method public setCurrentView(Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p1, v0, Lcom/droid/engine/NativeCall;->currentView:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "isMute"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    invoke-virtual {v0, p1}, Lcom/droid/engine/NativeCall;->setMute(Z)V

    .line 390
    return-void
.end method

.method public setPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "refercode"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p1, v0, Lcom/droid/engine/NativeCall;->payment_user:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p2, v0, Lcom/droid/engine/NativeCall;->payment_gross:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p3, v0, Lcom/droid/engine/NativeCall;->payment_refercode:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "refercode"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p1, v0, Lcom/droid/engine/NativeCall;->payment_user:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p2, v0, Lcom/droid/engine/NativeCall;->payment_gross:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p3, v0, Lcom/droid/engine/NativeCall;->payment_refercode:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p4, v0, Lcom/droid/engine/NativeCall;->payment_channel:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/droid/engine/NativeCall$1;->this$0:Lcom/droid/engine/NativeCall;

    iput-object p1, v0, Lcom/droid/engine/NativeCall;->currentUser:Ljava/lang/String;

    .line 371
    return-void
.end method
