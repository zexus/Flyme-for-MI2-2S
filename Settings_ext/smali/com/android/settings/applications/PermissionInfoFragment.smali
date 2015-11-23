.class public Lcom/android/settings/applications/PermissionInfoFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PermissionInfoFragment.java"


# instance fields
.field private HF:Landroid/preference/PreferenceCategory;

.field private HG:Landroid/preference/PreferenceCategory;

.field private HH:Landroid/preference/PreferenceCategory;

.field private HI:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

.field private tl:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 160
    return-void
.end method

.method public static a(ILandroid/content/Context;)Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;
    .locals 9

    .prologue
    .line 91
    new-instance v1, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-direct {v1}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;-><init>()V

    .line 92
    const/4 v0, -0x1

    if-le p0, v0, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 98
    invoke-static {p0, v0, v4}, Lcom/android/settings/applications/PermissionInfoFragment;->a(ILjava/util/Set;Landroid/content/pm/PackageManager;)V

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 101
    invoke-virtual {v0, v4}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_0

    .line 103
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {v0, v4}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 105
    if-eqz v7, :cond_0

    .line 106
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    iget-object v8, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 108
    invoke-static {v1}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->a(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-static {v1}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->b(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {v1}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->c(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_3
    return-object v1
.end method

.method private static a(ILjava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 129
    :cond_0
    return-void

    .line 126
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 127
    invoke-static {v3, p1, p2}, Lcom/android/settings/applications/PermissionInfoFragment;->a(Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 3

    .prologue
    .line 134
    const/16 v0, 0x1000

    :try_start_0
    invoke-virtual {p2, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/settings/applications/PermissionInfoFragment;->a([Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v0, "PermissionInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V
    .locals 6

    .prologue
    .line 78
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040067

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :cond_1
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 145
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 158
    :cond_0
    return-void

    .line 148
    :cond_1
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 150
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_2

    .line 152
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v3

    .line 155
    const-string v3, "PermissionInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unknown permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    const-string v1, "extra_package_application"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->tl:Landroid/content/pm/ApplicationInfo;

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->tl:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "PermissionInfoActivity"

    const-string v1, "onCreate: mAppInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->finish()V

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->tl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/PermissionInfoFragment;->a(ILandroid/content/Context;)Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HI:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    .line 61
    const-string v0, "privacy_relative"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HF:Landroid/preference/PreferenceCategory;

    .line 62
    const-string v0, "security_relative"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HG:Landroid/preference/PreferenceCategory;

    .line 63
    const-string v0, "other_relative"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HH:Landroid/preference/PreferenceCategory;

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HI:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-static {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->a(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HF:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/PermissionInfoFragment;->a(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HI:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-static {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->b(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HG:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/PermissionInfoFragment;->a(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HI:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-static {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->c(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->HH:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/PermissionInfoFragment;->a(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->tl:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    const v2, 0x7f090c37

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/PermissionInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
