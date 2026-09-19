.class public interface abstract Lcom/droid/util/LogTrackImpl;
.super Ljava/lang/Object;
.source "LogTrackImpl.java"


# virtual methods
.method public abstract initLogTrack(Ljava/lang/String;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract startLogTrack(Landroid/content/Context;)V
.end method

.method public abstract trackAction(Lcom/droid/util/LogTrack$EnumEvent;Ljava/util/Map;Ljava/lang/String;)V
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
.end method
