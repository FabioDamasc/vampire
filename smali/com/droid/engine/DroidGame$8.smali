.class Lcom/droid/engine/DroidGame$8;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->onPaycenterCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/DroidGame;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/droid/engine/DroidGame$8;->this$0:Lcom/droid/engine/DroidGame;

    iput-object p2, p0, Lcom/droid/engine/DroidGame$8;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/droid/engine/DroidGame$8;->this$0:Lcom/droid/engine/DroidGame;

    invoke-static {v0}, Lcom/droid/engine/DroidGame;->access$300(Lcom/droid/engine/DroidGame;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/droid/engine/DroidGame$8;->this$0:Lcom/droid/engine/DroidGame;

    invoke-static {v0}, Lcom/droid/engine/DroidGame;->access$400(Lcom/droid/engine/DroidGame;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:showInfo(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/droid/engine/DroidGame$8;->this$0:Lcom/droid/engine/DroidGame;

    sget v3, Lcom/droid/engine/R$string;->com_droid_engine_pp_payment_failed:I

    invoke-virtual {v2, v3}, Lcom/droid/engine/DroidGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <br> { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/droid/engine/DroidGame$8;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 724
    :cond_0
    return-void
.end method
