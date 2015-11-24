.class public Lcom/android/settings_ext/location/RecentAppFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "RecentAppFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/settings_ext/location/RecentAppFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/location/RecentAppFragment$1;-><init>(Lcom/android/settings_ext/location/RecentAppFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 44
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private qe()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ext/location/RecentAppFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/android/settings_ext/location/RecentLocationApps;

    invoke-virtual {p0}, Lcom/android/settings_ext/location/RecentAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ext/location/RecentLocationApps;-><init>(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {v1}, Lcom/android/settings_ext/location/RecentLocationApps;->qf()Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 53
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/location/RecentAppFragment;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/location/RecentAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 57
    const v2, 0x7f040074

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 58
    const v2, 0x7f0904b9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f060046

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/location/RecentAppFragment;->addPreferencesFromResource(I)V

    .line 32
    invoke-direct {p0}, Lcom/android/settings_ext/location/RecentAppFragment;->qe()V

    .line 33
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 67
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    const v1, 0x7f090d51

    invoke-interface {p1, v0, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_setting_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 72
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.permcenter.permissions.AppPermissionsTabActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ext/location/RecentAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
