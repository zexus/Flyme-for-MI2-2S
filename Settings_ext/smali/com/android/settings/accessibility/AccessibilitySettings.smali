.class public Lcom/android/settings_ext/accessibility/AccessibilitySettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ext/bP;
.implements Lcom/android/settings_ext/search/k;


# static fields
.field static final Ah:Landroid/text/TextUtils$SimpleStringSplitter;

.field static final Ai:Ljava/util/Set;

.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field private AA:Landroid/preference/PreferenceScreen;

.field private AB:Landroid/preference/CheckBoxPreference;

.field private AC:I

.field private final Aj:Ljava/util/Map;

.field private final Ak:Ljava/lang/Runnable;

.field private final Al:Lcom/android/internal/content/PackageMonitor;

.field private final Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

.field private An:Landroid/preference/PreferenceCategory;

.field private Ao:Landroid/preference/PreferenceCategory;

.field private Ap:Landroid/preference/PreferenceCategory;

.field private Aq:Landroid/preference/CheckBoxPreference;

.field private Ar:Landroid/preference/CheckBoxPreference;

.field private As:Landroid/preference/CheckBoxPreference;

.field private At:Landroid/preference/CheckBoxPreference;

.field private Au:Landroid/preference/CheckBoxPreference;

.field private Av:Landroid/preference/ListPreference;

.field private Aw:Landroid/preference/Preference;

.field private Ax:Landroid/preference/PreferenceScreen;

.field private Ay:Landroid/preference/PreferenceScreen;

.field private Az:Landroid/preference/PreferenceScreen;

.field private hC:Landroid/app/admin/DevicePolicyManager;

.field private final jS:Landroid/content/res/Configuration;

