.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/k;


# static fields
.field public static final gG:Lcom/android/settings/search/l;

.field private static final wq:Landroid/content/Intent;

.field private static final wr:[Ljava/lang/String;


# instance fields
.field private cH:Lcom/android/settings/ap;

.field private cI:Landroid/app/admin/DevicePolicyManager;

.field private cJ:Landroid/security/KeyStore;

.field private cP:Lcom/android/internal/widget/LockPatternUtils;

.field private qQ:Landroid/preference/CheckBoxPreference;

.field private qR:Landroid/preference/CheckBoxPreference;

.field private rh:Landroid/preference/CheckBoxPreference;

.field private uf:Z

.field private ws:Landroid/preference/ListPreference;

.field private wt:Landroid/preference/CheckBoxPreference;

.field private wu:Landroid/preference/CheckBoxPreference;

.field private wv:Landroid/preference/Preference;

.field private ww:Landroid/preference/CheckBoxPreference;

.field private wx:Landroid/content/DialogInterface;

.field private wy:Landroid/preference/Preference;

.field private wz:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->wq:Landroid/content/Intent;

    .line 115
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SecuritySettings;->wr:[Ljava/lang/String;

    .line 797
    new-instance v0, Lcom/android/settings/gd;

    invoke-direct {v0}, Lcom/android/settings/gd;-><init>()V

    sput-object v0, Lcom/android/settings/SecuritySettings;->gG:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 800
    return-void
.end method

.method private I(Z)V
    .locals 3

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 493
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 183
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 186
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const v0, 0x7f060075

    .line 210
    :goto_0
    return v0

    .line 189
    :cond_1
    const v0, 0x7f060071

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const v0, 0x7f06006e

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    goto :goto_0

    .line 197
    :sswitch_0
    const v0, 0x7f060078

    .line 198
    goto :goto_0

    .line 201
    :sswitch_1
    const v0, 0x7f06007a

    .line 202
    goto :goto_0

    .line 206
    :sswitch_2
    const v0, 0x7f060077

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 464
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 465
    sget-object v0, Lcom/android/settings/SecuritySettings;->wq:Landroid/content/Intent;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 467
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v4

    .line 468
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 469
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 470
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 471
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_1

    .line 469
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 472
    :cond_1
    invoke-static {v0, p0}, Lcom/android/settings/gH;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    invoke-static {p0, v0}, Lcom/android/settings/gH;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/gI;

    move-result-object v5

    .line 475
    iget-object v6, v5, Lcom/android/settings/gI;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/android/settings/gH;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/android/settings/gI;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_2
    return-object v2
.end method

.method static synthetic b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private gC()Landroid/preference/PreferenceScreen;
    .locals 12

    .prologue
    const v11, 0x7f090203

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 224
    :cond_0
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v6

    .line 231
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 235
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->uf:Z

    .line 237
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->uf:Z

    if-nez v0, :cond_1

    .line 239
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 251
    :cond_1
    :goto_1
    const-string v0, "support_device_encrypt"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->uf:Z

    if-eqz v0, :cond_2

    .line 253
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 255
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 263
    :cond_2
    :goto_2
    const-string v0, "security_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 265
    if-eqz v0, :cond_7

    .line 266
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1, v2}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v8

    move v2, v4

    .line 269
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 270
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/gI;

    .line 271
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 273
    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 274
    iget-object v10, v1, Lcom/android/settings/gI;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v10, v1, Lcom/android/settings/gI;->summary:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 278
    iget-object v1, v1, Lcom/android/settings/gI;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 279
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 283
    if-nez v7, :cond_3

    .line 284
    invoke-virtual {v9, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 269
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v4

    .line 235
    goto/16 :goto_0

    .line 244
    :cond_5
    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 258
    :cond_6
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_2

    .line 291
    :cond_7
    const-string v1, "lock_screen_unlock_show"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 292
    if-eqz v1, :cond_8

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "show_lock_before_unlock"

    invoke-static {v2, v7, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 297
    if-nez v2, :cond_12

    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    :cond_8
    const-string v1, "lock_after_timeout"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    .line 303
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    if-eqz v1, :cond_9

    .line 304
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->gF()V

    .line 305
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->gG()V

    .line 309
    :cond_9
    const-string v1, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->qQ:Landroid/preference/CheckBoxPreference;

    .line 313
    const-string v1, "visiblepattern"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->qR:Landroid/preference/CheckBoxPreference;

    .line 316
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    .line 318
    const-string v1, "trust_agent"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 322
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f090504

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    :cond_a
    const v1, 0x7f06006e

    if-ne v6, v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_b

    .line 331
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->qR:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 332
    const-string v1, "visiblepattern"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_b
    const v0, 0x7f060076

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 340
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 342
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 343
    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v0

    const-string v1, "sim_lock"

    invoke-virtual {v0, v5, v1}, Lcom/android/settings/eK;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 360
    :cond_c
    :goto_5
    const-string v0, "show_password"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->wt:Landroid/preference/CheckBoxPreference;

    .line 361
    const-string v0, "credentials_reset"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->wv:Landroid/preference/Preference;

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 365
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->cJ:Landroid/security/KeyStore;

    .line 366
    const-string v1, "no_config_credentials"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 367
    const-string v1, "credential_storage_type"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 369
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x7f090777

    .line 372
    :goto_6
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 382
    :goto_7
    const-string v1, "device_admin_category"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 384
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->ww:Landroid/preference/CheckBoxPreference;

    .line 386
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ww:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->gD()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 388
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ww:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/android/settings/SecuritySettings;->uf:Z

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 389
    const-string v2, "no_install_unknown_sources"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "no_install_apps"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 391
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ww:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 395
    :cond_e
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 396
    const-string v0, "app_ops_summary"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 397
    if-eqz v1, :cond_f

    .line 398
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    :cond_f
    const-string v0, "advanced_security"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 405
    if-eqz v0, :cond_10

    .line 406
    const-string v2, "manage_trust_agents"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_10

    .line 408
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 413
    :cond_10
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 414
    const-string v0, "upload_debug_log"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->wu:Landroid/preference/CheckBoxPreference;

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->bn(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/settings/search/e;->b(Ljava/lang/String;ZZ)V

    move v0, v4

    .line 423
    :goto_8
    sget-object v2, Lcom/android/settings/SecuritySettings;->wr:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 424
    sget-object v2, Lcom/android/settings/SecuritySettings;->wr:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_11

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 423
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    move v2, v4

    .line 297
    goto/16 :goto_4

    .line 346
    :cond_13
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->uf:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_15

    .line 347
    :cond_14
    const-string v0, "sim_lock"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 350
    :cond_15
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v3, :cond_16

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_c

    .line 354
    :cond_16
    const-string v0, "sim_lock"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 369
    :cond_17
    const v1, 0x7f090778

    goto/16 :goto_6

    .line 374
    :cond_18
    const-string v1, "credentials_management"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 376
    const-string v2, "credentials_reset"

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    const-string v2, "credentials_install"

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    const-string v2, "credential_storage_type"

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 429
    :cond_19
    const-string v0, "manage_notification_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->wy:Landroid/preference/Preference;

    .line 430
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wy:Landroid/preference/Preference;

    if-eqz v0, :cond_1a

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->e(Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 432
    if-nez v0, :cond_1b

    .line 433
    if-eqz v1, :cond_1a

    .line 434
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wy:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    :cond_1a
    :goto_9
    return-object v5

    .line 438
    :cond_1b
    if-nez v0, :cond_1c

    .line 439
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wy:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 442
    :cond_1c
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->wy:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0e000a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v2, v6, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method private gD()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private gE()V
    .locals 3

    .prologue
    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090469

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090514

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->wx:Landroid/content/DialogInterface;

    .line 510
    return-void
.end method

.method private gF()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 535
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->cI:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->cI:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 538
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    .line 540
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 544
    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->l(J)V

    .line 546
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 537
    goto :goto_0
.end method

.method private gG()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 552
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 553
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 555
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 556
    aget-object v7, v6, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 557
    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    move v2, v0

    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "trust_agent"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 564
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    const v5, 0x7f0901a2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v2, v3, v2

    aput-object v2, v6, v1

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    :goto_1
    return-void

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    const v4, 0x7f0901a1

    new-array v5, v10, [Ljava/lang/Object;

    aget-object v2, v3, v2

    aput-object v2, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private l(J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 573
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 575
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 576
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 577
    aget-object v6, v3, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 578
    cmp-long v6, v6, p1

    if-gtz v6, :cond_0

    .line 579
    aget-object v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v3

    if-eq v0, v2, :cond_3

    .line 584
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 586
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 589
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3

    .line 590
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ws:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 598
    return-void
.end method


# virtual methods
.method protected ao()I
    .locals 1

    .prologue
    .line 785
    const v0, 0x7f090943

    return v0
.end method

.method public fg()V
    .locals 3

    .prologue
    .line 789
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 790
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 792
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 704
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 705
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->fg()V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 711
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->cH:Lcom/android/settings/ap;

    invoke-virtual {v0}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 712
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 717
    :cond_2
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 718
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    goto :goto_0

    .line 724
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->gC()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wx:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    .line 515
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 516
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->I(Z)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->ww:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->ww:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 521
    :cond_0
    return-void

    .line 515
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 167
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->cI:Landroid/app/admin/DevicePolicyManager;

    .line 169
    new-instance v0, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->cH:Lcom/android/settings/ap;

    .line 171
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    .line 175
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 525
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 526
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wx:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wx:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 529
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 729
    .line 730
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 731
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->cH:Lcom/android/settings/ap;

    invoke-virtual {v3}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 732
    const-string v4, "lock_after_timeout"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 733
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 735
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->gG()V

    .line 780
    :cond_0
    :goto_1
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 741
    :cond_1
    const-string v4, "lockenabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 742
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 743
    :cond_2
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 744
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 745
    :cond_3
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 746
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 747
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 752
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 753
    new-instance v2, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 755
    const/16 v4, 0x7d

    invoke-virtual {v2, v4, v5, v5}, Lcom/android/settings/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 761
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 762
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 765
    :cond_5
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 766
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_1

    .line 767
    :cond_6
    const-string v3, "show_password"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 770
    :cond_8
    const-string v3, "toggle_install_applications"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 772
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->ww:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 773
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->gE()V

    move v1, v0

    .line 775
    goto/16 :goto_1

    .line 777
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->I(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 648
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 649
    const-string v3, "unlock_set_or_change"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 654
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v1, "com.android.settings.MiuiSecuritySettings"

    const/16 v2, 0x7b

    invoke-virtual {p0, p0, v1, v2, v0}, Lcom/android/settings/SecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 695
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 657
    :cond_1
    const-string v3, "biometric_weak_improve_matching"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 658
    new-instance v0, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 660
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/settings/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->fg()V

    goto :goto_0

    .line 668
    :cond_2
    const-string v3, "trust_agent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 669
    new-instance v0, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 671
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    .line 672
    const/16 v1, 0x7e

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/settings/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 676
    iput-object v4, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    goto :goto_0

    .line 685
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->wu:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 686
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 687
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "upload_log_pref"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 686
    goto :goto_1

    .line 688
    :cond_5
    const-string v3, "lock_screen_unlock_show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 689
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_lock_before_unlock"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 610
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 614
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->gC()Landroid/preference/PreferenceScreen;

    .line 616
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->cH:Lcom/android/settings/ap;

    invoke-virtual {v0}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 617
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qQ:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 621
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qR:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 622
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 624
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 625
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->rh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wt:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 629
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->wt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wu:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 634
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 635
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "upload_log_pref"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 637
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->wu:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wv:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 642
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wv:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 644
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 629
    goto :goto_0

    :cond_7
    move v0, v2

    .line 634
    goto :goto_1

    :cond_8
    move v0, v2

    .line 637
    goto :goto_2

    :cond_9
    move v1, v2

    .line 642
    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 602
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 604
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->wz:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 606
    :cond_0
    return-void
.end method
