.class public Lcom/android/settings_ext/location/LocationSettings;
.super Lcom/android/settings_ext/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings_ext/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private injector:Lcom/android/settings_ext/location/SettingsInjector;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mValidListener:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/location/LocationSettings;)Lcom/android/settings_ext/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/location/LocationSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->injector:Lcom/android/settings_ext/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 225
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 227
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings_ext/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings_ext/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->injector:Lcom/android/settings_ext/location/SettingsInjector;

    .line 230
    iget-object v4, p0, Lcom/android/settings_ext/location/LocationSettings;->injector:Lcom/android/settings_ext/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings_ext/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 233
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings_ext/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/location/LocationSettings$3;-><init>(Lcom/android/settings_ext/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 248
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 253
    :goto_1
    return-void

    .line 230
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 251
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings_ext/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/location/LocationSettings$1;-><init>(Lcom/android/settings_ext/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 138
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 140
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SettingsActivity;

    .line 144
    .local v0, "activity":Lcom/android/settings_ext/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 145
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 148
    :cond_0
    const v6, 0x7f060023

    invoke-virtual {p0, v6}, Lcom/android/settings_ext/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 151
    invoke-direct {p0, v5}, Lcom/android/settings_ext/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 152
    const-string v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ext/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 153
    iget-object v6, p0, Lcom/android/settings_ext/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings_ext/location/LocationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/settings_ext/location/LocationSettings$2;-><init>(Lcom/android/settings_ext/location/LocationSettings;Lcom/android/settings_ext/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ext/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 167
    new-instance v3, Lcom/android/settings_ext/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/android/settings_ext/location/RecentLocationApps;-><init>(Lcom/android/settings_ext/SettingsActivity;)V

    .line 168
    .local v3, "recentApps":Lcom/android/settings_ext/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/android/settings_ext/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 169
    .local v4, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 170
    iget-object v6, p0, Lcom/android/settings_ext/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/android/settings_ext/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 180
    :goto_0
    const/4 v2, 0x0

    .line 184
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v6, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ext/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_share_location"

    iget-object v8, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    const/4 v2, 0x1

    .line 188
    :cond_1
    invoke-direct {p0, v0, v5, v2}, Lcom/android/settings_ext/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationSettings;->refreshLocationMode()V

    .line 191
    return-object v5

    .line 173
    .end local v2    # "lockdownOnLocationAccess":Z
    :cond_2
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, "banner":Landroid/preference/Preference;
    const v6, 0x7f040056

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 175
    const v6, 0x7f090451

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 176
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 177
    iget-object v6, p0, Lcom/android/settings_ext/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings_ext/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 198
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    iput-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 257
    const v0, 0x7f0908e1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings_ext/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SettingsActivity;

    .line 89
    .local v0, "activity":Lcom/android/settings_ext/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 91
    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsActivity;->getSwitchBar()Lcom/android/settings_ext/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    .line 92
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ext/widget/SwitchBar;->getSwitch()Lcom/android/settings_ext/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 93
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ext/widget/SwitchBar;->show()V

    .line 94
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;->onDestroyView()V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/SwitchBar;->hide()V

    .line 100
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 285
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/settings_ext/widget/SwitchBar;->setEnabled(Z)V

    .line 286
    iget-object v4, p0, Lcom/android/settings_ext/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 289
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 291
    iget-boolean v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ext/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ext/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 295
    iget-boolean v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ext/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ext/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 301
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings_ext/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 302
    const v1, 0x7f09044a

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ext/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 315
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->injector:Lcom/android/settings_ext/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings_ext/location/SettingsInjector;->reloadStatusMessages()V

    .line 316
    return-void

    .line 264
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f09044f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f09044e

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f09044d

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 273
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f09044c

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 282
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_4
    move v3, v2

    .line 285
    goto :goto_2

    :cond_5
    move v3, v2

    .line 286
    goto :goto_3

    .line 305
    :cond_6
    if-eqz v0, :cond_7

    .line 306
    const v2, 0x7f0909b7

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 308
    :cond_7
    const v1, 0x7f0909b8

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ext/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ext/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ext/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ext/location/LocationSettings;->mValidListener:Z

    .line 126
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;->onPause()V

    .line 127
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings_ext/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 106
    iget-boolean v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ext/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/location/LocationSettings;->mValidListener:Z

    .line 110
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 323
    if-eqz p2, :cond_0

    .line 324
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/location/LocationSettings;->setLocationMode(I)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
