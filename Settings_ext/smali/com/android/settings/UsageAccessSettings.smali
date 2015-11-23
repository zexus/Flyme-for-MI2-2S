.class public Lcom/android/settings/UsageAccessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsageAccessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final yV:[Ljava/lang/String;

.field private static final yW:[I


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field private yX:Lcom/android/settings/ha;

.field yY:Landroid/util/ArrayMap;

.field yZ:Landroid/preference/PreferenceScreen;

.field private final za:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/UsageAccessSettings;->yV:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [I

    const/16 v1, 0x3a

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/UsageAccessSettings;->yW:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 252
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    .line 354
    new-instance v0, Lcom/android/settings/gZ;

    invoke-direct {v0, p0}, Lcom/android/settings/gZ;-><init>(Lcom/android/settings/UsageAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->za:Lcom/android/internal/content/PackageMonitor;

    .line 366
    return-void
.end method

.method static M(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 248
    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/UsageAccessSettings;Lcom/android/settings/ha;)Lcom/android/settings/ha;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/UsageAccessSettings;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/UsageAccessSettings;->ho()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/UsageAccessSettings;->yV:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/UsageAccessSettings;->yW:[I

    return-object v0
.end method

.method private ho()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ha;->cancel(Z)Z

    .line 294
    :cond_0
    new-instance v0, Lcom/android/settings/ha;

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ha;-><init>(Lcom/android/settings/UsageAccessSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    .line 295
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/ha;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return-void
.end method


# virtual methods
.method N(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hb;

    .line 345
    if-nez v0, :cond_0

    .line 346
    const-string v0, "UsageAccessSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to give access to package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": it does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/UsageAccessSettings;->a(Lcom/android/settings/hb;I)V

    .line 351
    iget-object v0, v0, Lcom/android/settings/hb;->zg:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method a(Lcom/android/settings/hb;I)V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3a

    iget-object v2, p1, Lcom/android/settings/hb;->zd:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/settings/hb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 340
    iput p2, p1, Lcom/android/settings/hb;->zf:I

    .line 341
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 260
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageAccessSettings;->addPreferencesFromResource(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yZ:Landroid/preference/PreferenceScreen;

    .line 262
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yZ:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 263
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageAccessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 264
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 278
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->za:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 279
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ha;->cancel(Z)Z

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yX:Lcom/android/settings/ha;

    .line 283
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 301
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->yY:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hb;

    .line 302
    if-nez v0, :cond_0

    .line 303
    const-string v0, "UsageAccessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference change event for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but that package is no longer valid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return v2

    .line 308
    :cond_0
    instance-of v4, p2, Ljava/lang/Boolean;

    if-nez v4, :cond_1

    .line 309
    const-string v0, "UsageAccessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference change event for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non boolean value of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 318
    :goto_1
    iget v4, v0, Lcom/android/settings/hb;->zf:I

    if-eq v4, v1, :cond_5

    .line 319
    if-eqz v1, :cond_3

    .line 321
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/UsageAccessSettings;->a(Lcom/android/settings/hb;I)V

    move v2, v3

    .line 322
    goto :goto_0

    :cond_2
    move v1, v3

    .line 314
    goto :goto_1

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "warning"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_4

    .line 329
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 331
    :cond_4
    iget-object v0, v0, Lcom/android/settings/hb;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;->O(Ljava/lang/String;)Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;

    move-result-object v0

    const-string v3, "warning"

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v2, v3

    .line 334
    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 270
    invoke-direct {p0}, Lcom/android/settings/UsageAccessSettings;->ho()V

    .line 271
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->za:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 272
    return-void
.end method
