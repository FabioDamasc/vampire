.class public Lcom/android/vending/plugin/Security$VerifiedPurchase;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/plugin/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/android/vending/plugin/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Lcom/android/vending/plugin/Consts$PurchaseState;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->purchaseState:Lcom/android/vending/plugin/Consts$PurchaseState;

    .line 82
    iput-object p2, p0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 85
    iput-wide p5, p0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->purchaseTime:J

    .line 86
    iput-object p7, p0, Lcom/android/vending/plugin/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 87
    return-void
.end method
