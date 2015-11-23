.class public Lcom/android/settings_ext/DisplaySettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ext/search/k;


# static fields
.field public static final gG:Lcom/android/settings_ext/search/l;

.field private static jU:Landroid/util/SparseArray;


# instance fields
.field private final jS:Landroid/content/res/Configuration;

.field private jV:Lcom/android/settings_ext/WarnedListPreference;

.field private jW:Landroid/preference/ListPreference;

.field private jX:Landroid/preference/Preference;

.field private jY:Landroid/preference/CheckBoxPreference;

.field private jZ:Landroid/preference/CheckBoxPreference;

.field private ka:Landroid/preference/CheckBoxPreference;

.field private kb:Landroid/preference/SwitchPreference;

.field private kc:Landroid/preference/CheckBoxPreference;

.field private final kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    .line 94
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    new-instance v0, Lcom/android/settings_ext/bV;

    invoke-direct {v0}, Lcom/android/settings_ext/bV;-><init>()V

    sput-object v0, Lcom/android/settings_ext/DisplaySettings;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jS:Landroid/content/res/Configuration;

    .line 578
    new-instance v0, Lcom/android/settings_ext/bW;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bW;-><init>(Lcom/android/settings_ext/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/DisplaySettings;)Lcom/android/settings_ext/WarnedListPreference;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    return-object v0
.end method

