.class public Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;
.super Lcom/android/settings_ext/BaseFragment;
.source "BackgroundLocationManagerFragment.java"


# instance fields
.field private DE:I

.field private DP:Lcom/android/settings_ext/applications/ApplicationsState;

.field public Eh:I

.field private Em:Landroid/view/View;

.field private ack:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

.field private acl:Ljava/util/ArrayList;

.field private acm:Landroid/location/LocationPolicyManager;

.field private acn:Landroid/util/SparseIntArray;

.field private aco:Landroid/util/SparseIntArray;

.field private fz:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->Eh:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->DE:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acl:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->ack:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 115
    const v0, 0x7f100121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 116
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/settings_ext/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings_ext/applications/AppViewHolder;

    move-result-object v1

    .line 117
    iget-object v2, v1, Lcom/android/settings_ext/applications/AppViewHolder;->Dy:Landroid/view/View;

    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 122
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 123
    iget-object v0, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 125
    iget-object v0, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DB:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DA:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 129
    iget-object v0, v1, Lcom/android/settings_ext/applications/AppViewHolder;->Dz:Landroid/widget/TextView;

    const v3, 0x7f090d4f

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;-><init>(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;Lcom/android/settings_ext/applications/AppViewHolder;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->aco:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acl:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->fz:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->Em:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acn:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private qa()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acm:Landroid/location/LocationPolicyManager;

    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acm:Landroid/location/LocationPolicyManager;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acm:Landroid/location/LocationPolicyManager;

    invoke-virtual {v0, v4}, Landroid/location/LocationPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 149
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acn:Landroid/util/SparseIntArray;

    aget v3, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    .line 111
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const v0, 0x7f040072

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->qa()V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings_ext/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 91
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->Em:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->Em:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 97
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 100
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 101
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 102
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 103
    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->fz:Landroid/widget/ListView;

    .line 104
    new-instance v0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;-><init>(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;Lcom/android/settings_ext/applications/ApplicationsState;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->ack:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->ack:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->DE:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->resume(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->ack:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->ack:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->ack:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acn:Landroid/util/SparseIntArray;

    .line 70
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->aco:Landroid/util/SparseIntArray;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/location/Utils;->aW(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acl:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->aco:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->acm:Landroid/location/LocationPolicyManager;

    iget-object v2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->aco:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->aco:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationPolicyManager;->setUidPolicy(II)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onPause()V

    .line 80
    return-void
.end method
