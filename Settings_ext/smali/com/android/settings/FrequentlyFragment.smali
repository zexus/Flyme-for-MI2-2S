.class public Lcom/android/settings_ext/FrequentlyFragment;
.super Lcom/android/settings_ext/BasePreferenceFragment;
.source "FrequentlyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ext/BasePreferenceFragment;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public Z()V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings_ext/BasePreferenceFragment;->Z()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/MiuiSettings;

    .line 97
    new-instance v1, Lcom/android/settings_ext/eD;

    iget-object v2, p0, Lcom/android/settings_ext/FrequentlyFragment;->bY:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSettings;->fs()Lcom/android/settings_ext/accounts/AuthenticatorHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings_ext/eD;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings_ext/accounts/AuthenticatorHelper;Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {v1}, Lcom/android/settings_ext/eD;->resume()V

    .line 100
    return-void
.end method

.method public aa()V
    .locals 8

    .prologue
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/MiuiSettings;

    .line 78
    invoke-static {v0}, Lcom/android/settings_ext/provider/b;->bl(Landroid/content/Context;)[I

    move-result-object v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 81
    invoke-static {}, Lcom/android/settings_ext/cz;->dK()[I

    move-result-object v4

    .line 82
    array-length v5, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget v6, v3, v1

    .line 83
    if-ltz v6, :cond_0

    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 84
    aget v6, v4, v6

    invoke-virtual {v0, v6, v2}, Lcom/android/settings_ext/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settings_ext/MiuiSettings;->c(Ljava/util/List;)V

    .line 90
    iput-object v2, p0, Lcom/android/settings_ext/FrequentlyFragment;->bY:Ljava/util/List;

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings_ext/BasePreferenceFragment;->onResume()V

    .line 68
    sget-boolean v0, Lcom/android/settings_ext/provider/b;->ahy:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->Z()V

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ext/provider/b;->ahy:Z

    .line 72
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_screen_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    const v1, 0x7f090b96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings_ext/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/cx;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/cx;-><init>(Lcom/android/settings_ext/FrequentlyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 63
    return-void
.end method
