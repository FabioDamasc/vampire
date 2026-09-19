.class Lcom/droid/engine/DroidGame$11;
.super Ljava/lang/Object;
.source "DroidGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/DroidGame;->dialog()V
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
    .line 798
    iput-object p1, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 801
    iget-object v4, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    const-string v5, "config"

    invoke-virtual {v4, v5, v6}, Lcom/droid/engine/DroidGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 802
    .local v3, "sharedata":Landroid/content/SharedPreferences;
    const-string v4, "has_shortcut"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 804
    .local v2, "has_shortcut":Z
    if-eqz v2, :cond_0

    .line 836
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v4, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    const-string v5, "config"

    invoke-virtual {v4, v5, v6}, Lcom/droid/engine/DroidGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 807
    .local v1, "editordata":Landroid/content/SharedPreferences$Editor;
    const-string v4, "has_shortcut"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 808
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 810
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    iget-object v4, v4, Lcom/droid/engine/DroidGame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 811
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/droid/engine/R$string;->com_droid_engine_dialog_message:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 812
    iget-object v4, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/droid/engine/R$string;->com_droid_engine_dialog_tips:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 813
    iget-object v4, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/droid/engine/DroidGame$11$1;

    invoke-direct {v5, p0}, Lcom/droid/engine/DroidGame$11$1;-><init>(Lcom/droid/engine/DroidGame$11;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 828
    iget-object v4, p0, Lcom/droid/engine/DroidGame$11;->this$0:Lcom/droid/engine/DroidGame;

    invoke-virtual {v4}, Lcom/droid/engine/DroidGame;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/droid/engine/DroidGame$11$2;

    invoke-direct {v5, p0}, Lcom/droid/engine/DroidGame$11$2;-><init>(Lcom/droid/engine/DroidGame$11;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 835
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
