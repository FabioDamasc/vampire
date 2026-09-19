.class public Lcom/vampire/pt/GameActivity;
.super Lcom/droid/engine/DroidGame;
.source "GameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/droid/engine/DroidGame;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/droid/engine/DroidGame;->onCreate(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method
