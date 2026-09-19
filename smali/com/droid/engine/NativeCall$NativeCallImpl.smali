.class public interface abstract Lcom/droid/engine/NativeCall$NativeCallImpl;
.super Ljava/lang/Object;
.source "NativeCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droid/engine/NativeCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeCallImpl"
.end annotation


# virtual methods
.method public abstract exitGame()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getPaycenter()Lcom/impaycenter/Paycenter;
.end method

.method public abstract getThirdPlatform()Lcom/thirdplatform/ThirdPlatform;
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public abstract hideLoading()V
.end method