.field private final kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ah:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ai:Ljava/util/Set;

    .line 673
    new-instance v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aj:Ljava/util/Map;

    .line 132
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->jS:Landroid/content/res/Configuration;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ak:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Al:Lcom/android/internal/content/PackageMonitor;

    .line 170
    new-instance v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings_ext/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

    .line 179
    new-instance v0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method private O(Z)V
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private S(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Av:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hN()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 638
    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f090657

    :goto_1
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 640
    return-void

    :cond_0
    move v0, v1

    .line 637
    goto :goto_0

    .line 638
    :cond_1
    const v0, 0x7f090658

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hK()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ak:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hM()V

    return-void
.end method

.method private hB()V
    .locals 2

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->jS:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 306
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->jS:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_1
    return-void

    .line 305
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private hC()V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_text_contrast_enabled"

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hD()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->As:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hE()V
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->At:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 329
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hF()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Au:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hG()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    iget-object v2, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 339
    const-string v3, "title"

    const v4, 0x7f09063e

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "summary"

    const v4, 0x7f090641

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v0, v1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 347
    return-void

    :cond_0
    move v0, v1

    .line 343
    goto :goto_0
.end method

.method private hH()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    iget-object v2, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 351
    const-string v3, "title"

    const v4, 0x7f09063c

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09063d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 355
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ay:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ay:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v0, v1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 359
    return-void

    :cond_0
    move v0, v1

    .line 355
    goto :goto_0
.end method

.method private hI()V
    .locals 8

    .prologue
    const/16 v7, 0x1a

    const/4 v1, 0x0

    .line 362
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->An:Landroid/preference/PreferenceCategory;

    .line 363
    const-string v0, "system_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ao:Landroid/preference/PreferenceCategory;

    .line 365
    const-string v0, "drive_mode_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ap:Landroid/preference/PreferenceCategory;

    .line 368
    const-string v0, "toggle_large_text_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aq:Landroid/preference/CheckBoxPreference;

    .line 372
    const-string v0, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ar:Landroid/preference/CheckBoxPreference;

    .line 378
    const-string v0, "toggle_inversion_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AB:Landroid/preference/CheckBoxPreference;

    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->As:Landroid/preference/CheckBoxPreference;

    .line 384
    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ao:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->As:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    :cond_1
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->At:Landroid/preference/CheckBoxPreference;

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->At:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ao:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->At:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 399
    :cond_2
    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Au:Landroid/preference/CheckBoxPreference;

    .line 403
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Av:Landroid/preference/ListPreference;

    .line 405
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Av:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 409
    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AC:I

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0036

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 412
    array-length v4, v2

    move v0, v1

    .line 413
    :goto_0
    if-ge v0, v4, :cond_3

    .line 414
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aj:Ljava/util/Map;

    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    const-string v0, "captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ax:Landroid/preference/PreferenceScreen;

    .line 423
    const-string v0, "screen_magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ay:Landroid/preference/PreferenceScreen;

    .line 427
    const-string v0, "daltonizer_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AA:Landroid/preference/PreferenceScreen;

    .line 431
    const-string v0, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    .line 433
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 436
    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    .line 442
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ao:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.voiceassist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_6
    :goto_1
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ap:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    .line 452
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ap:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private hJ()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hK()V

    .line 460
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hL()V

    .line 461
    return-void
.end method

.method private hK()V
    .locals 14

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->An:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v7

    .line 475
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/accessibility/AccessibilityUtils;->W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 477
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hC:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v9

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 482
    :goto_0
    const/4 v0, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    move v6, v0

    :goto_1
    if-ge v6, v10, :cond_a

    .line 483
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 485
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 487
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 489
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 490
    new-instance v13, Landroid/content/ComponentName;

    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    if-eqz v1, :cond_5

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move v5, v2

    .line 499
    :goto_2
    if-eqz v5, :cond_6

    .line 500
    const v2, 0x7f090657

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    :goto_3
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 507
    if-eqz v9, :cond_0

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_0
    const/4 v3, 0x1

    move v4, v3

    .line 509
    :goto_4
    if-nez v4, :cond_1

    if-eqz v5, :cond_8

    :cond_1
    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v11, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 512
    if-eqz v4, :cond_9

    .line 517
    :goto_6
    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {v11, v6}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 520
    const-class v2, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 521
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 523
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 524
    const-string v2, "preference_key"

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v2, "checked"

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    const-string v2, "title"

    invoke-virtual {v3, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 530
    const v2, 0x7f090684

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 532
    :cond_2
    const-string v4, "summary"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 536
    const-string v4, "settings_title"

    const v5, 0x7f090656

    invoke-virtual {p0, v5}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v4, "settings_component_name"

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_3
    const-string v0, "component_name"

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->An:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 482
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 479
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 496
    :cond_5
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_2

    .line 502
    :cond_6
    const v2, 0x7f090658

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 507
    :cond_7
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_4

    .line 509
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 515
    :cond_9
    const v2, 0x7f090659

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 548
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->An:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 549
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aw:Landroid/preference/Preference;

    if-nez v0, :cond_b

    .line 550
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aw:Landroid/preference/Preference;

    .line 551
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aw:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 552
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aw:Landroid/preference/Preference;

    const v1, 0x7f040110

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 554
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aw:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aw:Landroid/preference/Preference;

    const v1, 0x7f090683

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 558
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->An:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aw:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 560
    :cond_c
    return-void
.end method

.method private hL()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->jS:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aq:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 573
    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aq:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->jS:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 577
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_text_contrast_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 582
    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 586
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 591
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 593
    :goto_4
    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->As:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 602
    :goto_5
    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Au:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 605
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "long_press_timeout"

    iget v4, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AC:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 607
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Av:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Av:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aj:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 611
    const-string v0, "accessibility_captioning_enabled"

    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ax:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 613
    const-string v0, "accessibility_display_magnification_enabled"

    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ay:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 615
    const-string v0, "accessibility_display_daltonizer_enabled"

    iget-object v3, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AA:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 619
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_7

    .line 634
    :goto_6
    return-void

    :cond_2
    move v0, v2

    .line 573
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 577
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 582
    goto :goto_3

    :cond_5
    move v0, v2

    .line 591
    goto :goto_4

    :cond_6
    move v0, v2

    .line 600
    goto :goto_5

    .line 625
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 627
    :goto_7
    if-eqz v1, :cond_9

    .line 628
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09063f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    :cond_8
    move v1, v2

    .line 625
    goto :goto_7

    .line 631
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090640

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    .line 566
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private hM()V
    .locals 2

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->At:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->At:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 650
    :cond_0
    return-void

    .line 647
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hN()V
    .locals 7

    .prologue
    .line 653
    sget-object v2, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ai:Ljava/util/Set;

    .line 654
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 656
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 659
    if-nez v3, :cond_1

    .line 671
    :cond_0
    return-void

    .line 663
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 664
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 665
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 666
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 215
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hI()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hC:Landroid/app/admin/DevicePolicyManager;

    .line 218
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 250
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Al:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/accessibility/SettingsContentObserver;->b(Landroid/content/ContentResolver;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 243
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 254
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Av:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 255
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->S(Ljava/lang/String;)V

    .line 261
    :goto_0
    return v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->AB:Landroid/preference/CheckBoxPreference;

    if-ne v1, p1, :cond_1

    .line 258
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->O(Z)V

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 278
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Aq:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hB()V

    .line 300
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ar:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hC()V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->As:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hD()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->At:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hE()V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Au:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hF()V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Az:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_5

    .line 294
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hG()V

    goto :goto_0

    .line 296
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ay:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_6

    .line 297
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hH()V

    goto :goto_0

    .line 300
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hN()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->hJ()V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Al:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/accessibility/SettingsContentObserver;->a(Landroid/content/ContentResolver;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 232
    :cond_0
    return-void
.end method
