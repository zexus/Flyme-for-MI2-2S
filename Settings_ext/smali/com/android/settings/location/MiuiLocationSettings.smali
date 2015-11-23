.class public Lcom/android/settings/location/MiuiLocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# instance fields
.field private MI:Z

.field private acD:Landroid/preference/CheckBoxPreference;

.field private acE:Landroid/preference/Preference;

.field private acM:Landroid/preference/CheckBoxPreference;

.field private acN:Landroid/preference/Preference;

.field private acO:Landroid/preference/CheckBoxPreference;

.field private acP:Landroid/preference/Preference;

.field private acQ:Landroid/preference/CheckBoxPreference;

.field private acR:Landroid/location/LocationManager;

.field private acS:Z

.field private acT:Landroid/content/SharedPreferences;

.field private acU:Landroid/content/SharedPreferences$Editor;

.field private acV:Z

.field private acm:Landroid/location/LocationPolicyManager;

.field private acu:Lcom/android/settings/location/RadioButtonPreference;

.field private acv:Lcom/android/settings/location/RadioButtonPreference;

.field private acw:Lcom/android/settings/location/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->MI:Z

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 318
    const-string v0, "location_services"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 320
    new-instance v1, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v1, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->qh()Ljava/util/List;

    move-result-object v2

    .line 323
    new-instance v3, Lcom/android/settings/location/MiuiLocationSettings$6;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/location/MiuiLocationSettings$6;-><init>(Lcom/android/settings/location/MiuiLocationSettings;Lcom/android/settings/location/SettingsInjector;)V

    iput-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 339
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/MiuiLocationSettings;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private a(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    if-nez p1, :cond_2

    .line 449
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 456
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_4

    .line 457
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/android/settings/location/MiuiLocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/MiuiLocationSettings$1;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 152
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acP:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/location/LocationPolicyManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acm:Landroid/location/LocationPolicyManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acR:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acQ:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private gC()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 162
    :cond_0
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 164
    const-string v0, "location_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    .line 165
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v0, "location_mode"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    .line 168
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings/location/MiuiLocationSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/location/MiuiLocationSettings$2;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.location.gps"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acV:Z

    .line 181
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acV:Z

    if-nez v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    .line 193
    :goto_0
    const-string v0, "support_agps"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acS:Z

    .line 194
    const-string v0, "assisted_gps"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acM:Landroid/preference/CheckBoxPreference;

    .line 195
    const-string v0, "agps_roaming"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acQ:Landroid/preference/CheckBoxPreference;

    .line 196
    iget-object v4, p0, Lcom/android/settings/location/MiuiLocationSettings;->acQ:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/location/MiuiLocationSettings;->acR:Landroid/location/LocationManager;

    invoke-virtual {v0, v5}, Lcom/android/settings/eK;->a(Landroid/location/LocationManager;)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    const-string v0, "assisted_gps_params"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acN:Landroid/preference/Preference;

    .line 198
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acS:Z

    if-nez v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acN:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acM:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 209
    iget-object v4, p0, Lcom/android/settings/location/MiuiLocationSettings;->acM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "assisted_gps_enabled"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    :cond_2
    const-string v0, "background_location_toggle"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    .line 214
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    :goto_5
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/location/MiuiLocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/location/MiuiLocationSettings$3;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 230
    const-string v0, "background_location_control"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acP:Landroid/preference/Preference;

    .line 231
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acP:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/settings/location/MiuiLocationSettings;->setHasOptionsMenu(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->qd()V

    .line 237
    return-object v3

    .line 185
    :cond_3
    const-string v0, "high_accuracy"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    .line 186
    const-string v0, "battery_saving"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    .line 187
    const-string v0, "sensors_only"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    .line 188
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 193
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 196
    goto/16 :goto_2

    .line 202
    :cond_6
    const-string v0, "support_agps_paras"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 204
    :cond_7
    const-string v0, "support_agps_roaming"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acN:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 209
    goto/16 :goto_4

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/location/MiuiLocationSettings;->acm:Landroid/location/LocationPolicyManager;

    invoke-virtual {v4}, Landroid/location/LocationPolicyManager;->getRestrictBackground()Z

    move-result v4

    if-nez v4, :cond_a

    move v2, v1

    :cond_a
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5
.end method


# virtual methods
.method public ao()I
    .locals 1

    .prologue
    .line 348
    const v0, 0x7f090942

    return v0
.end method

.method public b(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 2

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 435
    const/4 v0, 0x3

    .line 441
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->bT(I)V

    .line 442
    return-void

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 437
    const/4 v0, 0x2

    goto :goto_0

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 439
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    if-eqz p1, :cond_2

    move v0, v1

    .line 357
    :goto_0
    iget-object v4, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    if-nez p2, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 359
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 361
    iget-boolean v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->MI:Z

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 365
    iget-boolean v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->MI:Z

    if-eqz v3, :cond_1

    .line 366
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    if-nez v3, :cond_4

    .line 406
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 356
    goto :goto_0

    :cond_3
    move v3, v2

    .line 357
    goto :goto_1

    .line 374
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_3
    if-eqz p1, :cond_5

    .line 396
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acU:Landroid/content/SharedPreferences$Editor;

    const-string v4, "last_mode"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 397
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    :cond_5
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 402
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 403
    :goto_5
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_2

    .line 376
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    const v4, 0x7f0904b7

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 377
    invoke-direct {p0, v5}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    .line 380
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    const v4, 0x7f0904b6

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 381
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acw:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    .line 384
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    const v4, 0x7f0904b5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 385
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acv:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    .line 388
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acE:Landroid/preference/Preference;

    const v4, 0x7f0904b4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 389
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acu:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    :cond_6
    move v0, v2

    .line 400
    goto :goto_4

    :cond_7
    move v1, v2

    .line 402
    goto :goto_5

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acR:Landroid/location/LocationManager;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acm:Landroid/location/LocationPolicyManager;

    .line 120
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mContext:Landroid/content/Context;

    const-string v1, "location_last_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acT:Landroid/content/SharedPreferences;

    .line 121
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acT:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acU:Landroid/content/SharedPreferences$Editor;

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->MI:Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acD:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return v1

    :cond_0
    move-object v0, p2

    .line 417
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acT:Landroid/content/SharedPreferences;

    const-string v4, "last_mode"

    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acV:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->bT(I)V

    .line 421
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acm:Landroid/location/LocationPolicyManager;

    invoke-virtual {v0}, Landroid/location/LocationPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 426
    :goto_3
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acP:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move v1, v2

    .line 428
    goto :goto_0

    .line 418
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 421
    goto :goto_2

    .line 423
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/location/MiuiLocationSettings;->bT(I)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->acO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 243
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->acM:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 244
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->acM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const-string v2, "assisted_gps_supl_host"

    invoke-static {v5, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "assisted_gps_supl_port"

    invoke-static {v5, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 249
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 250
    new-instance v6, Ljava/io/File;

    const-string v3, "/etc/gps.conf"

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 253
    const-string v4, "assisted_gps_supl_host"

    const-string v6, "SUPL_HOST"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    const-string v4, "assisted_gps_supl_port"

    const-string v6, "SUPL_PORT"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    if-eqz v3, :cond_1

    .line 263
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    :cond_1
    :goto_0
    const-string v2, "assisted_gps_enabled"

    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v5, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    :goto_1
    return v1

    .line 257
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 258
    :goto_2
    :try_start_3
    const-string v4, "LocationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    if-eqz v3, :cond_1

    .line 263
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 264
    :catch_1
    move-exception v2

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_3

    .line 263
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 265
    :cond_3
    :goto_4
    throw v0

    .line 272
    :cond_4
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->acQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 273
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->acQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/location/MiuiLocationSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/location/MiuiLocationSettings$5;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/location/MiuiLocationSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/location/MiuiLocationSettings$4;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090df6

    invoke-virtual {p0, v2}, Lcom/android/settings/location/MiuiLocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090df7

    invoke-virtual {p0, v2}, Lcom/android/settings/location/MiuiLocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 298
    :cond_5
    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->acR:Landroid/location/LocationManager;

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/eK;->a(Landroid/location/LocationManager;I)V

    goto :goto_1

    .line 301
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1

    .line 264
    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 261
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 257
    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->MI:Z

    .line 128
    invoke-direct {p0}, Lcom/android/settings/location/MiuiLocationSettings;->gC()Landroid/preference/PreferenceScreen;

    .line 129
    return-void
.end method
