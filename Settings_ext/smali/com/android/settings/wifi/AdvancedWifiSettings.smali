.class public Lcom/android/settings_ext/wifi/AdvancedWifiSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private asq:Landroid/net/NetworkScoreManager;

.field private asr:Landroid/content/IntentFilter;

.field private ass:Landroid/app/Dialog;

.field private ast:Landroid/preference/Preference;

.field private asu:Landroid/preference/Preference;

.field private asv:Landroid/preference/PreferenceCategory;

.field private hD:Landroid/net/wifi/WifiManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/android/settings_ext/wifi/b;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/b;-><init>(Lcom/android/settings_ext/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/preference/Preference;I)V
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 370
    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method private a(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 349
    if-eqz p2, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b001c

    .line 353
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 354
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 355
    aget-object v3, v1, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 357
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    :goto_2
    return-void

    .line 351
    :cond_0
    const v0, 0x7f0b001b

    goto :goto_0

    .line 354
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    const-string v0, "AdvancedWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sleep policy value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->tS()V

    return-void
.end method

.method private hW()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    const-string v0, "wifi_scan_always_available"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v1, "com.android.certinstaller"

    const-string v4, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "install_as_uid"

    const/16 v4, 0x3f2

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v1, "install_credentials"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 223
    invoke-static {v4}, Lcom/android/settings_ext/wifi/WifiSettings;->bI(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v5

    .line 226
    const-string v0, "wifi_assistant"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 227
    if-eqz v5, :cond_b

    .line 228
    invoke-static {v4}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    if-eqz v1, :cond_a

    move v1, v2

    .line 229
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902a7

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    aput-object v5, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 239
    :cond_1
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ext/Settings$WifiP2pSettingsActivity;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const-string v1, "wifi_direct"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 263
    const-string v0, "frequency_band"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 265
    iget-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 266
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    iget-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v1

    .line 268
    const/4 v5, -0x1

    if-eq v1, v5, :cond_c

    .line 269
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->a(Landroid/preference/Preference;I)V

    .line 281
    :cond_2
    :goto_3
    const-string v0, "sleep_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 282
    if-eqz v0, :cond_4

    .line 283
    invoke-static {v4}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 286
    :cond_3
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_sleep_policy"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 290
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 296
    :cond_4
    const-string v0, "priority_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 298
    if-eqz v0, :cond_5

    .line 299
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_f

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_priority_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_e

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 303
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    :cond_5
    :goto_5
    const-string v0, "connect_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 310
    if-eqz v0, :cond_6

    .line 311
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_10

    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_connect_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 314
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    :cond_6
    :goto_6
    const-string v0, "select_ssid_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 322
    if-eqz v0, :cond_7

    .line 323
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_11

    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_select_ssid_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 326
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    :cond_7
    :goto_7
    const-string v0, "dialog_remind_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 335
    if-eqz v0, :cond_8

    .line 336
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_13

    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_dialog_remind_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_12

    :goto_8
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    :cond_8
    :goto_9
    return-void

    :cond_9
    move v1, v3

    .line 207
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 228
    goto/16 :goto_1

    .line 234
    :cond_b
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 272
    :cond_c
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "Failed to fetch frequency band"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 275
    :cond_d
    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_e
    move v1, v3

    .line 300
    goto/16 :goto_4

    .line 305
    :cond_f
    const-string v0, "priority_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->K(Ljava/lang/String;)V

    .line 306
    const-string v0, "priority_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->K(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 318
    :cond_10
    const-string v0, "connect_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->K(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 330
    :cond_11
    const-string v0, "select_ssid_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->K(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    move v2, v3

    .line 337
    goto :goto_8

    .line 342
    :cond_13
    const-string v0, "dialog_remind_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->K(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private tS()V
    .locals 6

    .prologue
    const v5, 0x7f0903f6

    const/4 v4, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 492
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 494
    const-string v2, "mac_address"

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 495
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 496
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 500
    const-string v0, "current_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 501
    invoke-static {v1}, Lcom/android/settings_ext/hl;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 502
    if-nez v0, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 505
    return-void

    .line 495
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private tT()V
    .locals 1

    .prologue
    .line 531
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    :cond_0
    return-void
.end method

.method private tU()V
    .locals 1

    .prologue
    .line 537
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 541
    :cond_0
    return-void
.end method

.method private tV()V
    .locals 2

    .prologue
    .line 558
    new-instance v0, Lcom/android/settings_ext/wifi/K;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/wifi/K;-><init>(Landroid/content/Context;)V

    .line 559
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/K;->setMode(I)V

    .line 560
    const v1, 0x7f090b7c

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/K;->setTitle(I)V

    .line 561
    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->ass:Landroid/app/Dialog;

    .line 562
    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/K;->show()V

    .line 563
    return-void
.end method

.method private tW()V
    .locals 2

    .prologue
    .line 566
    new-instance v0, Lcom/android/settings_ext/wifi/K;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/wifi/K;-><init>(Landroid/content/Context;)V

    .line 567
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/K;->setMode(I)V

    .line 568
    const v1, 0x7f090b80

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/K;->setTitle(I)V

    .line 569
    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->ass:Landroid/app/Dialog;

    .line 570
    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/K;->show()V

    .line 571
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asr:Landroid/content/IntentFilter;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asq:Landroid/net/NetworkScoreManager;

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f0600a2

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 118
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->ast:Landroid/preference/Preference;

    .line 119
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asu:Landroid/preference/Preference;

    .line 120
    const-string v0, "wapi_cert_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asv:Landroid/preference/PreferenceCategory;

    .line 122
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 165
    :pswitch_0
    new-instance v0, Lcom/android/settings_ext/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 167
    :pswitch_1
    new-instance v0, Lcom/android/settings_ext/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->ass:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->ass:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 179
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 180
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 409
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 411
    const-string v1, "frequency_band"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 414
    iget-object v6, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 415
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->a(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    :goto_0
    const-string v1, "sleep_policy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 448
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_sleep_policy"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->a(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    :cond_1
    const-string v1, "priority_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 460
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 461
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_priority_type"

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    :cond_2
    :goto_2
    const-string v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->ast:Landroid/preference/Preference;

    .line 485
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asu:Landroid/preference/Preference;

    move v3, v2

    .line 487
    :goto_3
    return v3

    .line 416
    :catch_0
    move-exception v1

    .line 417
    const v1, 0x7f090313

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 421
    :cond_3
    const-string v1, "wifi_assistant"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 422
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 423
    iget-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asq:Landroid/net/NetworkScoreManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move v3, v2

    .line 424
    goto :goto_3

    .line 427
    :cond_4
    invoke-static {v4}, Lcom/android/settings_ext/wifi/WifiSettings;->bI(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    .line 428
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 429
    iget-object v7, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 433
    iget-object v7, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :cond_5
    const-string v7, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v7, "packageName"

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 451
    :catch_1
    move-exception v1

    .line 452
    const v1, 0x7f0902ae

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_6
    move v1, v3

    .line 461
    goto :goto_1

    .line 463
    :cond_7
    const-string v1, "connect_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 464
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_connect_type"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    const-string v1, "connect_type"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 468
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 470
    :cond_8
    const-string v1, "select_ssid_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_select_ssid_type"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    const-string v1, "select_ssid_type"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 475
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 477
    :cond_9
    const-string v1, "dialog_remind_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_dialog_remind_type"

    if-eqz v1, :cond_a

    move v3, v2

    :cond_a
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 547
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 548
    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v2

    .line 549
    :cond_1
    const-string v1, "wapi_cert_install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->tV()V

    goto :goto_0

    .line 551
    :cond_2
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->tW()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const v5, 0x7f090c6a

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v6

    :cond_0
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    :goto_0
    return v6

    .line 381
    :cond_1
    const-string v1, "wifi_scan_always_available"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    :cond_2
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 385
    :cond_3
    const-string v1, "wps_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 388
    :cond_4
    const-string v1, "wps_pin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 389
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 390
    const-string v0, "wps_setup"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 393
    :cond_5
    const-string v1, "priority_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiPrioritySettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 401
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->hW()V

    .line 140
    const-string v0, "support_wapi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->tT()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->tU()V

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asr:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->tS()V

    .line 153
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asv:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asv:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    iput-object v2, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->ast:Landroid/preference/Preference;

    .line 147
    iput-object v2, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asu:Landroid/preference/Preference;

    .line 148
    iput-object v2, p0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->asv:Landroid/preference/PreferenceCategory;

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStart()V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    const v1, 0x7f090310

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 191
    :cond_0
    return-void
.end method
