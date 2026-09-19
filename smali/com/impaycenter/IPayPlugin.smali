.class public interface abstract Lcom/impaycenter/IPayPlugin;
.super Ljava/lang/Object;
.source "IPayPlugin.java"


# virtual methods
.method public abstract finishPlatform()V
.end method

.method public abstract getChannelId()Ljava/lang/String;
.end method

.method public abstract getNativeSupportBitPos()I
.end method

.method public abstract initPayPlugin(Ljava/lang/String;)V
.end method

.method public abstract launch(Ljava/lang/String;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPayCenterPause()V
.end method

.method public abstract onPayCenterResume()V
.end method

.method public abstract onResume()V
.end method

.method public abstract startPlatform(Landroid/content/Context;Lcom/impaycenter/IPayPluginCallback;I)V
.end method