.method private a(Landroid/preference/ListPreference;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 316
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 317
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 351
    :goto_1
    return-void

    :cond_0
    move-wide v2, v4

    .line 316
    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 321
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 322
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 324
    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 325
    aget-object v8, v5, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 326
    cmp-long v8, v8, v2

    if-gtz v8, :cond_2

    .line 327
    aget-object v8, v4, v0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 331
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v4

    if-ne v0, v4, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v5

    if-eq v0, v4, :cond_5

    .line 332
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 333
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 337
    int-to-long v8, v4

    cmp-long v0, v8, v2

    if-gtz v0, :cond_7

    .line 338
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 350
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 339
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    .line 343
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static a(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 278
    const v0, 0x1120022

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/settings_ext/DisplaySettings;->n(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/DisplaySettings;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ext/DisplaySettings;->da()V

    return-void
.end method

.method static synthetic b(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/settings_ext/DisplaySettings;->a(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private cZ()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jX:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jX:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/DreamSettings;->q(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    :cond_0
    return-void
.end method

.method private da()V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->kc:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->kc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f(J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v3, p0, Lcom/android/settings_ext/DisplaySettings;->jW:Landroid/preference/ListPreference;

    .line 284
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 286
    const-string v0, ""

    .line 305
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 306
    const v0, 0x7f090af4

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_0
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    return-void

    .line 288
    :cond_1
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 289
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 290
    if-eqz v4, :cond_2

    array-length v0, v4

    if-nez v0, :cond_3

    .line 291
    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v1

    .line 294
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_5

    .line 295
    aget-object v6, v5, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 296
    cmp-long v6, p1, v6

    if-ltz v6, :cond_4

    move v2, v0

    .line 294
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    :cond_5
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f09039a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v2, v4, v2

    aput-object v2, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static n(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 256
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 257
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static o(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 261
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.doze.component"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x104003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    :goto_1
    return v1

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 272
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method static synthetic p(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/settings_ext/DisplaySettings;->o(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    invoke-direct {p0}, Lcom/android/settings_ext/DisplaySettings;->da()V

    .line 413
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->b(Landroid/preference/ListPreference;)V

    .line 414
    invoke-direct {p0}, Lcom/android/settings_ext/DisplaySettings;->cZ()V

    .line 417
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->kb:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 420
    iget-object v3, p0, Lcom/android/settings_ext/DisplaySettings;->kb:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jY:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wake_gesture_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 426
    iget-object v3, p0, Lcom/android/settings_ext/DisplaySettings;->jY:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jZ:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 431
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "doze_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 432
    iget-object v3, p0, Lcom/android/settings_ext/DisplaySettings;->jZ:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 434
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 420
    goto :goto_0

    :cond_4
    move v0, v2

    .line 426
    goto :goto_1

    :cond_5
    move v1, v2

    .line 432
    goto :goto_2
.end method


# virtual methods
.method public b(Landroid/preference/ListPreference;)V
    .locals 5

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jS:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->jS:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 379
    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 380
    const v3, 0x7f0903ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v0, v2, v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to retrieve font size"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 445
    .line 446
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 447
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 448
    aget-object v4, v3, v1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 447
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 452
    :cond_1
    sget-object v0, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings_ext/DisplaySettings;->jU:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->jS:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eq v0, v1, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ext/display/n;->e(Landroid/content/Context;I)Z

    .line 467
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 124
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->addPreferencesFromResource(I)V

    .line 126
    const-string v0, "screensaver"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jX:Landroid/preference/Preference;

    .line 127
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jX:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->jX:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_0
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jW:Landroid/preference/ListPreference;

    .line 141
    const-string v0, "screen_off_timeout"

    const-wide/16 v6, 0x7530

    invoke-static {v5, v0, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 143
    const-wide/32 v6, 0x1b7740

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 144
    const-wide/32 v0, 0x927c0

    .line 145
    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 149
    :cond_1
    invoke-static {}, Lcom/android/settings_ext/fc;->fL()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    const-string v6, "wallpaper"

    invoke-virtual {p0, v6}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 151
    if-eqz v6, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ext/DisplaySettings;->jW:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    iget-object v6, p0, Lcom/android/settings_ext/DisplaySettings;->jW:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    iget-object v6, p0, Lcom/android/settings_ext/DisplaySettings;->jW:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings_ext/DisplaySettings;->a(Landroid/preference/ListPreference;)V

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DisplaySettings;->f(J)V

    .line 160
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/WarnedListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_3
    invoke-static {v4}, Lcom/android/settings_ext/DisplaySettings;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jY:Landroid/preference/CheckBoxPreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    :goto_0
    invoke-static {v4}, Lcom/android/settings_ext/DisplaySettings;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    const-string v0, "doze"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jZ:Landroid/preference/CheckBoxPreference;

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    :goto_1
    const-string v0, "auto_rotate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->kc:Landroid/preference/CheckBoxPreference;

    .line 195
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->kc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 233
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    const-string v0, "support_led_light"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    .line 248
    :cond_4
    :goto_2
    return-void

    .line 181
    :cond_5
    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->K(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_6
    const-string v0, "doze"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->K(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    const-string v0, "notification_light_pulse"

    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v0, "DisplaySettings"

    const-string v1, "notification_light_pulse not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    move v0, v3

    .line 240
    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090925

    new-instance v2, Lcom/android/settings_ext/bU;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/bU;-><init>(Lcom/android/settings_ext/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 597
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 600
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 483
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 484
    const-string v2, "screen_timeout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 487
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    int-to-long v6, v2

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ext/DisplaySettings;->f(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    const-string v2, "font_size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/DisplaySettings;->k(Ljava/lang/Object;)V

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/DisplaySettings;->kb:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    move-object v2, p2

    .line 497
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 498
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/DisplaySettings;->jY:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    move-object v2, p2

    .line 502
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wake_gesture_enabled"

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/DisplaySettings;->jZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_4

    move-object v2, p2

    .line 506
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 507
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doze_enabled"

    if-eqz v2, :cond_9

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ext/DisplaySettings;->ka:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_6

    .line 511
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_light_pulse"

    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    :cond_6
    return v3

    .line 489
    :catch_0
    move-exception v2

    .line 490
    const-string v6, "DisplaySettings"

    const-string v7, "could not persist screen timeout setting"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_7
    move v2, v4

    .line 498
    goto :goto_1

    :cond_8
    move v2, v4

    .line 503
    goto :goto_2

    :cond_9
    move v2, v4

    .line 507
    goto :goto_3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 521
    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/hl;->S(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DisplaySettings;->showDialog(I)V

    .line 529
    :goto_0
    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->jV:Lcom/android/settings_ext/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/WarnedListPreference;->click()V

    .line 529
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->kc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ext/DisplaySettings;->kc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 478
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 474
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings_ext/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DisplaySettings;->kd:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 392
    invoke-direct {p0}, Lcom/android/settings_ext/DisplaySettings;->updateState()V

    .line 393
    return-void
.end method
