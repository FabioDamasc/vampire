.class Lcom/droid/engine/DroidGame$2;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/droid/engine/DroidGame$2;->this$0:Lcom/droid/engine/DroidGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 328
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/droid/engine/DroidGame$2;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v0}, Lcom/droid/engine/DroidGame;->ingameReturnKey()Z

    move-result v0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
