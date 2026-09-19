.class Lcom/droid/engine/DroidGame$10$2;
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
    .line 784
    iput-object p1, p0, Lcom/droid/engine/DroidGame$10$2;->this$1:Lcom/droid/engine/DroidGame$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 788
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 789
    return-void
.end method
