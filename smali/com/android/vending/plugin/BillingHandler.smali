.class public Lcom/android/vending/plugin/BillingHandler;
.super Landroid/os/Handler;
.source "BillingHandler.java"


# static fields
.field public static final BILLING_MESSAGE_STATE_CHANGED:I = 0x186a1


# instance fields
.field private mService:Lcom/android/vending/plugin/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/plugin/BillingService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/vending/plugin/BillingService;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/vending/plugin/BillingHandler;->mService:Lcom/android/vending/plugin/BillingService;

    .line 16
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 22
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 24
    :pswitch_0
    iget-object v1, p0, Lcom/android/vending/plugin/BillingHandler;->mService:Lcom/android/vending/plugin/BillingService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/plugin/BillingService;->purchaseStateChanged(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
    .end packed-switch
.end method
