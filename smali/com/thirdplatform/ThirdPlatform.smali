.class public Lcom/thirdplatform/ThirdPlatform;
.super Ljava/lang/Object;
.source "ThirdPlatform.java"


# static fields
.field public static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "ThirdPlatform"

.field public static final SDK_VERSION:Ljava/lang/String; = "1"


# instance fields
.field public params:Ljava/lang/String;

.field public tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    sput-boolean v0, Lcom/thirdplatform/ThirdPlatform;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "thirdplatform"

    const-string v11, "xml"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 25
    .local v3, "id":I
    if-nez v3, :cond_0

    .line 26
    const-string v9, "init ERROR"

    const-string v10, "config.xml missing. Ignoring..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 29
    .local v8, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 30
    .local v2, "eventType":I
    :goto_0
    const/4 v9, 0x1

    if-eq v2, v9, :cond_2

    .line 33
    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    .line 34
    :try_start_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "strNode":Ljava/lang/String;
    const-string v9, "string"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 36
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "name":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "value":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "params"

    invoke-interface {v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "params":Ljava/lang/String;
    const-string v9, "thirdplatform"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 44
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/thirdplatform/ThirdPlatformImpl;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/thirdplatform/ThirdPlatformImpl;

    iput-object v9, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    .line 46
    iget-object v9, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    invoke-interface {v9, v5}, Lcom/thirdplatform/ThirdPlatformImpl;->initPlatform(Ljava/lang/String;)V

    .line 50
    .end local v0    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/thirdplatform/ThirdPlatformImpl;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "strNode":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method


# virtual methods
.method public enterPlatform()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    invoke-interface {v0}, Lcom/thirdplatform/ThirdPlatformImpl;->enterPlatform()V

    .line 67
    :cond_0
    return-void
.end method

.method public finishPlatform()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    invoke-interface {v0}, Lcom/thirdplatform/ThirdPlatformImpl;->finishPlatform()V

    .line 75
    :cond_0
    return-void
.end method

.method public login()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    iget-object v1, p0, Lcom/thirdplatform/ThirdPlatform;->params:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/thirdplatform/ThirdPlatformImpl;->login(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public message()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    iget-object v1, p0, Lcom/thirdplatform/ThirdPlatform;->params:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/thirdplatform/ThirdPlatformImpl;->message(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/thirdplatform/ThirdPlatformImpl;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    invoke-interface {v0}, Lcom/thirdplatform/ThirdPlatformImpl;->onPause()V

    .line 71
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    invoke-interface {v0}, Lcom/thirdplatform/ThirdPlatformImpl;->onResume()V

    .line 63
    :cond_0
    return-void
.end method

.method public startPlatform(Landroid/content/Context;Lcom/thirdplatform/ThirdPlatformCallback;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/thirdplatform/ThirdPlatformCallback;
    .param p3, "orient"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/thirdplatform/ThirdPlatformImpl;->startPlatform(Landroid/content/Context;Lcom/thirdplatform/ThirdPlatformCallback;I)V

    .line 59
    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thirdplatform/ThirdPlatform;->tpImpl:Lcom/thirdplatform/ThirdPlatformImpl;

    iget-object v1, p0, Lcom/thirdplatform/ThirdPlatform;->params:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/thirdplatform/ThirdPlatformImpl;->update(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method
