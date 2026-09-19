.class Lcom/droid/engine/DroidGame$10$1;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droid/engine/DroidGame$10;


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame$10;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/droid/engine/DroidGame$10$1;->this$1:Lcom/droid/engine/DroidGame$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/droid/engine/DroidGame$10$1;->this$1:Lcom/droid/engine/DroidGame$10;

    iget-object v0, v0, Lcom/droid/engine/DroidGame$10;->this$0:Lcom/droid/engine/DroidGame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droid/engine/DroidGame;->loadUrl(Ljava/lang/String;)V

    .line 781
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 782
    return-void
.end method
