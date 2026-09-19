.class Lcom/droid/engine/ViewController$3;
.super Ljava/lang/Object;
.source "ViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droid/engine/ViewController;->stateSet(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droid/engine/ViewController;


# direct methods
.method constructor <init>(Lcom/droid/engine/ViewController;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/droid/engine/ViewController$3;->this$0:Lcom/droid/engine/ViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/droid/engine/ViewController$3;->this$0:Lcom/droid/engine/ViewController;

    iget-object v0, v0, Lcom/droid/engine/ViewController;->mActivity:Lcom/droid/engine/DroidGame;

    invoke-virtual {v0}, Lcom/droid/engine/DroidGame;->checkAndUpdate()V

    .line 108
    return-void
.end method
