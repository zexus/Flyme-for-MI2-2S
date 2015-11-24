.class public Lcom/android/settings_ext/TrustAgentSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private cP:Lcom/android/internal/widget/LockPatternUtils;

.field private yy:Landroid/util/ArrayMap;

.field private final yz:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->yz:Landroid/util/ArraySet;

    .line 44
    return-void
.end method

.method private hj()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->yy:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustAgentSettings;->hm()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->yy:Landroid/util/ArrayMap;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/TrustAgentSettings;->hk()V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustAgentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "trust_agents"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 85
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 86
    iget-object v1, p0, Lcom/android/settings_ext/TrustAgentSettings;->yy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v2, v3

    .line 87
    :goto_0
    if-ge v2, v5, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/settings_ext/TrustAgentSettings;->yy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/gG;

    .line 89
    new-instance v6, Landroid/preference/SwitchPreference;

    invoke-direct {v6, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object v6, v1, Lcom/android/settings_ext/gG;->yB:Landroid/preference/SwitchPreference;

    .line 91
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 92
    iget-object v7, v1, Lcom/android/settings_ext/gG;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v7, v1, Lcom/android/settings_ext/gG;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 95
    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v7, p0, Lcom/android/settings_ext/TrustAgentSettings;->yz:Landroid/util/ArraySet;

    iget-object v8, v1, Lcom/android/settings_ext/gG;->yA:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 97
    iget-object v1, v1, Lcom/android/settings_ext/gG;->yB:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 87
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method private hk()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings_ext/TrustAgentSettings;->yz:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_0
    return-void
.end method

.method private hl()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings_ext/TrustAgentSettings;->yz:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;)V

    .line 110
    return-void
.end method


# virtual methods
.method hm()Landroid/util/ArrayMap;
    .locals 9

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    const/16 v1, 0x80

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 118
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 121
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    .line 122
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 123
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 121
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v0, v2}, Lcom/android/settings_ext/gH;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    invoke-static {v0}, Lcom/android/settings_ext/gH;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    .line 126
    new-instance v7, Lcom/android/settings_ext/gG;

    invoke-direct {v7}, Lcom/android/settings_ext/gG;-><init>()V

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings_ext/gG;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings_ext/gG;->icon:Landroid/graphics/drawable/Drawable;

    .line 129
    iput-object v6, v7, Lcom/android/settings_ext/gG;->yA:Landroid/content/ComponentName;

    .line 130
    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 132
    :cond_2
    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/TrustAgentSettings;->addPreferencesFromResource(I)V

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 137
    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->yy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v2, v1

    .line 139
    :goto_0
    if-ge v2, v3, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/settings_ext/TrustAgentSettings;->yy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gG;

    .line 141
    iget-object v4, v0, Lcom/android/settings_ext/gG;->yB:Landroid/preference/SwitchPreference;

    if-ne v4, p1, :cond_2

    .line 142
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/settings_ext/TrustAgentSettings;->yz:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/settings_ext/gG;->yA:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings_ext/TrustAgentSettings;->yz:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/settings_ext/gG;->yA:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ext/TrustAgentSettings;->hl()V

    .line 150
    const/4 v0, 0x1

    .line 154
    :goto_2
    return v0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/TrustAgentSettings;->yz:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/settings_ext/gG;->yA:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 154
    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ext/TrustAgentSettings;->hj()V

    .line 72
    return-void
.end method
