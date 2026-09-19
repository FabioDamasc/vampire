.class public Lcom/flurry/android/FlurryPlugin;
.super Ljava/lang/Object;
.source "FlurryPlugin.java"

# interfaces
.implements Lcom/droid/util/LogTrackImpl;


# static fields
.field public static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "FlurryPlugin"


# instance fields
.field flurryID:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    sput-boolean v0, Lcom/flurry/android/FlurryPlugin;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/FlurryPlugin;->flurryID:Ljava/lang/String;

    return-object v0
.end method

.method public initLogTrack(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/FlurryPlugin;->flurryID:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 46
    sget-boolean v0, Lcom/flurry/android/FlurryPlugin;->DEBUG:Z

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/flurry/android/FlurryPlugin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/FlurryPlugin;->flurryID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/FlurryPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public startLogTrack(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/android/FlurryPlugin;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public trackAction(Lcom/droid/util/LogTrack$EnumEvent;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventid"    # Lcom/droid/util/LogTrack$EnumEvent;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/droid/util/LogTrack$EnumEvent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
