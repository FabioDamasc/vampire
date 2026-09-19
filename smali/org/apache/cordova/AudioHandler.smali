.class public Lorg/apache/cordova/AudioHandler;
.super Lorg/apache/cordova/api/Plugin;
.source "AudioHandler.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field mediaPlayingId:Ljava/lang/String;

.field pausedForPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field players:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field shortPlayer:Lorg/apache/cordova/AudioShortPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "AudioHandler"

    sput-object v0, Lorg/apache/cordova/AudioHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lorg/apache/cordova/AudioShortPlayer;

    invoke-direct {v0, p0}, Lorg/apache/cordova/AudioShortPlayer;-><init>(Lorg/apache/cordova/AudioHandler;)V

    iput-object v0, p0, Lorg/apache/cordova/AudioHandler;->shortPlayer:Lorg/apache/cordova/AudioShortPlayer;

    .line 61
    return-void
.end method

.method private release(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const/4 v1, 0x0

    .line 229
    :goto_0
    return v1

    .line 226
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 227
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    .line 229
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createShort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/cordova/AudioHandler;->shortPlayer:Lorg/apache/cordova/AudioShortPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/AudioShortPlayer;->loadSound(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 73
    .local v4, "status":Lorg/apache/cordova/api/PluginResult$Status;
    const-string v3, ""

    .line 76
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    const-string v5, "startRecordingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 120
    :goto_1
    return-object v5

    .line 79
    :cond_1
    const-string v5, "stopRecordingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->stopRecordingAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_1

    .line 82
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v5, "createShort"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->createShort(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v5, "playShort"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->playShort(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_4
    const-string v5, "startPlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_5
    const-string v5, "seekToAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 92
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->seekToAudio(Ljava/lang/String;I)V

    goto :goto_0

    .line 94
    :cond_6
    const-string v5, "pausePlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 95
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->pausePlayingAudio(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_7
    const-string v5, "stopPlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 98
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->stopPlayingAudio(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_8
    const-string v5, "setVolume"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_9

    .line 101
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->setVolume(Ljava/lang/String;F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 102
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 105
    :cond_9
    :try_start_3
    const-string v5, "getCurrentPositionAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 106
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->getCurrentPositionAudio(Ljava/lang/String;)F

    move-result v2

    .line 107
    .local v2, "f":F
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 109
    .end local v2    # "f":F
    :cond_a
    const-string v5, "getDurationAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 110
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 111
    .restart local v2    # "f":F
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 113
    .end local v2    # "f":F
    :cond_b
    const-string v5, "release"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/cordova/AudioHandler;->release(Ljava/lang/String;)Z

    move-result v0

    .line 115
    .local v0, "b":Z
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method public getAudioOutputDevice()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 385
    iget-object v3, p0, Lorg/apache/cordova/AudioHandler;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    const-string v4, "audio"

    invoke-interface {v3, v4}, Lorg/apache/cordova/api/CordovaInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 386
    .local v0, "audiMgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 393
    :goto_0
    return v1

    .line 389
    :cond_0
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 390
    goto :goto_0

    .line 393
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPositionAudio(Ljava/lang/String;)F
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 332
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 335
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 349
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 355
    :cond_0
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;)V

    .line 356
    .restart local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 131
    const-string v1, "getCurrentPositionAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    const-string v1, "getDurationAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 168
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 169
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    goto :goto_0

    .line 171
    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 172
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->shortPlayer:Lorg/apache/cordova/AudioShortPlayer;

    invoke-virtual {v2}, Lorg/apache/cordova/AudioShortPlayer;->destroy()V

    .line 173
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 184
    const-string v2, "telephone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    const-string v2, "ringing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "offhook"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 191
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getState()I

    move-result v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v2, v3, :cond_1

    .line 192
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    goto :goto_0

    .line 200
    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "idle"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 202
    .restart local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    :cond_3
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 207
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public onPause(Z)V
    .locals 3
    .param p1, "multitasking"    # Z

    .prologue
    .line 155
    invoke-super {p0, p1}, Lorg/apache/cordova/api/Plugin;->onPause(Z)V

    .line 156
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/cordova/AudioPlayer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/AudioPlayer;

    invoke-virtual {v2}, Lorg/apache/cordova/AudioPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/AudioPlayer;

    invoke-virtual {v2}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    goto :goto_0

    .line 162
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/cordova/AudioPlayer;>;"
    :cond_1
    return-void
.end method

.method public onResume(Z)V
    .locals 4
    .param p1, "multitasking"    # Z

    .prologue
    .line 143
    invoke-super {p0, p1}, Lorg/apache/cordova/api/Plugin;->onResume(Z)V

    .line 144
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/cordova/AudioPlayer;>;"
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/AudioPlayer;

    invoke-virtual {v2}, Lorg/apache/cordova/AudioPlayer;->resumePlaying()V

    .line 150
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/cordova/AudioPlayer;>;"
    :cond_1
    return-void
.end method

.method public pausePlayingAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    .line 300
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 301
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    .line 304
    :cond_1
    return-void
.end method

.method public playShort(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/cordova/AudioHandler;->shortPlayer:Lorg/apache/cordova/AudioShortPlayer;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/AudioShortPlayer;->startPlaying(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public seekToAudio(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "milliseconds"    # I

    .prologue
    .line 284
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 285
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->seekToPlaying(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public setAudioOutputDevice(I)V
    .locals 7
    .param p1, "output"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 367
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    const-string v2, "audio"

    invoke-interface {v1, v2}, Lorg/apache/cordova/api/CordovaInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 368
    .local v0, "audiMgr":Landroid/media/AudioManager;
    if-ne p1, v6, :cond_0

    .line 369
    invoke-virtual {v0, v4, v6, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 377
    :goto_0
    return-void

    .line 371
    :cond_0
    if-ne p1, v5, :cond_1

    .line 372
    invoke-virtual {v0, v4, v5, v3}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_0

    .line 375
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioHandler.setAudioOutputDevice() Error: Unknown output device."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVolume(Ljava/lang/String;F)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # F

    .prologue
    .line 404
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 405
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->setVolume(F)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioHandler.setVolume() Error: Unknown Audio Player "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 269
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;)V

    .line 271
    .restart local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;)V

    .line 244
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startRecording(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPlayingAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/AudioHandler;->mediaPlayingId:Ljava/lang/String;

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 317
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopPlaying()V

    .line 322
    :cond_1
    return-void
.end method

.method public stopRecordingAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 255
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopRecording()V

    .line 257
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    return-void
.end method
