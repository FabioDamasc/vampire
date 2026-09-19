.class Lcom/droid/engine/DroidGame$1;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->initGameActivity()V
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
    .line 209
    iput-object p1, p0, Lcom/droid/engine/DroidGame$1;->this$0:Lcom/droid/engine/DroidGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 214
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    iget-object v1, p0, Lcom/droid/engine/DroidGame$1;->this$0:Lcom/droid/engine/DroidGame;

    iget-object v1, v1, Lcom/droid/engine/DroidGame;->handlerFlash:Lcom/droid/engine/ViewController;

    invoke-virtual {v1, v0}, Lcom/droid/engine/ViewController;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method
