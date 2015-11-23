.class public Lcom/android/settings/BasePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BasePreferenceFragment.java"


# instance fields
.field protected bY:Ljava/util/List;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 100
    new-instance v0, Lcom/android/settings/X;

    invoke-direct {v0, p0}, Lcom/android/settings/X;-><init>(Lcom/android/settings/BasePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 155
    new-instance v0, Lcom/android/settings/Y;

    invoke-direct {v0, p0}, Lcom/android/settings/Y;-><init>(Lcom/android/settings/BasePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/android/settings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method private onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/eD;

    .line 71
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/eD;->j(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100377

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10037c

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/df;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/eK;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 86
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/cz;->A(I)I

    move-result v0

    .line 92
    if-ltz v0, :cond_0

    .line 93
    invoke-static {v0}, Lcom/android/settings/cz;->z(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-static {v1, v1, v0}, Lcom/android/settings/provider/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public Z()V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->aa()V

    .line 39
    iget-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 46
    iget-object v3, p0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/eD;

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/android/settings/eD;->pause()V

    .line 55
    :cond_1
    return-void
.end method

.method public aa()V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 115
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->ac()I

    move-result v2

    .line 121
    if-lez v2, :cond_1

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiSettings;->c(Ljava/util/List;)V

    .line 125
    :cond_1
    iput-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    goto :goto_0
.end method

.method protected ab()V
    .locals 6

    .prologue
    .line 129
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    .line 136
    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->bY:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 139
    iget-object v4, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->ft()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 141
    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 142
    if-nez v3, :cond_0

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 137
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method protected ac()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0092

    .line 178
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/BasePreferenceFragment;->setThemeRes(I)V

    .line 179
    return-void

    .line 176
    :cond_0
    const v0, 0x7f0a0063

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 185
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 202
    instance-of v1, v0, Lcom/android/settings/eD;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Lcom/android/settings/eD;

    invoke-virtual {v0}, Lcom/android/settings/eD;->pause()V

    .line 205
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 192
    instance-of v1, v0, Lcom/android/settings/eD;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Lcom/android/settings/eD;

    invoke-virtual {v0}, Lcom/android/settings/eD;->resume()V

    .line 195
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->Z()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
