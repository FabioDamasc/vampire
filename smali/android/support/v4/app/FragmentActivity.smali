.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$FragmentTag;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field private static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedForLoaderManager:Z

.field final mFragments:Landroid/support/v4/app/FragmentManagerImpl;

.field final mHandler:Landroid/os/Handler;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 107
    return-void
.end method


# virtual methods
.method doReallyStop(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 573
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_0

    .line 574
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 575
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onReallyStop(Z)V

    .line 578
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 549
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 553
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 561
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLoadersStarted="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 563
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loader Manager "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 569
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .locals 2
    .param p1, "index"    # I
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 675
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-nez v1, :cond_0

    .line 676
    new-instance v1, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v1}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    .line 678
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 679
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-nez v0, :cond_2

    .line 680
    if-eqz p3, :cond_1

    .line 681
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    .end local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    invoke-direct {v0, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 682
    .restart local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 687
    :cond_1
    :goto_0
    return-object v0

    .line 685
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateActivity(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 666
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 671
    :goto_0
    return-object v0

    .line 669
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 670
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 671
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method invalidateSupportFragmentIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 649
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 651
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 654
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->remove(I)V

    .line 656
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 125
    shr-int/lit8 v1, p1, 0x10

    .line 126
    .local v1, "index":I
    if-eqz v1, :cond_3

    .line 127
    add-int/lit8 v1, v1, -0x1

    .line 128
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 129
    :cond_0
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity result fragment index out of range: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 134
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 135
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v0, v2, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 142
    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 610
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 153
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 179
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_1

    .line 180
    iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/app/HCSparseArray;

    iput-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    .line 182
    :cond_1
    if-eqz p1, :cond_2

    .line 183
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 184
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 186
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 187
    return-void

    .line 184
    .restart local v1    # "p":Landroid/os/Parcelable;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 194
    if-nez p1, :cond_1

    .line 195
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 196
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 205
    .end local v0    # "show":Z
    :goto_0
    return v0

    .line 203
    .restart local v0    # "show":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "show":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 213
    const-string v7, "fragment"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v7

    .line 290
    :goto_0
    return-object v7

    .line 217
    :cond_0
    const-string v7, "class"

    invoke-interface {p3, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "fname":Ljava/lang/String;
    sget-object v7, Landroid/support/v4/app/FragmentActivity$FragmentTag;->Fragment:[I

    invoke-virtual {p2, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, "a":Landroid/content/res/TypedArray;
    if-nez v2, :cond_1

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_1
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 223
    .local v4, "id":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    const/4 v5, 0x0

    .line 227
    .local v5, "parent":Landroid/view/View;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v1

    .line 228
    .local v1, "containerId":I
    :cond_2
    if-ne v1, v8, :cond_3

    if-ne v4, v8, :cond_3

    if-nez v6, :cond_3

    .line 229
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 236
    :cond_3
    if-eq v4, v8, :cond_4

    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7, v4}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 237
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    :cond_4
    if-nez v3, :cond_5

    if-eqz v6, :cond_5

    .line 238
    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 240
    :cond_5
    if-nez v3, :cond_6

    if-eq v1, v8, :cond_6

    .line 241
    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7, v1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 244
    :cond_6
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "FragmentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateView: id=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " existing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_7
    if-nez v3, :cond_9

    .line 248
    invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 249
    iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 250
    if-eqz v4, :cond_8

    move v7, v4

    :goto_1
    iput v7, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 251
    iput v1, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 252
    iput-object v6, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 253
    iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 254
    iput-object p0, v3, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 255
    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v7, v3, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 256
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, p0, p3, v7}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 257
    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7, v3, v10}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 280
    :goto_2
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v7, :cond_c

    .line 281
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " did not create a view."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    move v7, v1

    .line 250
    goto :goto_1

    .line 259
    :cond_9
    iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v7, :cond_a

    .line 262
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Duplicate id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or parent id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with another fragment for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_a
    iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 270
    iput-object p0, v3, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 274
    iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v7, :cond_b

    .line 275
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, p0, p3, v7}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 277
    :cond_b
    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_2

    .line 284
    :cond_c
    if-eqz v4, :cond_d

    .line 285
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    .line 287
    :cond_d
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    .line 288
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    :cond_e
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 302
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 303
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 306
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 319
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 331
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 332
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    .line 343
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 351
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 348
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 360
    packed-switch p1, :pswitch_data_0

    .line 365
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 366
    return-void

    .line 362
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 375
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    .line 376
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 384
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 385
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 393
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 394
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 395
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 402
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 403
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v2, :cond_0

    .line 404
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 405
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 406
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 408
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 409
    .local v0, "goforit":Z
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 410
    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 412
    .end local v0    # "goforit":Z
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onReallyStop(Z)V
    .locals 1
    .param p1, "retaining"    # Z

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    .line 590
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 591
    if-nez p1, :cond_1

    .line 592
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 599
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop(Z)V

    .line 600
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 422
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 423
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 431
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v6, :cond_0

    .line 432
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 435
    :cond_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    move-result-object v0

    .line 436
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v4, 0x0

    .line 437
    .local v4, "retainLoaders":Z
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-eqz v6, :cond_2

    .line 440
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 441
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl;

    .line 442
    .local v2, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    iget-boolean v6, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_1

    .line 443
    const/4 v4, 0x1

    .line 440
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 446
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6, v1}, Landroid/support/v4/app/HCSparseArray;->removeAt(I)V

    goto :goto_1

    .line 450
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    move-object v3, v5

    .line 459
    :goto_2
    return-object v3

    .line 454
    :cond_3
    new-instance v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 455
    .local v3, "nci":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    iput-object v5, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 456
    iput-object v5, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 457
    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    .line 458
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    iput-object v5, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/app/HCSparseArray;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 468
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 469
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 470
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 482
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 483
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 486
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 489
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    if-nez v1, :cond_1

    .line 490
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    .line 491
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 496
    :cond_0
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 500
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 501
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-eqz v1, :cond_3

    .line 502
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 503
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 502
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 493
    .end local v0    # "i":I
    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_0

    .line 494
    const/4 v1, -0x1

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p0, v1, v2, v4}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_0

    .line 506
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 515
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 516
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    .line 519
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 626
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 637
    if-ne p3, v0, :cond_0

    .line 638
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 645
    :goto_0
    return-void

    .line 641
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 529
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 536
    :goto_0
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    goto :goto_0
.end method
