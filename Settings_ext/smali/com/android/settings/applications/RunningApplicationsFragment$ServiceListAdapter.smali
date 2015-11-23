.class Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningApplicationsFragment.java"


# instance fields
.field final DN:Lcom/android/settings/applications/RunningState;

.field Hg:Z

.field final synthetic Jt:Lcom/android/settings/applications/RunningApplicationsFragment;

.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningApplicationsFragment;Lcom/android/settings/applications/RunningState;)V
    .locals 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Jt:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->DN:Lcom/android/settings/applications/RunningState;

    .line 134
    invoke-static {p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->a(Lcom/android/settings/applications/RunningApplicationsFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->jG()V

    .line 136
    return-void
.end method


# virtual methods
.method ai(Z)V
    .locals 1

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hg:Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->DN:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState;->ak(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->jG()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 143
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->DN:Lcom/android/settings/applications/RunningState;

    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 213
    monitor-exit v2

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 216
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 217
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->DN:Lcom/android/settings/applications/RunningState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Jt:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-static {v4}, Lcom/android/settings/applications/RunningApplicationsFragment;->b(Lcom/android/settings/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Jt:Lcom/android/settings/applications/RunningApplicationsFragment;

    iget-object v1, v1, Lcom/android/settings/applications/RunningApplicationsFragment;->Je:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 204
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 197
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->c(Landroid/view/View;I)V

    .line 198
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->DN:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->KT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method jG()V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hg:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->DN:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->jS()Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 154
    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 159
    :cond_1
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->DN:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->jR()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
