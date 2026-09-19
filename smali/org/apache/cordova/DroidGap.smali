.class public Lorg/apache/cordova/DroidGap;
.super Landroid/app/Activity;
.source "DroidGap.java"

# interfaces
.implements Lorg/apache/cordova/api/CordovaInterface;


# static fields
.field private static ACTIVITY_EXITING:I

.field private static ACTIVITY_RUNNING:I

.field private static ACTIVITY_STARTING:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field protected activityResultCallback:Lorg/apache/cordova/api/IPlugin;

.field protected activityResultKeepRunning:Z

.field private activityState:I

.field protected appView:Landroid/webkit/WebView;

.field private authenticationTokens:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/AuthenticationToken;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundColor:I

.field baseUrl:Ljava/lang/String;

.field public bound:Z

.field public callbackServer:Lorg/apache/cordova/CallbackServer;

.field protected cancelLoadUrl:Z

.field private initUrl:Ljava/lang/String;

.field protected keepRunning:Z

.field loadUrlTimeout:I

.field protected loadUrlTimeoutValue:I

.field protected pluginManager:Lorg/apache/cordova/api/PluginManager;

.field protected preferences:Lorg/apache/cordova/PreferenceSet;

.field protected root:Landroid/widget/LinearLayout;

.field protected spinnerDialog:Landroid/app/ProgressDialog;

.field protected splashscreen:I

.field private url:Ljava/lang/String;

.field private urls:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected webViewClient:Landroid/webkit/WebViewClient;

.field private whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private whiteListCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const-string v0, "DroidGap"

    sput-object v0, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/DroidGap;->ACTIVITY_STARTING:I

    .line 175
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/DroidGap;->ACTIVITY_RUNNING:I

    .line 176
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/DroidGap;->ACTIVITY_EXITING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/DroidGap;->whiteList:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/DroidGap;->whiteListCache:Ljava/util/HashMap;

    .line 160
    iput-boolean v1, p0, Lorg/apache/cordova/DroidGap;->bound:Z

    .line 163
    iput-boolean v1, p0, Lorg/apache/cordova/DroidGap;->cancelLoadUrl:Z

    .line 164
    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 168
    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->url:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    .line 172
    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->initUrl:Ljava/lang/String;

    .line 177
    iput v1, p0, Lorg/apache/cordova/DroidGap;->activityState:I

    .line 182
    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->baseUrl:Ljava/lang/String;

    .line 185
    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->activityResultCallback:Lorg/apache/cordova/api/IPlugin;

    .line 189
    iput v1, p0, Lorg/apache/cordova/DroidGap;->loadUrlTimeout:I

    .line 193
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/apache/cordova/DroidGap;->backgroundColor:I

    .line 196
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    .line 204
    iput v1, p0, Lorg/apache/cordova/DroidGap;->splashscreen:I

    .line 207
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/apache/cordova/DroidGap;->loadUrlTimeoutValue:I

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/DroidGap;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/DroidGap;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;->handleActivityParameters()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/DroidGap;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/DroidGap;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/DroidGap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/DroidGap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/cordova/DroidGap;->loadUrlIntoView(Ljava/lang/String;)V

    return-void
.end method

.method private addWhiteListEntry(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "subdomains"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1325
    :try_start_0
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    sget-object v1, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v2, "Unlimited access to network resources"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->whiteList:Ljava/util/ArrayList;

    const-string v2, ".*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    :goto_0
    return-void

    .line 1331
    :cond_0
    if-eqz p2, :cond_2

    .line 1333
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1334
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->whiteList:Ljava/util/ArrayList;

    const-string v2, "https?://"

    const-string v3, "^https?://(.*\\.)?"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    :goto_1
    sget-object v1, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v2, "Origin to allow with subdomains: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v2, "Failed to add origin %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v1, v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1336
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->whiteList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^https?://(.*\\.)?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1341
    :cond_2
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->whiteList:Ljava/util/ArrayList;

    const-string v2, "https?://"

    const-string v3, "^https?://"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    :goto_2
    sget-object v1, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v2, "Origin to allow: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1344
    :cond_3
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->whiteList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^https?://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleActivityParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 437
    const-string v1, "backgroundColor"

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v1, v2}, Lorg/apache/cordova/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/apache/cordova/DroidGap;->backgroundColor:I

    .line 438
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/apache/cordova/DroidGap;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 441
    const-string v1, "splashscreen"

    invoke-virtual {p0, v1, v3}, Lorg/apache/cordova/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/apache/cordova/DroidGap;->splashscreen:I

    .line 442
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/cordova/DroidGap;->splashscreen:I

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/apache/cordova/DroidGap;->splashscreen:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 447
    :cond_0
    const-string v1, "loadUrlTimeoutValue"

    invoke-virtual {p0, v1, v3}, Lorg/apache/cordova/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    .line 448
    .local v0, "timeout":I
    if-lez v0, :cond_1

    .line 449
    iput v0, p0, Lorg/apache/cordova/DroidGap;->loadUrlTimeoutValue:I

    .line 453
    :cond_1
    const-string v1, "keepRunning"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/cordova/DroidGap;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    .line 454
    return-void
