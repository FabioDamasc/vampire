.class Lcom/android/vending/plugin/BillingService$1;
.super Ljava/lang/Object;
.source "BillingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/plugin/BillingService;->handleCommand(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/plugin/BillingService;

.field final synthetic val$mstartId:I

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/plugin/BillingService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/vending/plugin/BillingService$1;->this$0:Lcom/android/vending/plugin/BillingService;

    iput-object p2, p0, Lcom/android/vending/plugin/BillingService$1;->val$signedData:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vending/plugin/BillingService$1;->val$signature:Ljava/lang/String;

    iput p4, p0, Lcom/android/vending/plugin/BillingService$1;->val$mstartId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 472
    iget-object v2, p0, Lcom/android/vending/plugin/BillingService$1;->val$signedData:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/plugin/BillingService$1;->val$signature:Ljava/lang/String;

    invoke-static {}, Lcom/android/vending/plugin/BillingService;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/vending/plugin/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 473
    .local v1, "purchase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/plugin/Security$VerifiedPurchase;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 474
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iget v2, p0, Lcom/android/vending/plugin/BillingService$1;->val$mstartId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 476
    const v2, 0x186a1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 477
    iget-object v2, p0, Lcom/android/vending/plugin/BillingService$1;->this$0:Lcom/android/vending/plugin/BillingService;

    iget-object v2, v2, Lcom/android/vending/plugin/BillingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    return-void
.end method
