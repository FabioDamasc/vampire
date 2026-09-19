.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$PPAThread;,
        Lcom/tapjoy/TapjoyConnectCore$ConnectThread;,
        Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;
    }
.end annotation


# static fields
.field public static final TAPJOY_CONNECT:Ljava/lang/String; = "TapjoyConnect"

.field private static androidID:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static carrierCountryCode:Ljava/lang/String;

.field private static carrierName:Ljava/lang/String;

.field private static clientPackage:Ljava/lang/String;

.field private static connectFlags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

.field private static connectionType:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static currencyMultiplier:F

.field private static deviceCountryCode:Ljava/lang/String;

.field private static deviceID:Ljava/lang/String;

.field private static deviceLanguage:Ljava/lang/String;

.field private static deviceManufacturer:Ljava/lang/String;

.field private static deviceModel:Ljava/lang/String;

.field private static deviceOSVersion:Ljava/lang/String;

.field private static deviceScreenDensity:Ljava/lang/String;

.field private static deviceScreenLayoutSize:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static libraryVersion:Ljava/lang/String;

.field private static macAddress:Ljava/lang/String;

.field private static matchingPackageNames:Ljava/lang/String;

.field private static mobileCountryCode:Ljava/lang/String;

.field private static mobileNetworkCode:Ljava/lang/String;

.field private static paidAppActionID:Ljava/lang/String;

.field private static platformName:Ljava/lang/String;

.field private static plugin:Ljava/lang/String;

.field private static referralURL:Ljava/lang/String;

.field private static sdkType:Ljava/lang/String;

.field private static secretKey:Ljava/lang/String;

.field private static serialID:Ljava/lang/String;

.field private static sha1MacAddress:Ljava/lang/String;

.field private static sha2DeviceID:Ljava/lang/String;

.field private static storeName:Ljava/lang/String;

.field private static tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

.field private static userID:Ljava/lang/String;

.field private static videoEnabled:Z

.field private static videoIDs:Ljava/lang/String;


# instance fields
.field private elapsed_time:J

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 36
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 37
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 38
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    .line 72
    const-string v0, "native"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 83
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 87
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 150
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 151
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 153
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->init()V

    .line 155
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 160
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "user_id"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting userID to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user_id"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyConnectCore;)J
    .locals 2
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-wide v0
.end method

