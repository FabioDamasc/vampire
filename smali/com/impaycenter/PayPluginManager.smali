.class public Lcom/impaycenter/PayPluginManager;
.super Ljava/lang/Object;
.source "PayPluginManager.java"


# static fields
.field public static mCallback:Lcom/impaycenter/IPayPluginCallback;

.field public static plugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/impaycenter/IPayPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMaxNativeSupportNumber()I
    .locals 4

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "result":I
    sget-object v3, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 51
    .local v1, "pc":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->getNativeSupportBitPos()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 52
    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->getNativeSupportBitPos()I

    move-result v2

    goto :goto_0

    .line 55
    .end local v1    # "pc":Lcom/impaycenter/IPayPlugin;
    :cond_1
    return v2
.end method

.method public static getNativeSupportString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 32
    const-string v3, "1"

    .line 33
    .local v3, "n_supports":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/impaycenter/PayPluginManager;->getMaxNativeSupportNumber()I

    move-result v6

    if-gt v0, v6, :cond_0

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    sget-object v6, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/impaycenter/IPayPlugin;

    .line 37
    .local v4, "pc":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v4}, Lcom/impaycenter/IPayPlugin;->getNativeSupportBitPos()I

    move-result v2

    .line 38
    .local v2, "n_pos":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 39
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 40
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/16 v6, 0x31

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 45
    .end local v2    # "n_pos":I
    .end local v4    # "pc":Lcom/impaycenter/IPayPlugin;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    return-object v3
.end method

.method public static register(Lcom/impaycenter/IPayPlugin;)V
    .locals 1
    .param p0, "channel"    # Lcom/impaycenter/IPayPlugin;

    .prologue
    .line 19
    sget-object v0, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method


# virtual methods
.method public init(Lcom/impaycenter/IPayPluginCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/impaycenter/IPayPluginCallback;

    .prologue
    .line 15
    sput-object p1, Lcom/impaycenter/PayPluginManager;->mCallback:Lcom/impaycenter/IPayPluginCallback;

    .line 16
    return-void
.end method

.method public launchChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 25
    .local v1, "pc":Lcom/impaycenter/IPayPlugin;
    if-eqz p1, :cond_0

    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v1, p2}, Lcom/impaycenter/IPayPlugin;->launch(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v1    # "pc":Lcom/impaycenter/IPayPlugin;
    :cond_1
    return-void
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 75
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 76
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->onPayCenterPause()V

    goto :goto_0

    .line 78
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 68
    sget-object v2, Lcom/impaycenter/PayPluginManager;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/impaycenter/IPayPlugin;

    .line 69
    .local v1, "plugin":Lcom/impaycenter/IPayPlugin;
    invoke-interface {v1}, Lcom/impaycenter/IPayPlugin;->onPayCenterResume()V

    goto :goto_0

    .line 71
    .end local v1    # "plugin":Lcom/impaycenter/IPayPlugin;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
