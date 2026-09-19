.class public Lcom/droid/engine/DroidGame;
.super Lorg/apache/cordova/DroidGap;
.source "DroidGame.java"

# interfaces
.implements Lcom/droid/engine/NativeCall$NativeCallImpl;
.implements Lcom/droid/engine/Update$UpdateCallback;
.implements Lcom/thirdplatform/ThirdPlatformCallback;
.implements Lcom/impaycenter/IPayPluginCallback;


# static fields
.field public static final CONTACT_ACTIVITY_REQUESTCODE:I = 0x3

.field public static final LOG_TAG:Ljava/lang/String; = "GameActivity"

.field public static final PAYMENT_ACTIVITY_REQUESTCODE:I = 0x4

.field public static final PAYMENT_FAILED_RESULTCODE:I = 0x1

.field public static final PAYMENT_MESSAGE_RESULTCODE:I = 0x3

.field public static final PAYMENT_SECCESS_RESULTCODE:I = 0x2

.field public static final SPLASH_ACTIVITY_REQUESTCODE:I = 0x5

.field public static finishInitWebView:Z = false

.field public static isUpdateing:Z = false

.field public static final krPayMentrequest:I = 0x3f4

.field static localVer:I

.field public static screenHeight:I

.field public static screenWidth:I

.field static serverURL:Ljava/lang/String;

.field static serverVer:I

.field static versionInfo:Ljava/lang/StringBuffer;


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected handlerFlash:Lcom/droid/engine/ViewController;

.field protected mContext:Landroid/content/Context;

.field public mNativeCall:Lcom/droid/engine/NativeCall;

.field public mPaycenter:Lcom/impaycenter/Paycenter;

.field mProgres:I

.field public mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

.field public mUpdate:Lcom/droid/engine/Update;

.field mWebviewScale:F

.field oldVersion:Ljava/lang/String;

.field public verInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    sput v1, Lcom/droid/engine/DroidGame;->localVer:I

    .line 69
    sput v1, Lcom/droid/engine/DroidGame;->serverVer:I

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/droid/engine/DroidGame;->serverURL:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/droid/engine/DroidGame;->versionInfo:Ljava/lang/StringBuffer;

    .line 82
    sput-boolean v1, Lcom/droid/engine/DroidGame;->finishInitWebView:Z

    .line 83
    sput-boolean v1, Lcom/droid/engine/DroidGame;->isUpdateing:Z

    .line 85
    sput v1, Lcom/droid/engine/DroidGame;->screenWidth:I

    .line 86
    sput v1, Lcom/droid/engine/DroidGame;->screenHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 63
    const-string v0, "20130301-0"

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->verInfo:Ljava/lang/String;

    .line 64
    const-string v0, "0"

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->oldVersion:Ljava/lang/String;

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->handler:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/droid/engine/DroidGame;->mProgres:I

    return-void
.end method