.end method

.method private loadUrlIntoView(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 479
    const-string v2, "javascript:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    sget-object v2, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v3, "DroidGap.loadUrl(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/DroidGap;->url:Ljava/lang/String;

    .line 484
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->baseUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 485
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 486
    .local v0, "i":I
    if-lez v0, :cond_3

    .line 487
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->baseUrl:Ljava/lang/String;

    .line 493
    .end local v0    # "i":I
    :cond_1
    :goto_0
    const-string v2, "javascript:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 494
    sget-object v2, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v3, "DroidGap: url=%s baseUrl=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v5, p0, Lorg/apache/cordova/DroidGap;->baseUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    :cond_2
    move-object v1, p0

    .line 499
    .local v1, "me":Lorg/apache/cordova/DroidGap;
    new-instance v2, Lorg/apache/cordova/DroidGap$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/apache/cordova/DroidGap$1;-><init>(Lorg/apache/cordova/DroidGap;Lorg/apache/cordova/DroidGap;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/cordova/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 576
    return-void

    .line 490
    .end local v1    # "me":Lorg/apache/cordova/DroidGap;
    .restart local v0    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/cordova/DroidGap;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private loadUrlIntoView(Ljava/lang/String;I)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    const/4 v6, 0x0

    .line 607
    iput-boolean v6, p0, Lorg/apache/cordova/DroidGap;->cancelLoadUrl:Z

    .line 610
    iget-object v3, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 611
    invoke-direct {p0, p1}, Lorg/apache/cordova/DroidGap;->loadUrlIntoView(Ljava/lang/String;)V

    .line 614
    :cond_0
    const-string v3, "javascript:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 615
    sget-object v3, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v4, "DroidGap.loadUrl(%s, %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_1
    move-object v0, p0

    .line 620
    .local v0, "me":Lorg/apache/cordova/DroidGap;
    new-instance v3, Lorg/apache/cordova/DroidGap$2;

    invoke-direct {v3, p0, v0}, Lorg/apache/cordova/DroidGap$2;-><init>(Lorg/apache/cordova/DroidGap;Lorg/apache/cordova/DroidGap;)V

    invoke-virtual {p0, v3}, Lorg/apache/cordova/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 629
    new-instance v1, Lorg/apache/cordova/DroidGap$3;

    invoke-direct {v1, p0, p2, v0, p1}, Lorg/apache/cordova/DroidGap$3;-><init>(Lorg/apache/cordova/DroidGap;ILorg/apache/cordova/DroidGap;Ljava/lang/String;)V

    .line 647
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 648
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 649
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_0
    return-void
.end method

.method public backHistory()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 690
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 703
    :goto_0
    return v1

    .line 696
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 697
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 698
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 699
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindBackButton(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1438
    iput-boolean p1, p0, Lorg/apache/cordova/DroidGap;->bound:Z

    .line 1439
    return-void
.end method

.method public cancelLoadUrl()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/DroidGap;->cancelLoadUrl:Z

    .line 656
    return-void
.end method

.method public clearAuthenticationTokens()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 296
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->init()V

    .line 665
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 666
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 673
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 676
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_0
    return-void
.end method

.method public displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "button"    # Ljava/lang/String;
    .param p4, "exit"    # Z

    .prologue
    .line 1238
    move-object v2, p0

    .line 1239
    .local v2, "me":Lorg/apache/cordova/DroidGap;
    new-instance v0, Lorg/apache/cordova/DroidGap$7;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/DroidGap$7;-><init>(Lorg/apache/cordova/DroidGap;Lorg/apache/cordova/DroidGap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1258
    return-void
.end method

.method public endActivity()V
    .locals 1

    .prologue
    .line 1076
    sget v0, Lorg/apache/cordova/DroidGap;->ACTIVITY_EXITING:I

    iput v0, p0, Lorg/apache/cordova/DroidGap;->activityState:I

    .line 1077
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->finish()V

    .line 1078
    return-void
.end method

.method public getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "token":Lorg/apache/cordova/AuthenticationToken;
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 273
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    if-nez v0, :cond_1

    .line 275
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 278
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    if-nez v0, :cond_0

    .line 279
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 283
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    :cond_0
    if-nez v0, :cond_1

    .line 284
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 288
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    :cond_1
    return-object v0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 725
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 726
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 733
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 729
    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 730
    .local v1, "p":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 1433
    return-object p0
.end method

.method public getDoubleProperty(Ljava/lang/String;D)D
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 782
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 783
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 790
    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .line 786
    .restart local p2    # "defaultValue":D
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 787
    .local v1, "p":Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public getIntegerProperty(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 744
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 745
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 752
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 748
    .restart local p2    # "defaultValue":I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 749
    .local v1, "p":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 763
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 764
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 771
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 767
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object p2, v1

    .line 771
    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 358
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/apache/cordova/CordovaWebViewClient;

    invoke-direct {v1, p0}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/DroidGap;)V

    new-instance v2, Lorg/apache/cordova/CordovaChromeClient;

    invoke-direct {v2, p0}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/cordova/DroidGap;->init(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 359
    return-void
.end method

.method public init(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "webViewClient"    # Landroid/webkit/WebViewClient;
    .param p3, "webChromeClient"    # Landroid/webkit/WebChromeClient;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 369
    sget-object v2, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v3, "DroidGap.init()"

    invoke-static {v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput-object p1, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    .line 373
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 375
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v2, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 381
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2, p2}, Lorg/apache/cordova/DroidGap;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 384
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 385
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 388
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 389
    .local v1, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 390
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 391
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 394
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 397
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 398
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "database"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "databasePath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 405
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 408
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 409
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iput-boolean v6, p0, Lorg/apache/cordova/DroidGap;->cancelLoadUrl:Z

    .line 416
    new-instance v2, Lorg/apache/cordova/api/PluginManager;

    iget-object v3, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-direct {v2, v3, p0}, Lorg/apache/cordova/api/PluginManager;-><init>(Landroid/webkit/WebView;Lorg/apache/cordova/api/CordovaInterface;)V

    iput-object v2, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    .line 417
    return-void
.end method

.method public isBackButtonBound()Z
    .locals 1

    .prologue
    .line 1443
    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->bound:Z

    return v0
.end method

.method public isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1363
    iget-object v4, p0, Lorg/apache/cordova/DroidGap;->whiteListCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1379
    :goto_0
    return v3

    .line 1368
    :cond_0
    iget-object v4, p0, Lorg/apache/cordova/DroidGap;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1369
    .local v2, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/regex/Pattern;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1370
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 1371
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1374
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1375
    iget-object v4, p0, Lorg/apache/cordova/DroidGap;->whiteListCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1379
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected loadConfiguration()V
    .locals 17

    .prologue
    .line 1269
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/DroidGap;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "cordova"

    const-string v15, "xml"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/DroidGap;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1270
    .local v3, "id":I
    if-nez v3, :cond_1

    .line 1271
    const-string v13, "CordovaLog"

    const-string v14, "cordova.xml missing. Ignoring..."

    invoke-static {v13, v14}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :cond_0
    return-void

    .line 1274
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/DroidGap;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1275
    .local v12, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 1276
    .local v2, "eventType":I
    :goto_0
    const/4 v13, 0x1

    if-eq v2, v13, :cond_0

    .line 1277
    const/4 v13, 0x2

    if-ne v2, v13, :cond_2

    .line 1278
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1279
    .local v9, "strNode":Ljava/lang/String;
    const-string v13, "access"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1280
    const/4 v13, 0x0

    const-string v14, "origin"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1281
    .local v6, "origin":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "subdomains"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1282
    .local v10, "subdomains":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1283
    if-eqz v10, :cond_3

    const-string v13, "true"

    invoke-virtual {v10, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lorg/apache/cordova/DroidGap;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 1307
    .end local v6    # "origin":Ljava/lang/String;
    .end local v9    # "strNode":Ljava/lang/String;
    .end local v10    # "subdomains":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1283
    .restart local v6    # "origin":Ljava/lang/String;
    .restart local v9    # "strNode":Ljava/lang/String;
    .restart local v10    # "subdomains":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 1286
    .end local v6    # "origin":Ljava/lang/String;
    .end local v10    # "subdomains":Ljava/lang/String;
    :cond_4
    const-string v13, "log"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1287
    const/4 v13, 0x0

    const-string v14, "level"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1288
    .local v4, "level":Ljava/lang/String;
    const-string v13, "CordovaLog"

    const-string v14, "Found log level %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v13, v14, v15}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1289
    if-eqz v4, :cond_2

    .line 1290
    invoke-static {v4}, Lorg/apache/cordova/api/LOG;->setLogLevel(Ljava/lang/String;)V

    goto :goto_2

    .line 1293
    .end local v4    # "level":Ljava/lang/String;
    :cond_5
    const-string v13, "preference"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1294
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1295
    .local v5, "name":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "value"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1296
    .local v11, "value":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "readonly"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1298
    .local v8, "readonlyString":Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string v13, "true"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v7, 0x1

    .line 1301
    .local v7, "readonly":Z
    :goto_3
    const-string v13, "CordovaLog"

    const-string v14, "Found preference for %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v13, v14, v15}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/cordova/DroidGap;->preferences:Lorg/apache/cordova/PreferenceSet;

    new-instance v14, Lorg/apache/cordova/PreferenceNode;

    invoke-direct {v14, v5, v11, v7}, Lorg/apache/cordova/PreferenceNode;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Lorg/apache/cordova/PreferenceSet;->add(Lorg/apache/cordova/PreferenceNode;)V

    goto :goto_2

    .line 1298
    .end local v7    # "readonly":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 1308
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "readonlyString":Ljava/lang/String;
    .end local v9    # "strNode":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 1310
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 1311
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->initUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 465
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/DroidGap;->loadUrlIntoView(Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->initUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrlIntoView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->initUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 589
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/DroidGap;->loadUrlIntoView(Ljava/lang/String;I)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->initUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrlIntoView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1181
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1182
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->activityResultCallback:Lorg/apache/cordova/api/IPlugin;

    .line 1183
    .local v0, "callback":Lorg/apache/cordova/api/IPlugin;
    if-eqz v0, :cond_0

    .line 1184
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/cordova/api/IPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 1186
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 714
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 715
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 306
    new-instance v5, Lorg/apache/cordova/PreferenceSet;

    invoke-direct {v5}, Lorg/apache/cordova/PreferenceSet;-><init>()V

    iput-object v5, p0, Lorg/apache/cordova/DroidGap;->preferences:Lorg/apache/cordova/PreferenceSet;

    .line 311
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->loadConfiguration()V

    .line 313
    sget-object v5, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v6, "DroidGap.onCreate()"

    invoke-static {v5, v6}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 316
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 318
    iget-object v5, p0, Lorg/apache/cordova/DroidGap;->preferences:Lorg/apache/cordova/PreferenceSet;

    const-string v6, "fullscreen"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Lorg/apache/cordova/PreferenceSet;->prefMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 328
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 329
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 331
    .local v2, "height":I
    new-instance v5, Lorg/apache/cordova/LinearLayoutSoftKeyboardDetect;

    invoke-direct {v5, p0, v4, v2}, Lorg/apache/cordova/LinearLayoutSoftKeyboardDetect;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    .line 332
    iget-object v5, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 333
    iget-object v5, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    iget v6, p0, Lorg/apache/cordova/DroidGap;->backgroundColor:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 334
    iget-object v5, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 340
    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "url":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 342
    iput-object v3, p0, Lorg/apache/cordova/DroidGap;->initUrl:Ljava/lang/String;

    .line 346
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lorg/apache/cordova/DroidGap;->setVolumeControlStream(I)V

    .line 347
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1414
    const-string v0, "onCreateOptionsMenu"

    invoke-virtual {p0, v0, p1}, Lorg/apache/cordova/DroidGap;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1415
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 921
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 923
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{cordova.require(\'cordova/channel\').onDestroy.fire();}catch(e){console.log(\'exception firing destroy event from native\');};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/api/PluginManager;->onDestroy()V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->endActivity()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1088
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 1089
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1129
    :cond_0
    :goto_0
    return v0

    .line 1093
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1096
    iget-boolean v1, p0, Lorg/apache/cordova/DroidGap;->bound:Z

    if-eqz v1, :cond_2

    .line 1097
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v2, "javascript:cordova.fireDocumentEvent(\'backbutton\');"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :cond_2
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->backHistory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    sget v0, Lorg/apache/cordova/DroidGap;->ACTIVITY_EXITING:I

    iput v0, p0, Lorg/apache/cordova/DroidGap;->activityState:I

    .line 1112
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1118
    :cond_3
    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    .line 1119
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:cordova.fireDocumentEvent(\'menubutton\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1120
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1124
    :cond_4
    const/16 v1, 0x54

    if-ne p1, v1, :cond_5

    .line 1125
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v2, "javascript:cordova.fireDocumentEvent(\'searchbutton\');"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1129
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 870
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 873
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/api/PluginManager;->onNewIntent(Landroid/content/Intent;)V

    .line 876
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1428
    const-string v0, "onOptionsItemSelected"

    invoke-virtual {p0, v0, p1}, Lorg/apache/cordova/DroidGap;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1429
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 838
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 841
    iget v0, p0, Lorg/apache/cordova/DroidGap;->activityState:I

    sget v1, Lorg/apache/cordova/DroidGap;->ACTIVITY_EXITING:I

    if-ne v0, v1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{cordova.require(\'cordova/channel\').onPause.fire();}catch(e){console.log(\'exception firing pause event from native\');};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    iget-boolean v1, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginManager;->onPause(Z)V

    .line 858
    :cond_2
    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1421
    const-string v0, "onPrepareOptionsMenu"

    invoke-virtual {p0, v0, p1}, Lorg/apache/cordova/DroidGap;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1422
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1201
    move-object v3, p0

    .line 1204
    .local v3, "me":Lorg/apache/cordova/DroidGap;
    const-string v0, "errorUrl"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/apache/cordova/DroidGap;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1205
    .local v6, "errorUrl":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v0, "file://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lorg/apache/cordova/DroidGap;->baseUrl:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lorg/apache/cordova/DroidGap;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1208
    new-instance v0, Lorg/apache/cordova/DroidGap$5;

    invoke-direct {v0, p0, v3, v6}, Lorg/apache/cordova/DroidGap$5;-><init>(Lorg/apache/cordova/DroidGap;Lorg/apache/cordova/DroidGap;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1227
    :goto_0
    return-void

    .line 1216
    :cond_1
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v2, 0x1

    .line 1217
    .local v2, "exit":Z
    :goto_1
    new-instance v0, Lorg/apache/cordova/DroidGap$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/DroidGap$6;-><init>(Lorg/apache/cordova/DroidGap;ZLorg/apache/cordova/DroidGap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1216
    .end local v2    # "exit":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 883
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 885
    iget v0, p0, Lorg/apache/cordova/DroidGap;->activityState:I

    sget v2, Lorg/apache/cordova/DroidGap;->ACTIVITY_STARTING:I

    if-ne v0, v2, :cond_1

    .line 886
    sget v0, Lorg/apache/cordova/DroidGap;->ACTIVITY_RUNNING:I

    iput v0, p0, Lorg/apache/cordova/DroidGap;->activityState:I

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v2, "javascript:try{cordova.require(\'cordova/channel\').onResume.fire();}catch(e){console.log(\'exception firing resume event from native\');};"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_3

    .line 899
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->activityResultKeepRunning:Z

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lorg/apache/cordova/api/PluginManager;->onResume(Z)V

    .line 903
    :cond_3
    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->activityResultKeepRunning:Z

    if-eqz v0, :cond_0

    .line 906
    :cond_4
    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->activityResultKeepRunning:Z

    if-eqz v0, :cond_5

    .line 907
    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->activityResultKeepRunning:Z

    iput-boolean v0, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    .line 908
    iput-boolean v1, p0, Lorg/apache/cordova/DroidGap;->activityResultKeepRunning:Z

    .line 912
    :cond_5
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 899
    goto :goto_1
.end method

.method public peekAtUrlStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1392
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1394
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 951
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/api/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 954
    :cond_0
    return-void
.end method

.method public pushUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1403
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    return-void
.end method

.method public removeAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    return-object v0
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;

    .prologue
    .line 980
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->callbackServer:Lorg/apache/cordova/CallbackServer;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->callbackServer:Lorg/apache/cordova/CallbackServer;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackServer;->sendJavascript(Ljava/lang/String;)V

    .line 982
    :cond_0
    return-void
.end method

.method public setActivityResultCallback(Lorg/apache/cordova/api/IPlugin;)V
    .locals 0
    .param p1, "plugin"    # Lorg/apache/cordova/api/IPlugin;

    .prologue
    .line 1189
    iput-object p1, p0, Lorg/apache/cordova/DroidGap;->activityResultCallback:Lorg/apache/cordova/api/IPlugin;

    .line 1190
    return-void
.end method

.method public setAuthenticationToken(Lorg/apache/cordova/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "authenticationToken"    # Lorg/apache/cordova/AuthenticationToken;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 229
    if-nez p2, :cond_0

    .line 230
    const-string p2, ""

    .line 233
    :cond_0
    if-nez p3, :cond_1

    .line 234
    const-string p3, ""

    .line 237
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 800
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    return-void
.end method

.method public setDoubleProperty(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 830
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 831
    return-void
.end method

.method public setIntegerProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 810
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    return-void
.end method

.method protected setRootViewMargin(I)V
    .locals 2
    .param p1, "top"    # I

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 352
    return-void
.end method

.method public setStringProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    return-void
.end method

.method protected setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "appView"    # Landroid/webkit/WebView;
    .param p2, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 426
    iput-object p2, p0, Lorg/apache/cordova/DroidGap;->webViewClient:Landroid/webkit/WebViewClient;

    .line 427
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 428
    return-void
.end method

.method public showWebPage(Ljava/lang/String;ZZLjava/util/HashMap;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "openExternal"    # Z
    .param p3, "clearHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v3, "showWebPage(%s, %b, %b, HashMap"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    if-eqz p3, :cond_0

    .line 999
    invoke-virtual {p0}, Lorg/apache/cordova/DroidGap;->clearHistory()V

    .line 1003
    :cond_0
    if-nez p2, :cond_4

    .line 1006
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/DroidGap;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1010
    :cond_1
    if-eqz p3, :cond_2

    .line 1011
    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 1015
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 1040
    :goto_0
    return-void

    .line 1019
    :cond_3
    sget-object v2, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWebPage: Cannot load URL into webview since it is not in white list.  Loading into browser instead. (URL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/api/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1023
    invoke-virtual {p0, v1}, Lorg/apache/cordova/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1024
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1033
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1035
    invoke-virtual {p0, v1}, Lorg/apache/cordova/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1036
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 1037
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public spinnerStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1049
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 1053
    :cond_0
    move-object v6, p0

    .line 1054
    .local v6, "me":Lorg/apache/cordova/DroidGap;
    new-instance v5, Lorg/apache/cordova/DroidGap$4;

    invoke-direct {v5, p0, v6}, Lorg/apache/cordova/DroidGap$4;-><init>(Lorg/apache/cordova/DroidGap;Lorg/apache/cordova/DroidGap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 1060
    return-void
.end method

.method public spinnerStop()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/DroidGap;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 1070
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1145
    sget-object v0, Lorg/apache/cordova/DroidGap;->TAG:Ljava/lang/String;

    const-string v1, "DroidGap.startActivityForResult(intent,%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1147
    return-void
.end method

.method public startActivityForResult(Lorg/apache/cordova/api/IPlugin;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "command"    # Lorg/apache/cordova/api/IPlugin;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 1158
    iput-object p1, p0, Lorg/apache/cordova/DroidGap;->activityResultCallback:Lorg/apache/cordova/api/IPlugin;

    .line 1159
    iget-boolean v0, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    iput-boolean v0, p0, Lorg/apache/cordova/DroidGap;->activityResultKeepRunning:Z

    .line 1162
    if-eqz p1, :cond_0

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/DroidGap;->keepRunning:Z

    .line 1167
    :cond_0
    invoke-super {p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1168
    return-void
.end method
