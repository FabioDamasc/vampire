.class Lcom/droid/engine/DroidGame$4;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/DroidGame;

.field final synthetic val$wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/droid/engine/DroidGame$4;->this$0:Lcom/droid/engine/DroidGame;

    iput-object p2, p0, Lcom/droid/engine/DroidGame$4;->val$wv:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 374
    iget-object v0, p0, Lcom/droid/engine/DroidGame$4;->this$0:Lcom/droid/engine/DroidGame;

    iget-object v1, p0, Lcom/droid/engine/DroidGame$4;->val$wv:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/droid/engine/DroidGame;->access$000(Lcom/droid/engine/DroidGame;Landroid/webkit/WebView;)V

    .line 375
    return-void
.end method