.method static synthetic access$000(Lcom/droid/engine/DroidGame;Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/droid/engine/DroidGame;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/droid/engine/DroidGame;->scaleWebview(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/droid/engine/DroidGame;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/droid/engine/DroidGame;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->appView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/droid/engine/DroidGame;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/droid/engine/DroidGame;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->appView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/droid/engine/DroidGame;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/droid/engine/DroidGame;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->appView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/droid/engine/DroidGame;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/droid/engine/DroidGame;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->appView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initLogSystem()V
    .locals 0

    .prologue
    .line 185
    invoke-static {p0}, Lcom/droid/util/LogTrack;->getInstance(Landroid/content/Context;)Lcom/droid/util/LogTrack;

    .line 186
    invoke-static {}, Lcom/droid/util/LogTrack;->startLogTrack()V

    .line 187
    return-void
.end method

.method private scaleWebview(Landroid/webkit/WebView;)V
    .locals 6
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    const v5, 0x3f75c28f    # 0.96f

    .line 393
    :try_start_0
    const-class v3, Landroid/webkit/WebView;

    const-string v4, "mDefaultScale"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 394
    .local v0, "defaultScale":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 395
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "blaze"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    iget v3, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    mul-float/2addr v3, v5

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 430
    .end local v0    # "defaultScale":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 398
    .restart local v0    # "defaultScale":Ljava/lang/reflect/Field;
    :cond_0
    iget v3, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local v0    # "defaultScale":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    :try_start_1
    const-class v3, Landroid/webkit/WebView;

    const-string v4, "mZoomManager"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 403
    .local v1, "defaultZoom":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 404
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mDefaultScale"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 405
    .restart local v0    # "defaultScale":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 406
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "blaze"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_0

    .line 410
    .end local v0    # "defaultScale":Ljava/lang/reflect/Field;
    .end local v1    # "defaultZoom":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 409
    .restart local v0    # "defaultScale":Ljava/lang/reflect/Field;
    .restart local v1    # "defaultZoom":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method


# virtual methods
.method checkAndUpdate()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mUpdate:Lcom/droid/engine/Update;

    invoke-virtual {v0}, Lcom/droid/engine/Update;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Lcom/droid/engine/DroidGame$5;

    invoke-direct {v0, p0}, Lcom/droid/engine/DroidGame$5;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {p0, v0}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->updateInfoVer()V

    .line 517
    return-void
.end method

.method protected createShortcut()V
    .locals 6

    .prologue
    .line 841
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v2, "shortcut":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    sget v4, Lcom/droid/engine/R$string;->app_name:I

    invoke-virtual {p0, v4}, Lcom/droid/engine/DroidGame;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 850
    .local v0, "comp":Landroid/content/ComponentName;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 853
    iget-object v3, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    sget v4, Lcom/droid/engine/R$drawable;->icon:I

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 854
    .local v1, "iconRes":Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 856
    invoke-virtual {p0, v2}, Lcom/droid/engine/DroidGame;->sendBroadcast(Landroid/content/Intent;)V

    .line 857
    return-void
.end method

.method protected dialog()V
    .locals 1

    .prologue
    .line 798
    new-instance v0, Lcom/droid/engine/DroidGame$11;

    invoke-direct {v0, p0}, Lcom/droid/engine/DroidGame$11;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {p0, v0}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 838
    return-void
.end method

.method protected dialogRestart()V
    .locals 1

    .prologue
    .line 770
    new-instance v0, Lcom/droid/engine/DroidGame$10;

    invoke-direct {v0, p0}, Lcom/droid/engine/DroidGame$10;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {p0, v0}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 794
    return-void
.end method

.method public exitGame()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    invoke-virtual {v0}, Lcom/thirdplatform/ThirdPlatform;->finishPlatform()V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    invoke-virtual {v0}, Lcom/impaycenter/Paycenter;->finishPlatform()V

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->finish()V

    .line 748
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->runFinalizersOnExit(Z)V

    .line 749
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 750
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getControllor()Lcom/droid/engine/ViewController;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    return-object v0
.end method

.method public getNativeCall()Lcom/droid/engine/NativeCall;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    return-object v0
.end method

.method public getPaycenter()Lcom/impaycenter/Paycenter;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    return-object v0
.end method

.method public getThirdPlatform()Lcom/thirdplatform/ThirdPlatform;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    return-object v0
.end method

.method public getUpdateState()Z
    .locals 1

    .prologue
    .line 519
    sget-boolean v0, Lcom/droid/engine/DroidGame;->isUpdateing:Z

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->root:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/droid/engine/DroidGame;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 623
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->appView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 740
    .local v0, "wv":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    const-string v1, "javascript:pnlLoading.hide()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 741
    :cond_0
    return-void
.end method

.method public ingameReturnKey()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 270
    .local v1, "v":Landroid/webkit/WebView;
    if-nez v1, :cond_0

    .line 307
    :goto_0
    return v2

    .line 273
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "pagetitle":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "login"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->exitGame()V

    move v2, v3

    .line 277
    goto :goto_0

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    iget-object v4, v4, Lcom/droid/engine/NativeCall;->currentView:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    iget-object v4, v4, Lcom/droid/engine/NativeCall;->currentView:Ljava/lang/String;

    const-string v5, "f_city.html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 281
    sget-boolean v3, Lcom/droid/util/config;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u8fd9\u662f\u6d4b\u8bd5\u73af\u5883"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 286
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:showYesNo(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/droid/engine/R$string;->com_droid_engine_sure_to_exit_game:I

    invoke-virtual {p0, v4}, Lcom/droid/engine/DroidGame;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',function(){droid.exit();});"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->dialog()V

    goto :goto_0

    .line 292
    :cond_3
    iget-object v4, p0, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    iget-object v4, v4, Lcom/droid/engine/NativeCall;->currentView:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 293
    if-eqz v0, :cond_5

    const-string v4, "avalon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "main"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 294
    :cond_4
    const-string v3, "javascript:showYesNo(LNG.CONFIRM_EXIT,function(){droid.exit();});"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->dialog()V

    goto/16 :goto_0

    .line 302
    :cond_5
    if-eqz v0, :cond_6

    const-string v4, "Emross"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 303
    const-string v3, "javascript:showCity();"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 307
    goto/16 :goto_0
.end method

.method public initContext()V
    .locals 0

    .prologue
    .line 171
    iput-object p0, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    .line 172
    return-void
.end method

.method public initGameActivity()V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->initContext()V

    .line 202
    invoke-direct {p0}, Lcom/droid/engine/DroidGame;->initLogSystem()V

    .line 203
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->initNativeCall()V

    .line 204
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->initPaycenter()V

    .line 205
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->initThirdPlatform()V

    .line 206
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/droid/engine/Utils;->initSharedPreferences(Landroid/content/Context;)V

    .line 207
    new-instance v0, Lcom/droid/engine/Update;

    invoke-direct {v0, p0, p0}, Lcom/droid/engine/Update;-><init>(Landroid/content/Context;Lcom/droid/engine/Update$UpdateCallback;)V

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->mUpdate:Lcom/droid/engine/Update;

    .line 208
    new-instance v0, Lcom/droid/engine/ViewController;

    invoke-direct {v0, p0}, Lcom/droid/engine/ViewController;-><init>(Lcom/droid/engine/DroidGame;)V

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    .line 209
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/droid/engine/DroidGame$1;

    invoke-direct {v1, p0}, Lcom/droid/engine/DroidGame$1;-><init>(Lcom/droid/engine/DroidGame;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method

.method public initNativeCall()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/droid/engine/NativeCall;

    invoke-direct {v0, p0}, Lcom/droid/engine/NativeCall;-><init>(Lcom/droid/engine/NativeCall$NativeCallImpl;)V

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    .line 176
    return-void
.end method

.method public initPaycenter()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/impaycenter/Paycenter;->getInstance(Landroid/content/Context;)Lcom/impaycenter/Paycenter;

    move-result-object v0

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    .line 193
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    iget-object v1, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/impaycenter/Paycenter;->startPlatform(Landroid/content/Context;Lcom/impaycenter/IPayPluginCallback;I)V

    .line 194
    return-void
.end method

.method public initThirdPlatform()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/thirdplatform/ThirdPlatform;

    iget-object v1, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/thirdplatform/ThirdPlatform;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    .line 181
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    iget-object v1, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/thirdplatform/ThirdPlatform;->startPlatform(Landroid/content/Context;Lcom/thirdplatform/ThirdPlatformCallback;I)V

    .line 182
    return-void
.end method

.method public initWebView()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 312
    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, "wv":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    .line 315
    .local v10, "ws":Landroid/webkit/WebSettings;
    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 316
    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 317
    invoke-virtual {v10, v12}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 318
    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "database"

    invoke-virtual {v0, v3, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "databasePath":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 322
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 325
    :cond_0
    invoke-virtual {v1, v12}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 326
    new-instance v0, Lcom/droid/engine/DroidGame$2;

    invoke-direct {v0, p0}, Lcom/droid/engine/DroidGame$2;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    new-instance v0, Lcom/droid/engine/DroidGame$3;

    invoke-direct {v0, p0}, Lcom/droid/engine/DroidGame$3;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    invoke-virtual {v0, v1}, Lcom/droid/engine/NativeCall;->registerJavascriptObject(Landroid/webkit/WebView;)V

    .line 345
    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 347
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 348
    .local v2, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 350
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getRequestedOrientation()I

    move-result v6

    .line 351
    .local v6, "orient":I
    const/high16 v4, 0x43f00000    # 480.0f

    .line 352
    .local v4, "width":F
    const/high16 v5, 0x43a00000    # 320.0f

    .line 353
    .local v5, "height":F
    if-ne v6, v11, :cond_1

    .line 354
    const/high16 v4, 0x43a00000    # 320.0f

    .line 355
    const/high16 v5, 0x43f00000    # 480.0f

    .line 359
    :cond_1
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    .line 361
    const/16 v9, 0x64

    .line 362
    .local v9, "web_scale":I
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "blaze"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    .line 363
    iget v0, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    const/high16 v3, 0x42c00000    # 96.0f

    mul-float/2addr v0, v3

    float-to-int v9, v0

    .line 367
    :goto_0
    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 369
    new-instance v0, Lcom/droid/engine/DroidGame$4;

    invoke-direct {v0, p0, v1}, Lcom/droid/engine/DroidGame$4;-><init>(Lcom/droid/engine/DroidGame;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 379
    invoke-static {p0}, Lcom/droid/engine/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 380
    .local v8, "uid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window._l=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " var syscode = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\';if(typeof displayVerInfo === \'function\')displayVerInfo(\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/droid/engine/DroidGame;->verInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\');"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->updateInfoVer()V

    .line 387
    invoke-virtual {p0, v1}, Lcom/droid/engine/DroidGame;->loadWebView(Landroid/webkit/WebView;)V

    .line 388
    iget v3, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/droid/engine/DroidGame;->updateWebViewLayout(Landroid/webkit/WebView;Landroid/util/DisplayMetrics;FFFI)V

    .line 389
    return-void

    .line 365
    .end local v8    # "uid":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/droid/engine/DroidGame;->mWebviewScale:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v9, v0

    goto :goto_0
.end method

.method protected loadConfiguration()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->loadConfiguration()V

    .line 167
    invoke-static {p0}, Lcom/droid/util/config;->loadConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->exitGame()V

    .line 168
    :cond_0
    return-void
.end method

.method public loadWebView(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    .line 433
    new-instance v0, Lcom/droid/engine/IfreeWebViewClient;

    invoke-direct {v0, p0}, Lcom/droid/engine/IfreeWebViewClient;-><init>(Lcom/droid/engine/DroidGame;)V

    new-instance v1, Lorg/apache/cordova/CordovaChromeClient;

    iget-object v2, p0, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/droid/engine/DroidGame;->init(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/droid/engine/DroidGame;->loadUrl(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/impaycenter/Paycenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 528
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/thirdplatform/ThirdPlatform;->onActivityResult(IILandroid/content/Intent;)V

    .line 529
    :cond_1
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 530
    packed-switch p2, :pswitch_data_0

    .line 617
    :cond_2
    :goto_0
    return-void

    .line 534
    :pswitch_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/droid/engine/DroidGame;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 535
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 536
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 537
    .local v9, "contactId":Ljava/lang/String;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 538
    .local v15, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/droid/engine/DroidGame;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 541
    .local v13, "emails":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/droid/engine/DroidGame;->mNativeCall:Lcom/droid/engine/NativeCall;

    iget-object v3, v3, Lcom/droid/engine/NativeCall;->params:Ljava/lang/String;

    const-string v4, "sms"

    if-ne v3, v4, :cond_5

    .line 542
    const-string v3, "has_phone_number"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 544
    .local v14, "hasPhone":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 545
    const-string v14, "true"

    .line 549
    :goto_1
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/droid/engine/DroidGame;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 553
    .local v17, "phones":Landroid/database/Cursor;
    :goto_2
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 554
    const-string v3, "data1"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 555
    .local v16, "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const-string v4, "javascript:addsms(\'%1$s\',\'%2$s\');"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 571
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "emails":Landroid/database/Cursor;
    .end local v14    # "hasPhone":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "phoneNumber":Ljava/lang/String;
    .end local v17    # "phones":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 572
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/droid/engine/DroidGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 547
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "contactId":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "emails":Landroid/database/Cursor;
    .restart local v14    # "hasPhone":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v14, "false"

    goto :goto_1

    .line 561
    .end local v14    # "hasPhone":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 562
    const-string v3, "data1"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 563
    .local v12, "emailAddress":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const-string v4, "javascript:addemail(\'%1$s\',\'%2$s\');"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 577
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "emailAddress":Ljava/lang/String;
    .end local v13    # "emails":Landroid/database/Cursor;
    .end local v15    # "name":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droid/engine/DroidGame;->appView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    .line 581
    .local v18, "wv":Landroid/webkit/WebView;
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 586
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:showInfo(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/droid/engine/R$string;->com_droid_engine_pp_payment_failed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/droid/engine/DroidGame;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:resyncUserInfo();showInfo(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/droid/engine/R$string;->com_droid_engine_pp_payment_success:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/droid/engine/DroidGame;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 581
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 458
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 459
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x800

    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 93
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget-boolean v1, Lcom/droid/util/config;->ENABLE_PORTRAIT:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0, v2}, Lcom/droid/engine/DroidGame;->setRequestedOrientation(I)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 102
    sget-boolean v1, Lcom/droid/util/config;->ENABLE_FULLSCREEN:Z

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 110
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/droid/engine/DroidGame;->screenWidth:I

    .line 113
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/droid/engine/DroidGame;->screenHeight:I

    .line 115
    sget v1, Lcom/droid/engine/R$layout;->com_droid_engine_splash:I

    invoke-virtual {p0, v1}, Lcom/droid/engine/DroidGame;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->initGameActivity()V

    .line 119
    return-void

    .line 97
    .end local v0    # "metric":Landroid/util/DisplayMetrics;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/droid/engine/DroidGame;->setRequestedOrientation(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onDestroy()V

    .line 161
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->ingameReturnKey()Z

    move-result v0

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/DroidGap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 145
    invoke-static {}, Lcom/droid/util/LogTrack;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mThirdPlatform:Lcom/thirdplatform/ThirdPlatform;

    invoke-virtual {v0}, Lcom/thirdplatform/ThirdPlatform;->onPause()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    invoke-virtual {v0}, Lcom/impaycenter/Paycenter;->onPause()V

    .line 148
    :cond_1
    return-void
.end method

.method public onPaycenterCallback(Ljava/lang/String;)V
    .locals 8
    .param p1, "Params"    # Ljava/lang/String;

    .prologue
    .line 688
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 689
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "event"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "event":Ljava/lang/String;
    const-string v6, "result"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 691
    .local v5, "result":Ljava/lang/String;
    const-string v6, "pay"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "sucess"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 692
    new-instance v6, Lcom/droid/engine/DroidGame$7;

    invoke-direct {v6, p0}, Lcom/droid/engine/DroidGame$7;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {p0, v6}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:onPaycenterCallback("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/droid/engine/DroidGame;->runJSOnMainThread(Ljava/lang/String;)V

    .line 732
    return-void

    .line 703
    .restart local v1    # "event":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "pay"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "fail"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 705
    const-string v4, "unkown error"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 707
    .local v4, "msg":Ljava/lang/String;
    :try_start_2
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 712
    :goto_1
    move-object v3, v4

    .line 714
    .local v3, "message":Ljava/lang/String;
    :try_start_3
    new-instance v6, Lcom/droid/engine/DroidGame$8;

    invoke-direct {v6, p0, v3}, Lcom/droid/engine/DroidGame$8;-><init>(Lcom/droid/engine/DroidGame;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 727
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 708
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "event":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 710
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 133
    invoke-static {}, Lcom/droid/util/LogTrack;->onResume()V

    .line 134
    invoke-virtual {p0}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 135
    .local v0, "wv":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/droid/engine/DroidGame;->scaleWebview(Landroid/webkit/WebView;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/droid/engine/DroidGame;->mPaycenter:Lcom/impaycenter/Paycenter;

    invoke-virtual {v1}, Lcom/impaycenter/Paycenter;->onResume()V

    .line 139
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onStart()V

    .line 124
    invoke-static {}, Lcom/droid/util/LogTrack;->onStart()V

    .line 127
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onStop()V

    .line 153
    invoke-static {}, Lcom/droid/util/LogTrack;->onStop()V

    .line 155
    return-void
.end method

.method public onThirdPlatformCallback(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonParams"    # Ljava/lang/String;

    .prologue
    .line 647
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 648
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "event"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "event":Ljava/lang/String;
    const-string v4, "force"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "force":Ljava/lang/String;
    const-string v4, "update"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    new-instance v4, Lcom/droid/engine/DroidGame$6;

    invoke-direct {v4, p0}, Lcom/droid/engine/DroidGame$6;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {p0, v4}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "force":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:onThirdPlatformCallback("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/droid/engine/DroidGame;->runJSOnMainThread(Ljava/lang/String;)V

    .line 682
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpdate(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 864
    iput p1, p0, Lcom/droid/engine/DroidGame;->mProgres:I

    .line 865
    new-instance v0, Lcom/droid/engine/DroidGame$12;

    invoke-direct {v0, p0}, Lcom/droid/engine/DroidGame$12;-><init>(Lcom/droid/engine/DroidGame;)V

    invoke-virtual {p0, v0}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public onUpdateFinish()V
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    sput-boolean v0, Lcom/droid/engine/DroidGame;->isUpdateing:Z

    .line 879
    return-void
.end method

.method public onUpdateStart()V
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x1

    sput-boolean v0, Lcom/droid/engine/DroidGame;->isUpdateing:Z

    .line 861
    return-void
.end method

.method public runJSOnMainThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "Params"    # Ljava/lang/String;

    .prologue
    .line 754
    new-instance v0, Lcom/droid/engine/DroidGame$9;

    invoke-direct {v0, p0, p1}, Lcom/droid/engine/DroidGame$9;-><init>(Lcom/droid/engine/DroidGame;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/droid/engine/DroidGame;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 766
    return-void
.end method

.method public startGame()V
    .locals 2

    .prologue
    .line 438
    sget v1, Lcom/droid/engine/R$id;->com_droid_engine_frameLayout1:I

    invoke-virtual {p0, v1}, Lcom/droid/engine/DroidGame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 439
    .local v0, "main":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/droid/engine/DroidGame;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 442
    return-void
.end method

.method updateInfoVer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/droid/engine/DroidGame;->localVer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "newVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/droid/engine/DroidGame;->verInfo:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "vInfo":[Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 483
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/droid/engine/DroidGame;->oldVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/droid/engine/DroidGame;->verInfo:Ljava/lang/String;

    .line 491
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/droid/engine/DroidGame;->verInfo:Ljava/lang/String;

    goto :goto_0

    .line 489
    :cond_1
    const-string v2, "20130301-0"

    iput-object v2, p0, Lcom/droid/engine/DroidGame;->verInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateWebViewLayout(Landroid/webkit/WebView;Landroid/util/DisplayMetrics;FFFI)V
    .locals 3
    .param p1, "wv"    # Landroid/webkit/WebView;
    .param p2, "metric"    # Landroid/util/DisplayMetrics;
    .param p3, "scale"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "orient"    # I

    .prologue
    .line 446
    const/4 v1, 0x1

    if-ne p6, v1, :cond_0

    .line 447
    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float v2, p3, p5

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 448
    .local v0, "h":I
    if-lez v0, :cond_0

    sget-boolean v1, Lcom/droid/util/config;->ENABLE_INCESSANTLY:Z

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p0, v0}, Lcom/droid/engine/DroidGame;->setRootViewMargin(I)V

    .line 453
    .end local v0    # "h":I
    :cond_0
    return-void
.end method

.method public videoComplete()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public videoError(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 471
    return-void
.end method

.method public videoReady()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method
