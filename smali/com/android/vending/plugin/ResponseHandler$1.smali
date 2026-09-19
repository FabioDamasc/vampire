.class final Lcom/android/vending/plugin/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/plugin/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$purchaseState:Lcom/android/vending/plugin/Consts$PurchaseState;

.field final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$purchaseState:Lcom/android/vending/plugin/Consts$PurchaseState;

    iput-object p2, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$purchaseTime:J

    iput-object p5, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 118
    const-class v7, Lcom/android/vending/plugin/ResponseHandler;

    monitor-enter v7

    .line 119
    :try_start_0
    invoke-static {}, Lcom/android/vending/plugin/ResponseHandler;->access$000()Lcom/android/vending/plugin/PurchaseObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/android/vending/plugin/ResponseHandler;->access$000()Lcom/android/vending/plugin/PurchaseObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$purchaseState:Lcom/android/vending/plugin/Consts$PurchaseState;

    iget-object v2, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$productId:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/android/vending/plugin/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/vending/plugin/PurchaseObserver;->postPurchaseStateChange(Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 123
    :cond_0
    monitor-exit v7

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
