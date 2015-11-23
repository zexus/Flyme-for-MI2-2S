.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private MI:Z

.field private acD:Landroid/preference/CheckBoxPreference;

.field private acE:Landroid/preference/Preference;

.field private acF:Landroid/preference/PreferenceCategory;

.field private acG:Lcom/android/settings/location/SettingsInjector;

.field private acH:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acG:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 206
    const-string v0, "location_services"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 208
    new-instance v1, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v1, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->acG:Lcom/android/settings/location/SettingsInjector;

    .line 209
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acG:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->qh()Ljava/util/List;

    move-result-object v1

    .line 211
    new-instance v2, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 226
    invoke-direct {p0, v1, v0}, Lcom/android/settings/location/LocationSettings;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 139
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method private gC()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 151
    :cond_0
    const v1, 0x7f060047

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 154
    const-string v1, "location_toggle"

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    .line 155
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    const-string v1, "location_mode"

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    .line 159
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    new-instance v3, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/gh;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.location.gps"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->acH:Z

    .line 172
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->acH:Z

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_1
    const-string v1, "recent_location_requests"

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->acF:Landroid/preference/PreferenceCategory;

    .line 179
    new-instance v1, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v1, v0}, Lcom/android/settings/location/RecentLocationApps;-><init>(Landroid/app/Activity;)V

    .line 180
    invoke-virtual {v1}, Lcom/android/settings/location/RecentLocationApps;->qf()Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->acF:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/location/LocationSettings;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 192
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/settings/location/LocationSettings;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->qd()V

    .line 195
    return-object v2

    .line 185
    :cond_2
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 186
    const v3, 0x7f040074

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 187
    const v3, 0x7f0904b9

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 188
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->acF:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public ao()I
    .locals 1

    .prologue
    .line 235
    const v0, 0x7f090942

    return v0
.end method

.method public f(IZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 260
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 265
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    if-nez p2, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 266
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acF:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 271
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->MI:Z

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->MI:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acG:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector;->qi()V

    .line 286
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    const v3, 0x7f0904b7

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    const v3, 0x7f0904b6

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    const v3, 0x7f0904b5

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acE:Landroid/preference/Preference;

    const v3, 0x7f0904b4

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 260
    goto :goto_1

    :cond_3
    move v3, v2

    .line 265
    goto :goto_2

    :cond_4
    move v1, v2

    .line 266
    goto :goto_3

    .line 240
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
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->MI:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->MI:Z

    .line 127
    :cond_1
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 128
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 299
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->acH:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->bT(I)V

    :goto_2
    move v0, v1

    .line 308
    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->bT(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->MI:Z

    .line 108
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->gC()Landroid/preference/PreferenceScreen;

    .line 109
    return-void
.end method
