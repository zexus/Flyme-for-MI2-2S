.class public Lcom/android/settings/SettingsFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "SettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public Z()V
    .locals 5

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->Z()V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 36
    new-instance v1, Lcom/android/settings/eD;

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->bY:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->fs()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/eD;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->ab()V

    .line 40
    invoke-virtual {v1}, Lcom/android/settings/eD;->resume()V

    .line 41
    return-void
.end method

.method protected ac()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f06007e

    return v0
.end method
