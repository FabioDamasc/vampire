.class Lcom/droid/engine/DroidGame$6$2;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droid/engine/DroidGame$6;


# direct methods
.method constructor <init>(Lcom/droid/engine/DroidGame$6;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/droid/engine/DroidGame$6$2;->this$1:Lcom/droid/engine/DroidGame$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/droid/engine/DroidGame$6$2;->this$1:Lcom/droid/engine/DroidGame$6;

    iget-object v0, v0, Lcom/droid/engine/DroidGame$6;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v0}, Lcom/droid/engine/DroidGame;->exitGame()V

    .line 671
    return-void
.end method