.method static synthetic access$014(Lcom/tapjoy/TapjoyConnectCore;J)J
    .locals 2
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-wide v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Lcom/tapjoy/TapjoyConnectNotifier;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->handlePayPerActionResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardPointsVerifier(JILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "amount"    # I
    .param p3, "guid"    # Ljava/lang/String;

    .prologue
    .line 1052
    const-string v1, ""

    .line 1058
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1065
    :goto_0
    return-object v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAwardPointsVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 962
    const-string v2, ""

    .line 968
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 971
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 973
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 980
    const-string v2, "mobile"

    .line 984
    :goto_0
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connection_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_1
    return-object v2

    .line 977
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :sswitch_0
    const-string v2, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    goto :goto_0

    .line 988
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 990
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectionType error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 973
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1013
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static getEventVerifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "eventData"    # Ljava/lang/String;

    .prologue
    .line 1078
    const-string v1, ""

    .line 1084
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1091
    :goto_0
    return-object v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEventVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1477
    const-string v0, ""

    .line 1479
    .local v0, "flag":Ljava/lang/String;
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 1481
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "flag":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1485
    .restart local v0    # "flag":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1486
    const-string v0, ""

    .line 1488
    :cond_1
    return-object v0
.end method

.method public static getGenericURLParams()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    const-string v0, ""

    .line 212
    .local v0, "urlParams":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getLocalTapPointsTotal()I
    .locals 5

    .prologue
    .line 1274
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1276
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "last_tap_points"

    const/16 v3, -0x270f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1277
    .local v1, "total":I
    return v1
.end method

.method public static getPackageNamesVerifier(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "packageNames"    # Ljava/lang/String;

    .prologue
    .line 1104
    const-string v1, ""

    .line 1110
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1117
    :goto_0
    return-object v1

    .line 1112
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getParamsWithoutAppID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    const-string v0, ""

    .line 234
    .local v0, "urlParams":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "sha_2_udid"

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "sha_2_udid"

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sha2_udid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sha1_mac_address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serial_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device_manufacturer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "os_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "country_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "language_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "library_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "platform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_multiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "carrier_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_2
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "carrier_country_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_3
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mobile_country_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_4
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mobile_network_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_5
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screen_density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screen_layout_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_6
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 311
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connection_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_7
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_8
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sdk_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_9
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "store_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_a
    return-object v0

    .line 243
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "udid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getURLParams()Ljava/lang/String;
    .locals 8

    .prologue
    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "urlParams":Ljava/lang/String;
    const-string v3, ""

    .line 190
    .local v3, "verifier":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 191
    .local v0, "time":J
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->getVerifier(J)Ljava/lang/String;

    move-result-object v3

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "verifier="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    return-object v2
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public static getVerifier(J)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J

    .prologue
    .line 1026
    const-string v1, ""

    .line 1032
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1039
    :goto_0
    return-object v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoParams()Ljava/lang/String;
    .locals 4

    .prologue
    .line 924
    const-string v0, ""

    .line 927
    .local v0, "params":Ljava/lang/String;
    sget-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    if-eqz v1, :cond_1

    .line 931
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_offer_ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    :cond_0
    :goto_0
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    return-object v0

    .line 937
    :cond_1
    const-string v0, "hide_videos=true"

    goto :goto_0
.end method

.method private static handleConnectResponse(Ljava/lang/String;)Z
    .locals 13
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 749
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 751
    .local v5, "document":Lorg/w3c/dom/Document;
    if-eqz v5, :cond_4

    .line 753
    const-string v9, "PackageNames"

    invoke-interface {v5, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, "nodeValue":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 758
    move-object v4, v8

    .line 759
    .local v4, "data":Ljava/lang/String;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 761
    .local v0, "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 762
    .local v3, "current":I
    const/4 v7, -0x1

    .line 766
    .local v7, "index":I
    :goto_0
    const/16 v9, 0x2c

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 769
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 772
    const-string v9, "TapjoyConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 786
    const-string v9, ""

    sput-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 788
    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 789
    .local v2, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 792
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eq v9, v12, :cond_0

    .line 799
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 801
    const-string v9, "TapjoyConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MATCH: installed packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 805
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 807
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    goto :goto_1

    .line 780
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v9, "TapjoyConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v3, v7, 0x1

    goto/16 :goto_0

    .line 813
    .end local v0    # "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "current":I
    .end local v4    # "data":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_3
    const-string v9, "Success"

    invoke-interface {v5, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    .line 816
    if-eqz v8, :cond_4

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 827
    .end local v8    # "nodeValue":Ljava/lang/String;
    :cond_4
    return v12
.end method

.method private handlePayPerActionResponse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 839
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 841
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 843
    const-string v2, "Success"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "nodeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    const-string v2, "TapjoyConnect"

    const-string v3, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const/4 v2, 0x1

    .line 857
    .end local v1    # "nodeValue":Ljava/lang/String;
    :goto_0
    return v2

    .line 853
    .restart local v1    # "nodeValue":Ljava/lang/String;
    :cond_0
    const-string v2, "TapjoyConnect"

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .end local v1    # "nodeValue":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 36

    .prologue
    .line 348
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 353
    .local v21, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-nez v32, :cond_0

    .line 354
    new-instance v32, Ljava/util/Hashtable;

    invoke-direct/range {v32 .. v32}, Ljava/util/Hashtable;-><init>()V

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 356
    :cond_0
    if-eqz v21, :cond_3

    .line 358
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x80

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 361
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_11

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    if-eqz v32, :cond_11

    .line 363
    sget-object v4, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    aget-object v19, v4, v15

    .line 365
    .local v19, "key":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "tapjoy."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 367
    .local v22, "obj":Ljava/lang/Object;
    if-eqz v22, :cond_1

    .line 369
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    .line 371
    .local v29, "value":Ljava/lang/String;
    if-eqz v29, :cond_1

    .line 373
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Found manifest flag: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v29    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 379
    .end local v19    # "key":Ljava/lang/String;
    .end local v22    # "obj":Ljava/lang/Object;
    :cond_2
    const-string v32, "TapjoyConnect"

    const-string v33, "Metadata successfully loaded"

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v20    # "len$":I
    :cond_3
    :goto_1
    const-string v32, "enable_logging"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_4

    const-string v32, "enable_logging"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "true"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 394
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 399
    :cond_4
    :try_start_1
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "android_id"

    invoke-static/range {v32 .. v33}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 402
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 403
    .local v23, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v32, v0

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    .line 406
    const-string v32, "android"

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 407
    const-string v32, "android"

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 410
    sget-object v32, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 411
    sget-object v32, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 414
    sget-object v32, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 418
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 421
    const-string v32, "9.0.0"

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 423
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v33, "tjcPrefrences"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    .line 427
    .local v25, "settings":Landroid/content/SharedPreferences;
    :try_start_2
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v33, "phone"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 429
    .local v27, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v27, :cond_6

    .line 432
    const-string v32, "debug_device_id"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_12

    const-string v32, "debug_device_id"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_12

    .line 433
    const-string v32, "debug_device_id"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 437
    :goto_2
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 438
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 443
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_6

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 445
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 446
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 450
    :cond_6
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "deviceID: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/16 v16, 0x0

    .line 457
    .local v16, "invalidDeviceID":Z
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v32, :cond_13

    .line 459
    const-string v32, "TapjoyConnect"

    const-string v33, "Device id is null."

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/16 v16, 0x1

    .line 480
    :goto_3
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "ANDROID SDK VERSION: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v32, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/16 v33, 0x9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_8

    .line 487
    const-string v32, "TapjoyConnect"

    const-string v33, "TRYING TO GET SERIAL OF 2.3+ DEVICE..."

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v13, Lcom/tapjoy/TapjoyHardwareUtil;

    invoke-direct {v13}, Lcom/tapjoy/TapjoyHardwareUtil;-><init>()V

    .line 492
    .local v13, "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    invoke-virtual {v13}, Lcom/tapjoy/TapjoyHardwareUtil;->getSerial()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    .line 495
    if-eqz v16, :cond_7

    .line 497
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 500
    :cond_7
    const-string v32, "TapjoyConnect"

    const-string v33, "===================="

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SERIAL: deviceID: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v32, "TapjoyConnect"

    const-string v33, "===================="

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v32, :cond_16

    .line 509
    const-string v32, "TapjoyConnect"

    const-string v33, "SERIAL: Device id is null."

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/16 v16, 0x1

    .line 534
    .end local v13    # "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    :cond_8
    :goto_4
    if-eqz v16, :cond_9

    .line 536
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 537
    .local v5, "buff":Ljava/lang/StringBuffer;
    const-string v32, "EMULATOR"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    const-string v32, "emulatorDeviceId"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, "deviceId":Ljava/lang/String;
    if-eqz v8, :cond_19

    const-string v32, ""

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_19

    .line 543
    sput-object v8, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 573
    .end local v5    # "buff":Ljava/lang/StringBuffer;
    .end local v8    # "deviceId":Ljava/lang/String;
    .end local v16    # "invalidDeviceID":Z
    .end local v27    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    :goto_5
    :try_start_3
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-nez v32, :cond_a

    .line 574
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 577
    :cond_a
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 585
    :try_start_4
    sget-object v32, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_b

    .line 587
    new-instance v9, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v9, v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 589
    .local v9, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v9}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensity()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    .line 590
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v9}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 601
    .end local v9    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    :cond_b
    :goto_6
    :try_start_5
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v33, "wifi"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/wifi/WifiManager;

    .line 603
    .local v31, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v31, :cond_c

    .line 605
    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v30

    .line 607
    .local v30, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v30, :cond_c

    .line 609
    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 611
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v32, :cond_c

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_c

    .line 613
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 614
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 625
    .end local v30    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v31    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_c
    :goto_7
    :try_start_6
    const-string v32, "store_name"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_d

    const-string v32, "store_name"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_d

    .line 627
    const-string v32, "store_name"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 630
    new-instance v26, Ljava/util/ArrayList;

    sget-object v32, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 633
    .local v26, "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_d

    .line 635
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Warning -- undefined STORE_NAME: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v26    # "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    const-string v32, "InstallReferral"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 641
    .local v28, "tempReferralURL":Ljava/lang/String;
    if-eqz v28, :cond_e

    const-string v32, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 642
    sput-object v28, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    .line 645
    :cond_e
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    .line 647
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "APP_ID = ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "ANDROID_ID: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "CLIENT_PACKAGE = ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v33, "TapjoyConnect"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "deviceID: ["

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, "]"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v32, "debug_device_id"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1b

    const-string v32, "debug_device_id"

    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_1b

    const-string v32, " *debug_device_id*"

    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sha2DeviceID: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "serial_id: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mac_address: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sha1_mac_address: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "deviceName: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "deviceManufacturer: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "deviceType: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "libraryVersion: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "deviceOSVersion: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "COUNTRY_CODE: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "LANGUAGE_CODE: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "density: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "screen_layout: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "carrier_name: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "carrier_country_code: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mobile_country_code: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mobile_network_code: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "store_name: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "referralURL: ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v32, :cond_10

    .line 679
    const-string v32, "TapjoyConnect"

    const-string v33, "Connect Flags:"

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v32, "TapjoyConnect"

    const-string v33, "--------------------"

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual/range {v32 .. v32}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 683
    .local v12, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 685
    .local v18, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_f
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 687
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 688
    .local v17, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v33, "TapjoyConnect"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "key: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ", value: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string v33, "sha_2_udid"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    const-string v33, "connect"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    .line 693
    const-string v32, "TapjoyConnect"

    const-string v33, "WARNING -- only the Connect/Advertiser SDK can support sha_2_udid"

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    const-string v33, "sha_2_udid"

    invoke-virtual/range {v32 .. v33}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    .line 699
    .end local v12    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v17    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v23    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v25    # "settings":Landroid/content/SharedPreferences;
    .end local v28    # "tempReferralURL":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 701
    .local v10, "e":Ljava/lang/Exception;
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error initializing Tapjoy parameters.  e="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_10
    return-void

    .line 383
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_11
    :try_start_7
    const-string v32, "TapjoyConnect"

    const-string v33, "No metadata present."

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 387
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v10

    .line 389
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error reading manifest meta-data: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 435
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v23    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v25    # "settings":Landroid/content/SharedPreferences;
    .restart local v27    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_12
    :try_start_8
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 566
    .end local v27    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_2
    move-exception v10

    .line 568
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error getting deviceID. e: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/16 v32, 0x0

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5

    .line 466
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v16    # "invalidDeviceID":Z
    .restart local v27    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_13
    :try_start_a
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_14

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v33, "000000000000000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 468
    :cond_14
    const-string v32, "TapjoyConnect"

    const-string v33, "Device id is empty or an emulator."

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 477
    :cond_15
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    goto/16 :goto_3

    .line 516
    .restart local v13    # "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    :cond_16
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_17

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v33, "000000000000000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_17

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_17

    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v33, "unknown"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 518
    :cond_17
    const-string v32, "TapjoyConnect"

    const-string v33, "SERIAL: Device id is empty or an emulator."

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 527
    :cond_18
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 528
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 548
    .end local v13    # "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    .restart local v5    # "buff":Ljava/lang/StringBuffer;
    .restart local v8    # "deviceId":Ljava/lang/String;
    :cond_19
    const-string v7, "1234567890abcdefghijklmnopqrstuvw"

    .line 550
    .local v7, "constantChars":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    const/16 v32, 0x20

    move/from16 v0, v32

    if-ge v14, v0, :cond_1a

    .line 552
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v32

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v24, v0

    .line 553
    .local v24, "randomChar":I
    rem-int/lit8 v6, v24, 0x1e

    .line 554
    .local v6, "ch":I
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 550
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 557
    .end local v6    # "ch":I
    .end local v24    # "randomChar":I
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 560
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 561
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v32, "emulatorDeviceId"

    sget-object v33, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_5

    .line 593
    .end local v5    # "buff":Ljava/lang/StringBuffer;
    .end local v7    # "constantChars":Ljava/lang/String;
    .end local v8    # "deviceId":Ljava/lang/String;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "i":I
    .end local v16    # "invalidDeviceID":Z
    .end local v27    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_3
    move-exception v10

    .line 595
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error getting screen density/dimensions/layout: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 619
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    .line 621
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error getting device mac address: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 651
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v28    # "tempReferralURL":Ljava/lang/String;
    :cond_1b
    const-string v32, ""
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_8
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 110
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 123
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .param p4, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 137
    sput-object p2, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 138
    sput-object p3, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 139
    sput-object p4, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    .line 140
    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 141
    return-void
.end method

.method public static saveTapPointsTotal(I)V
    .locals 5
    .param p0, "total"    # I

    .prologue
    .line 1258
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1261
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1262
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_tap_points"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1264
    return-void
.end method

.method public static setDebugDeviceID(Ljava/lang/String;)V
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1241
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 1243
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1246
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1247
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "emulatorDeviceId"

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1249
    return-void
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1127
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 1128
    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1137
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 1138
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1149
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 1151
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1182
    return-void
.end method

.method public static setVideoEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 1201
    sput-boolean p0, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    .line 1202
    return-void
.end method

.method public static setVideoIDs(Ljava/lang/String;)V
    .locals 0
    .param p0, "ids"    # Ljava/lang/String;

    .prologue
    .line 1191
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    .line 1192
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 1292
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actionComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, "actionURLParams":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    const-string v3, "sha_2_udid"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "sha_2_udid"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1302
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&publisher_user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 1310
    .local v1, "time":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "verifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->getVerifier(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PPA URL parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/tapjoy/TapjoyConnectCore$PPAThread;

    invoke-direct {v4, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$PPAThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1316
    return-void
.end method

.method public callConnect()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 7
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2710

    .line 1330
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enablePaidAppWithActionID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 1334
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1337
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "tapjoy_elapsed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v6, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 1339
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paidApp elapsed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 1345
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1347
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 1357
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;-><init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TapjoyConnectCore$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 1466
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 866
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 867
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 869
    const-string v0, "TapjoyConnect"

    const-string v1, "Releasing core static instance."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 3
    .param p1, "multiplier"    # F

    .prologue
    .line 1455
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualCurrencyMultiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    sput p1, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 1457
    return-void
.end method
