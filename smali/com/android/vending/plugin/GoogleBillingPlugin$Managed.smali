.class final enum Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;
.super Ljava/lang/Enum;
.source "GoogleBillingPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/plugin/GoogleBillingPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

.field public static final enum MANAGED:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

.field public static final enum SUBSCRIPTION:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

.field public static final enum UNMANAGED:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->MANAGED:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    new-instance v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->UNMANAGED:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    new-instance v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    const-string v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->SUBSCRIPTION:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    sget-object v1, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->MANAGED:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->UNMANAGED:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->SUBSCRIPTION:Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->$VALUES:[Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    return-object v0
.end method

.method public static values()[Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->$VALUES:[Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    invoke-virtual {v0}, [Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/plugin/GoogleBillingPlugin$Managed;

    return-object v0
.end method
