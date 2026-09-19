.class Lcom/droid/engine/DroidGame$6;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->onThirdPlatformCallback(Ljava/lang/String;)V
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
    .line 651
    iput-object p1, p0, Lcom/droid/engine/DroidGame$6;->this$0:Lcom/droid/engine/DroidGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 656
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/droid/engine/DroidGame$6;->this$0:Lcom/droid/engine/DroidGame;

    iget-object v1, v1, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 657
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/droid/engine/R$string;->com_droid_engine_dialog_update_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 658
    sget v1, Lcom/droid/engine/R$string;->com_droid_engine_dialog_tips:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 659
    iget-object v1, p0, Lcom/droid/engine/DroidGame$6;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v1}, Lcom/droid/engine/DroidGame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/droid/engine/DroidGame$6$1;

    invoke-direct {v2, p0}, Lcom/droid/engine/DroidGame$6$1;-><init>(Lcom/droid/engine/DroidGame$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 665
    new-instance v1, Lcom/droid/engine/DroidGame$6$2;

    invoke-direct {v1, p0}, Lcom/droid/engine/DroidGame$6$2;-><init>(Lcom/droid/engine/DroidGame$6;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 673
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 674
    return-void
.end method
