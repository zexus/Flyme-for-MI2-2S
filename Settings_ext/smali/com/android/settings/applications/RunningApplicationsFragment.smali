.class public Lcom/android/settings_ext/applications/RunningApplicationsFragment;
.super Lcom/android/settings_ext/BaseFragment;
.source "RunningApplicationsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;


# instance fields
.field private DN:Lcom/android/settings_ext/applications/RunningState;

.field private Eg:I

.field private HB:Lcom/android/settings_ext/applications/ApplicationsContainer;

.field final Je:Ljava/util/HashMap;

.field private Jf:Landroid/app/ActivityManager;

.field private Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

.field Jh:Ljava/lang/Runnable;

.field Ji:J

.field Jj:Lcom/android/settings_ext/applications/RunningState$BaseItem;

.field Jk:Lcom/android/internal/util/MemInfoReader;

.field Jl:I

.field Jm:I

.field Jn:I

.field Jo:J

.field Jp:J

.field Jq:J

.field Jr:J

.field private Js:Z

.field private fz:Landroid/widget/ListView;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 29
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Je:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    .line 46
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jk:Lcom/android/internal/util/MemInfoReader;

    .line 48
    iput v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jl:I

    .line 49
    iput v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jm:I

    .line 50
    iput v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jn:I

    .line 51
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jo:J

    .line 52
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jp:J

    .line 53
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jq:J

    .line 54
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jr:J

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/RunningApplicationsFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/android/settings_ext/applications/RunningState$MergedItem;)V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.RunningServiceDetailsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "uid"

    iget-object v2, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v1, "process"

    iget-object v2, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "background"

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;->Hg:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method ah(Z)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->fz:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    check-cast v0, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 290
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;->jG()V

    .line 291
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jh:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jh:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jh:Ljava/lang/Runnable;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Ji:J

    sub-long/2addr v0, v4

    .line 304
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_0
    iget v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jl:I

    iget-object v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget v4, v4, Lcom/android/settings_ext/applications/RunningState;->KG:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jo:J

    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v6, v3, Lcom/android/settings_ext/applications/RunningState;->KH:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jr:J

    cmp-long v3, v4, v0

    if-eqz v3, :cond_4

    .line 312
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget v3, v3, Lcom/android/settings_ext/applications/RunningState;->KG:I

    iput v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jl:I

    .line 313
    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v4, v3, Lcom/android/settings_ext/applications/RunningState;->KH:J

    iput-wide v4, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jo:J

    .line 314
    iput-wide v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jr:J

    .line 316
    :cond_4
    iget v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jm:I

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget v1, v1, Lcom/android/settings_ext/applications/RunningState;->KI:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jp:J

    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v4, v3, Lcom/android/settings_ext/applications/RunningState;->KJ:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jn:I

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget v1, v1, Lcom/android/settings_ext/applications/RunningState;->KK:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jq:J

    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v4, v3, Lcom/android/settings_ext/applications/RunningState;->KL:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget v0, v0, Lcom/android/settings_ext/applications/RunningState;->KI:I

    iput v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jm:I

    .line 321
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/RunningState;->KJ:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jp:J

    .line 322
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget v0, v0, Lcom/android/settings_ext/applications/RunningState;->KK:I

    iput v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jn:I

    .line 323
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/RunningState;->KL:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jq:J

    .line 325
    :cond_6
    monitor-exit v2

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ax(I)V
    .locals 1

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 274
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->jF()V

    goto :goto_0

    .line 277
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->ah(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->jF()V

    goto :goto_0

    .line 281
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->ah(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->jF()V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method jF()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Je:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    .line 261
    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->setThemeRes(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filter_app_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Eg:I

    .line 66
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Eg:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Js:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsContainer;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->HB:Lcom/android/settings_ext/applications/ApplicationsContainer;

    .line 72
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    .line 123
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jf:Landroid/app/ActivityManager;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/RunningState;->ac(Landroid/content/Context;)Lcom/android/settings_ext/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    .line 108
    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->fz:Landroid/widget/ListView;

    .line 110
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->fz:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->fz:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->fz:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 116
    new-instance v0, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;-><init>(Lcom/android/settings_ext/applications/RunningApplicationsFragment;Lcom/android/settings_ext/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Js:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;->ai(Z)V

    .line 120
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jf:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 122
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Ji:J

    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 230
    check-cast p1, Landroid/widget/ListView;

    .line 231
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 232
    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jj:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v1, :cond_0

    .line 234
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 235
    const-string v1, "uid"

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v1, "process"

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;->Hg:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v0, ":android:show_fragment_title"

    const v1, 0x7f090517

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    const-class v0, Lcom/android/settings_ext/applications/RunningServiceDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v5, 0x7f090597

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->a(Lcom/android/settings_ext/applications/RunningState$MergedItem;)V

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Je:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->HB:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->b(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jh:Ljava/lang/Runnable;

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->HB:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->a(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Eg:I

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->HB:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iJ()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->ah(Z)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Jg:Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v1, p0, Lcom/android/settings_ext/applications/RunningApplicationsFragment;->Js:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningApplicationsFragment$ServiceListAdapter;->ai(Z)V

    .line 98
    :cond_0
    return-void
.end method
