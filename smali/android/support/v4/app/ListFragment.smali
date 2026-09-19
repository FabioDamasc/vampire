.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ListFragment.java"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mSetEmptyText:Z

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 67
    return-void
.end method

.method private ensureList()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 282
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 287
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_1
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_4

    .line 290
    check-cast v1, Landroid/widget/ListView;

    .end local v1    # "root":Landroid/view/View;
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 314
    :cond_2
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 315
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 316
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_8

    .line 317
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    :cond_3
    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    .restart local v1    # "root":Landroid/view/View;
    :cond_4
    const v2, 0xff0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 293
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v2, :cond_5

    .line 294
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 296
    :cond_5
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 297
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 298
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_7

    .line 300
    if-nez v0, :cond_6

    .line 301
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_7
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 310
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 321
    .end local v1    # "root":Landroid/view/View;
    :cond_8
    iget-object v2, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 322
    invoke-direct {p0, v4, v4}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    goto :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 245
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 246
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    .line 272
    :goto_0
    return-void

    .line 252
    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 253
    if-eqz p1, :cond_3

    .line 254
    if-eqz p2, :cond_2

    .line 255
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_3
    if-eqz p2, :cond_4

    .line 264
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 188
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 180
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 172
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 86
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "root":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0xff0001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 90
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "lv":Landroid/widget/ListView;
    const v4, 0x102000a

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setId(I)V

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 97
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 102
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 124
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 138
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 198
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mSetEmptyText:Z

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mSetEmptyText:Z

    .line 206
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 145
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 146
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    .line 154
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 144
    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    .line 224
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    .line 232
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 164
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 165
    return-void
.end method
