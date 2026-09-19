.class Lorg/apache/cordova/DroidGap$2;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/DroidGap;->loadUrlIntoView(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/DroidGap;

.field final synthetic val$me:Lorg/apache/cordova/DroidGap;


# direct methods
.method constructor <init>(Lorg/apache/cordova/DroidGap;Lorg/apache/cordova/DroidGap;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lorg/apache/cordova/DroidGap$2;->this$0:Lorg/apache/cordova/DroidGap;

    iput-object p2, p0, Lorg/apache/cordova/DroidGap$2;->val$me:Lorg/apache/cordova/DroidGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/apache/cordova/DroidGap$2;->val$me:Lorg/apache/cordova/DroidGap;

    iget-object v0, v0, Lorg/apache/cordova/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/apache/cordova/DroidGap$2;->val$me:Lorg/apache/cordova/DroidGap;

    invoke-virtual {v0}, Lorg/apache/cordova/DroidGap;->init()V

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/DroidGap$2;->val$me:Lorg/apache/cordova/DroidGap;

    invoke-static {v0}, Lorg/apache/cordova/DroidGap;->access$000(Lorg/apache/cordova/DroidGap;)V

    .line 626
    return-void
.end method
