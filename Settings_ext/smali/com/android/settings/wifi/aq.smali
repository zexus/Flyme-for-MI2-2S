.class public Lcom/android/settings/wifi/aq;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private awc:Landroid/view/View;

.field private awd:Landroid/widget/TextView;

.field private awe:Z

.field private mAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/aq;->awe:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 62
    const v0, 0x7f040100

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 65
    const v2, 0x7f100052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 66
    if-nez v2, :cond_0

    .line 67
    const v2, 0x7f040102

    invoke-virtual {p1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 71
    :cond_0
    const v2, 0x7f040101

    invoke-virtual {p1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/aq;->awc:Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/android/settings/wifi/aq;->awc:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->awc:Landroid/view/View;

    new-instance v2, Lcom/android/settings/wifi/ar;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/ar;-><init>(Lcom/android/settings/wifi/aq;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string v2, "wifi_show_wifi_required_info"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const v0, 0x7f10028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_1
    return-object v1
.end method

.method a(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v5, [I

    const v3, 0x7f010023

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 130
    const v2, 0x7f0902b5

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 134
    const/4 v2, 0x4

    const v3, 0x7f0902b3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    return-void
.end method

.method protected dg(I)V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 150
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->vH()V

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->dg(I)V

    .line 152
    return-void
.end method

.method protected j(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 143
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->vH()V

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/net/wifi/WifiConfiguration;)V

    .line 145
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1a40000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/aq;->mAdapter:Landroid/widget/ListAdapter;

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/android/settings/wifi/as;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/as;-><init>(Lcom/android/settings/wifi/aq;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 112
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected vm()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/aq;->awd:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->awd:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->awd:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->awd:Landroid/widget/TextView;

    const v1, 0x7f020165

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->awd:Landroid/widget/TextView;

    return-object v0
.end method

.method protected vr()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/aq;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    .line 167
    iget-boolean v1, p0, Lcom/android/settings/wifi/aq;->awe:Z

    if-eq v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/aq;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 169
    if-eqz v0, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/settings/wifi/aq;->awc:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 171
    iget-object v2, p0, Lcom/android/settings/wifi/aq;->awd:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 176
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/aq;->awe:Z

    .line 178
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/aq;->awd:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 174
    iget-object v2, p0, Lcom/android/settings/wifi/aq;->awc:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
