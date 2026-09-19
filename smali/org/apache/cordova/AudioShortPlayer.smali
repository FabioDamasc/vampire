.class public Lorg/apache/cordova/AudioShortPlayer;
.super Ljava/lang/Object;
.source "AudioShortPlayer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioShortPlayer"

.field private static MEDIA_DURATION:I

.field private static MEDIA_ERROR:I

.field private static MEDIA_ERR_ABORTED:I

.field private static MEDIA_ERR_DECODE:I

.field private static MEDIA_ERR_NETWORK:I

.field private static MEDIA_ERR_NONE_ACTIVE:I

.field private static MEDIA_ERR_NONE_SUPPORTED:I

.field public static MEDIA_NONE:I

.field public static MEDIA_PAUSED:I

.field private static MEDIA_POSITION:I

.field public static MEDIA_RUNNING:I

.field public static MEDIA_STARTING:I

.field private static MEDIA_STATE:I

.field public static MEDIA_STOPPED:I


# instance fields
.field private handler:Lorg/apache/cordova/AudioHandler;

.field private mSoundIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 41
    sput v4, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_NONE:I

    .line 42
    sput v1, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_STARTING:I

    .line 43
    sput v2, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_RUNNING:I

    .line 44
    sput v3, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_PAUSED:I

    .line 45
    sput v5, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_STOPPED:I

    .line 48
    sput v1, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_STATE:I

    .line 49
    sput v2, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_DURATION:I

    .line 50
    sput v3, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_POSITION:I

    .line 51
    const/16 v0, 0x9

    sput v0, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERROR:I

    .line 54
    sput v4, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    .line 55
    sput v1, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERR_ABORTED:I

    .line 56
    sput v2, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERR_NETWORK:I

    .line 57
    sput v3, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERR_DECODE:I

    .line 58
    sput v5, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERR_NONE_SUPPORTED:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/AudioHandler;)V
    .locals 4
    .param p1, "handler"    # Lorg/apache/cordova/AudioHandler;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->mSoundIDMap:Ljava/util/HashMap;

    .line 71
    iput-object p1, p0, Lorg/apache/cordova/AudioShortPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    .line 72
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->spool:Landroid/media/SoundPool;

    .line 73
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->spool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->spool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 82
    :cond_0
    return-void
.end method

.method public loadSound(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lorg/apache/cordova/AudioShortPlayer;->spool:Landroid/media/SoundPool;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "sound":I
    if-nez v0, :cond_0

    .line 89
    iget-object v1, p0, Lorg/apache/cordova/AudioShortPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioShortPlayer;->mSoundIDMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lorg/apache/cordova/AudioShortPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_STATE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_STOPPED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 103
    .local v7, "audioManager":Landroid/media/AudioManager;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v2, v0

    .line 104
    .local v2, "volume":F
    iget-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->mSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    .local v1, "sound":I
    if-nez v1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERROR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->spool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 110
    iget-object v0, p0, Lorg/apache/cordova/AudioShortPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_STATE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/cordova/AudioShortPlayer;->MEDIA_STARTING:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method
