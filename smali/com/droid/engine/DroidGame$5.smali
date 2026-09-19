.class Lcom/droid/engine/DroidGame$5;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->checkAndUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/DroidGame;


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/droid/engine/DroidGame$5;->this$0:Lcom/droid/engine/DroidGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "pagetitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/droid/engine/DroidGame$5;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v2}, Lcom/droid/engine/DroidGame;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 505
    .local v1, "wv":Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_0

    const-string v2, "login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/droid/engine/DroidGame$5;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v2}, Lcom/droid/engine/DroidGame;->dialogRestart()V

    .line 512
    :cond_0
    return-void
.end method
