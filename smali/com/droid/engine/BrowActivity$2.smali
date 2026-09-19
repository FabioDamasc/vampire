.class Lcom/droid/engine/BrowActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "BrowActivity.java"


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
    .line 69
    iput-object p1, p0, Lcom/droid/engine/BrowActivity$2;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/droid/engine/BrowActivity$2;->this$0:Lcom/droid/engine/BrowActivity;

    invoke-virtual {v0}, Lcom/droid/engine/BrowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 72
    return-void
.end method
