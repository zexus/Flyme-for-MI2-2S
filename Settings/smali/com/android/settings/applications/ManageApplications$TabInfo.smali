.class public Lcom/android/settings_ext/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settings_ext/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings_ext/applications/AppClickListener;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings_ext/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mTotalStorage:J


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "owner"    # Lcom/android/settings_ext/applications/ManageApplications;
    .param p2, "apps"    # Lcom/android/settings_ext/applications/ApplicationsState;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "listType"    # I
    .param p5, "clickListener"    # Lcom/android/settings_ext/applications/AppClickListener;
    .param p6, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v0, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 212
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 221
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ext/applications/ManageApplications;

    .line 222
    iput-object p2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 223
    iput-object p3, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 224
    iput p4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListType:I

    .line 225
    packed-switch p4, :pswitch_data_0

    .line 229
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFilter:I

    .line 231
    :goto_0
    iput-object p5, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ext/applications/AppClickListener;

    .line 232
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0904f9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 233
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0904f8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 234
    iput-object p6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 235
    return-void

    .line 226
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 227
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 228
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 426
    :cond_0
    return-void
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "contentParent"    # Landroid/view/ViewGroup;
    .param p3, "contentChild"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 243
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 288
    :goto_0
    return-object v2

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 247
    iget v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, v4, :cond_5

    const v2, 0x7f04005c

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 250
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 251
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 253
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 257
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 260
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 262
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 263
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 264
    iput-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 265
    new-instance v2, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ext/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings_ext/applications/ApplicationsState;Lcom/android/settings_ext/applications/ManageApplications$TabInfo;I)V

    iput-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    .line 266
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 272
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v2, v5}, Lcom/android/settings_ext/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 273
    iget v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 282
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ext/applications/RunningProcessesView;

    iput-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    .line 284
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    if-eqz v2, :cond_4

    .line 285
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 288
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 247
    :cond_5
    const v2, 0x7f040059

    goto/16 :goto_1
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 294
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 298
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 436
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ext/applications/AppClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/settings_ext/applications/AppClickListener;->onItemClick(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 431
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningProcessesView;->doPause()V

    .line 322
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 328
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 5
    .param p1, "sortOrder"    # I

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ext/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ext/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 306
    .local v0, "haveData":Z
    if-eqz v0, :cond_2

    .line 307
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ext/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/settings_ext/applications/RunningProcessesView;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .end local v0    # "haveData":Z
    :cond_1
    :goto_0
    return-void

    .line 310
    .restart local v0    # "haveData":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p1, "containerService"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 240
    return-void
.end method

.method updateStorageUsage()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 332
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v6}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_0

    .line 336
    iput-wide v8, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 337
    iput-wide v8, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 338
    iput-wide v8, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 340
    iget v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 341
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_2

    .line 343
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 345
    .local v5, "stats":[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 346
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v5    # "stats":[J
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_7

    .line 353
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 354
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_7

    .line 355
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 356
    .local v1, "ae":Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 347
    .end local v0    # "N":I
    .end local v1    # "ae":Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 361
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_4

    .line 363
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 365
    .restart local v5    # "stats":[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 366
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    .end local v5    # "stats":[J
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 373
    .local v3, "emulatedStorage":Z
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_6

    .line 374
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 375
    .restart local v0    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v0, :cond_6

    .line 376
    iget-object v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 377
    .restart local v1    # "ae":Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v10, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 378
    if-eqz v3, :cond_5

    .line 379
    iget-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 375
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 367
    .end local v0    # "N":I
    .end local v1    # "ae":Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    .end local v3    # "emulatedStorage":Z
    .end local v4    # "i":I
    :catch_1
    move-exception v2

    .line 368
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 383
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "emulatedStorage":Z
    :cond_6
    iget-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iget-object v8, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/settings_ext/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 386
    .end local v3    # "emulatedStorage":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
