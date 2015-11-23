.class public Lcom/android/settings/display/PaperModeSetAppsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaperModeSetAppsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private VL:Ljava/util/HashMap;

.field private VM:Landroid/preference/PreferenceCategory;

.field private VN:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private te:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/display/A;

    invoke-direct {v0, p0}, Lcom/android/settings/display/A;-><init>(Lcom/android/settings/display/PaperModeSetAppsFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->te:Landroid/content/BroadcastReceiver;

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PaperModeSetAppsFragment;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->fJ()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PaperModeSetAppsFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PaperModeSetAppsFragment;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VM:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VN:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VM:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v1, v2

    .line 109
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VM:Landroid/preference/PreferenceCategory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VN:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 116
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VN:Landroid/preference/PreferenceCategory;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VL:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private fJ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getScreenPaperModePkgList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VL:Ljava/util/HashMap;

    .line 140
    new-instance v1, Lcom/android/settings/display/B;

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/display/B;-><init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroid/app/FragmentManager;Ljava/util/List;)V

    const v0, 0x7f090c54

    invoke-virtual {v1, v0}, Lcom/android/settings/display/B;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    const v0, 0x7f060059

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "paper_mode_pkg_list"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VM:Landroid/preference/PreferenceCategory;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "paper_mode_off_pkg_list"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VN:Landroid/preference/PreferenceCategory;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->te:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->te:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 76
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 94
    instance-of v1, p1, Lcom/android/settings/display/D;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VL:Ljava/util/HashMap;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->VL:Ljava/util/HashMap;

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$System;->setScreenPaperModePkgList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->fJ()V

    .line 82
    return-void
.end method
