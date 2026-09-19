.class Lcom/droid/engine/BrowActivity$1;
.super Ljava/lang/Object;
.source "BrowActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/BrowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/BrowActivity;


# direct methods
.method constructor <init>(Lcom/droid/engine/BrowActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/droid/engine/BrowActivity$1;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 61
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/droid/engine/BrowActivity$1;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-virtual {v2, v0}, Lcom/droid/engine/BrowActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
