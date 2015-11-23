.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/k;


# static fields
.field public static final gG:Lcom/android/settings/search/l;

.field private static hz:Ljava/lang/String;


# instance fields
.field private aU:Landroid/os/UserManager;

.field private aY:Z

.field private cH:Lcom/android/settings/ap;

.field private cP:Lcom/android/internal/widget/LockPatternUtils;

.field private hA:Landroid/view/IWindowManager;

.field private hB:Landroid/app/backup/IBackupManager;

.field private hC:Landroid/app/admin/DevicePolicyManager;

.field private hD:Landroid/net/wifi/WifiManager;

.field private hE:Landroid/hardware/usb/UsbManager;

.field private hF:Landroid/preference/CheckBoxPreference;

.field private hG:Z

.field private hH:Z

.field private hI:Z

.field private hJ:Landroid/preference/CheckBoxPreference;

.field private hK:Landroid/preference/Preference;

.field private hL:Landroid/preference/CheckBoxPreference;

.field private hM:Landroid/preference/Preference;

.field private hN:Landroid/preference/CheckBoxPreference;

.field private hO:Landroid/preference/CheckBoxPreference;

.field private hP:Landroid/preference/CheckBoxPreference;

.field private hQ:Landroid/preference/CheckBoxPreference;

.field private hR:Landroid/preference/CheckBoxPreference;

.field private hS:Landroid/preference/CheckBoxPreference;

.field private hT:Z

.field private hU:Landroid/preference/CheckBoxPreference;

.field private hV:Landroid/preference/CheckBoxPreference;

.field private hW:Landroid/preference/ListPreference;

.field private hX:Landroid/preference/PreferenceScreen;

.field private hY:Ljava/lang/String;

.field private hZ:Landroid/preference/Preference;

.field private iA:Landroid/preference/ListPreference;

.field private iB:Landroid/preference/ListPreference;

.field private iC:Landroid/preference/ListPreference;

.field private iD:Landroid/preference/ListPreference;

.field private iE:Landroid/preference/CheckBoxPreference;

.field private iF:Landroid/preference/CheckBoxPreference;

.field private iG:Landroid/preference/CheckBoxPreference;

.field private iH:Landroid/preference/ListPreference;

.field private iI:Landroid/preference/CheckBoxPreference;

.field private iJ:Landroid/preference/PreferenceScreen;

.field private final iK:Ljava/util/ArrayList;

.field private final iL:Ljava/util/ArrayList;

.field private iM:Landroid/preference/CheckBoxPreference;

.field private iN:Landroid/preference/CheckBoxPreference;

.field private iO:Landroid/preference/CheckBoxPreference;

.field private final iP:Ljava/util/HashSet;

.field private iQ:Z

.field private iR:Landroid/app/Dialog;

.field private iS:Landroid/app/Dialog;

.field private iT:Landroid/app/Dialog;

.field private ia:Landroid/preference/CheckBoxPreference;

.field private ib:Landroid/preference/CheckBoxPreference;

.field private ic:Landroid/preference/CheckBoxPreference;

.field private ie:Landroid/preference/CheckBoxPreference;

.field private if:Landroid/preference/CheckBoxPreference;

.field private ig:Landroid/preference/CheckBoxPreference;

.field private ih:Landroid/preference/CheckBoxPreference;

.field private ii:Landroid/preference/CheckBoxPreference;

.field private ij:Landroid/preference/CheckBoxPreference;

.field private ik:Landroid/preference/CheckBoxPreference;

.field private il:Landroid/preference/CheckBoxPreference;

.field private im:Landroid/preference/CheckBoxPreference;

.field private in:Landroid/preference/CheckBoxPreference;

.field private io:Landroid/preference/CheckBoxPreference;

.field private iq:Landroid/preference/CheckBoxPreference;

.field private ir:Landroid/preference/CheckBoxPreference;

.field private is:Landroid/preference/CheckBoxPreference;

.field private it:Landroid/preference/CheckBoxPreference;

.field private iu:Landroid/preference/ListPreference;

.field private iv:Landroid/preference/ListPreference;

.field private iw:Landroid/preference/ListPreference;

.field private ix:Landroid/preference/ListPreference;

.field private iy:Landroid/preference/ListPreference;

.field private iz:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "262144"

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->hz:Ljava/lang/String;

    .line 1886
    new-instance v0, Lcom/android/settings/bA;

    invoke-direct {v0}, Lcom/android/settings/bA;-><init>()V

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->gG:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 224
    const-string v0, "btdebug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hT:Z

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iL:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iP:Ljava/util/HashSet;

    .line 1848
    return-void
.end method

.method private a(ILandroid/preference/ListPreference;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1344
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hA:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1345
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1346
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    .line 1348
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1349
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1350
    aget-object v3, v2, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1351
    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1352
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1353
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1361
    :goto_1
    return-void

    .line 1349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1357
    :cond_2
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1358
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1359
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1371
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1372
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hA:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1373
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :goto_1
    return-void

    .line 1371
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 486
    if-eqz p1, :cond_0

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iP:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DevelopmentSettings;I)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->s(I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->bJ()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1028
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1031
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bZ()V

    .line 1032
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1877
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1879
    :cond_0
    :goto_0
    return v0

    .line 1878
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 531
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/preference/Preference;)V

    .line 533
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bA()V
    .locals 3

    .prologue
    .line 772
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_hci_log"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 777
    return-void

    .line 774
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bB()V
    .locals 3

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_trace_log"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    return-void

    .line 781
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bC()V
    .locals 4

    .prologue
    .line 789
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ia:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static bD()V
    .locals 4

    .prologue
    .line 797
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bE()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;

    .line 806
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->ia:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wait_for_debugger"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 808
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 811
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 818
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hZ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09080e

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ia:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 820
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    .line 825
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 806
    goto :goto_0

    .line 814
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;

    goto :goto_1

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hZ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09080d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ia:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private bF()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 828
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 830
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bH()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 831
    return-void

    .line 828
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bG()V
    .locals 3

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 836
    return-void

    .line 834
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bH()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 840
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 855
    :cond_0
    :goto_0
    return v0

    .line 843
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 847
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 850
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 851
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 855
    goto :goto_0
.end method

.method private bI()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 859
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bJ()Z
    .locals 2

    .prologue
    .line 864
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bK()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 868
    const-string v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 870
    const-string v0, "adb_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 872
    :goto_0
    if-eqz v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hM:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 874
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 884
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 870
    goto :goto_0

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hM:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 877
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 878
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 879
    const-string v0, "bugreport_in_power_menu"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private static bL()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 892
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    :goto_0
    return v0

    .line 895
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 896
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private bM()V
    .locals 2

    .prologue
    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hA:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ih:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 905
    :goto_1
    return-void

    .line 901
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private bN()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 908
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ih:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->bL()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 909
    return-void

    .line 908
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bO()V
    .locals 3

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ii:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 914
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bP()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 917
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ii:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 919
    return-void
.end method

.method private bQ()V
    .locals 3

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ij:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    return-void

    .line 922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bR()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 927
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ij:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 929
    return-void
.end method

.method private bS()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 934
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 935
    if-eqz v2, :cond_0

    .line 936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 938
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 939
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 941
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 943
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 944
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->ik:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 947
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 948
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 949
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->il:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 950
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 945
    goto :goto_0

    :cond_2
    move v0, v1

    .line 949
    goto :goto_1

    .line 953
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private bT()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 959
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 960
    if-eqz v1, :cond_1

    .line 961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 962
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->ik:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 964
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 966
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_1
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bU()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 976
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 977
    if-eqz v1, :cond_1

    .line 978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 979
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 980
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->il:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 981
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/16 v0, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 983
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 985
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :cond_1
    :goto_0
    return-void

    .line 987
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bV()V
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->in:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 993
    return-void
.end method

.method private bW()V
    .locals 2

    .prologue
    .line 996
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->in:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 998
    return-void

    .line 996
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private bX()V
    .locals 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->io:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1002
    return-void
.end method

.method private bY()V
    .locals 2

    .prologue
    .line 1005
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->io:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1007
    return-void

    .line 1005
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private bZ()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1010
    const-string v0, "debug.hwui.profile"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    if-nez v0, :cond_0

    .line 1012
    const-string v0, ""

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1016
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1017
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1025
    :goto_1
    return-void

    .line 1016
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private bv()V
    .locals 3

    .prologue
    .line 544
    .line 546
    :try_start_0
    const-string v0, "com.miui.whetstone.WhetstoneManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 547
    const-string v1, "getWhetstoneLeve"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 548
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 553
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 554
    const-string v0, "debug_applications_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 555
    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 551
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    const-string v0, "debug_applications_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 555
    if-eqz v0, :cond_2

    .line 556
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 554
    const-string v0, "debug_applications_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 555
    if-eqz v0, :cond_3

    .line 556
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 559
    throw v1
.end method

.method private bw()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 623
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 624
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    .line 625
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->hJ:Landroid/preference/CheckBoxPreference;

    const-string v0, "adb_enabled"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 628
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.terminal"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    const-string v0, "bugreport_in_power_menu"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 634
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hO:Landroid/preference/CheckBoxPreference;

    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 636
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hU:Landroid/preference/CheckBoxPreference;

    const-string v0, "bluetooth_hci_log"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 638
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hP:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/hl;->T(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 641
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hR:Landroid/preference/CheckBoxPreference;

    const-string v0, "mock_location"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 643
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hS:Landroid/preference/CheckBoxPreference;

    const-string v0, "debug_view_attributes"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 648
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hV:Landroid/preference/CheckBoxPreference;

    const-string v3, "bluetooth_trace_log"

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 650
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bx()V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bz()V

    .line 655
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bE()V

    .line 656
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bN()V

    .line 657
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bP()V

    .line 658
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bR()V

    .line 659
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bS()V

    .line 660
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cB()V

    .line 661
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bV()V

    .line 662
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bX()V

    .line 663
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bZ()V

    .line 664
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ca()V

    .line 665
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cb()V

    .line 666
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cd()V

    .line 667
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cf()V

    .line 668
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cg()V

    .line 670
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cq()V

    .line 671
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cF()V

    .line 672
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cG()V

    .line 673
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cH()V

    .line 674
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cE()V

    .line 675
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cI()V

    .line 677
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cJ()V

    .line 678
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cL()V

    .line 680
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cN()V

    .line 681
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bF()V

    .line 682
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bK()V

    .line 683
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->co()V

    .line 684
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cA()V

    .line 685
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cs()V

    .line 686
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cu()V

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 690
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cw()V

    .line 693
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cy()V

    .line 694
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ci()V

    .line 695
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ck()V

    .line 696
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cm()V

    .line 697
    return-void

    :cond_3
    move v0, v2

    .line 625
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 628
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 632
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 634
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 636
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 641
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 643
    goto/16 :goto_6

    :cond_a
    move v1, v2

    .line 648
    goto/16 :goto_7
.end method

.method private bx()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-nez v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iN:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 706
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iN:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iN:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->cH:Lcom/android/settings/ap;

    invoke-virtual {v1}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iN:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private by()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 715
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->hI:Z

    move v1, v2

    .line 716
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 718
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 720
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 716
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 723
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->bD()V

    .line 724
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->f(Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iy:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iz:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v0, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 727
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iA:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 729
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->e(Ljava/lang/Object;)V

    .line 732
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->g(Ljava/lang/Object;)V

    .line 733
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->i(Ljava/lang/Object;)V

    .line 734
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    .line 735
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bw()V

    .line 736
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->hI:Z

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 738
    return-void
.end method

.method private bz()V
    .locals 7

    .prologue
    .line 741
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 742
    if-eqz v0, :cond_0

    .line 743
    const-string v1, "persist.sys.hdcp_checking"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 746
    const/4 v2, 0x1

    .line 747
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 748
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 753
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 754
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 757
    :cond_0
    return-void

    .line 747
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private c(Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1054
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1057
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ca()V

    .line 1058
    return-void

    .line 1054
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private cA()V
    .locals 7

    .prologue
    const v5, 0x7f0b0045

    .line 1263
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iv:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 1264
    const-string v0, "persist.logd.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1265
    if-nez v0, :cond_0

    .line 1266
    const-string v0, "ro.logd.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    if-nez v0, :cond_0

    .line 1268
    const-string v0, "256K"

    .line 1271
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1272
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1273
    const-string v2, "ro.config.low_ram"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iv:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1275
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1278
    const/4 v3, 0x1

    .line 1279
    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 1280
    aget-object v6, v4, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v1, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1286
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iv:Landroid/preference/ListPreference;

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iv:Landroid/preference/ListPreference;

    aget-object v1, v5, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iv:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1290
    :cond_3
    return-void

    .line 1279
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method private cB()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1312
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->im:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1314
    return-void
.end method

.method private cC()V
    .locals 4

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->im:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1322
    if-eqz v1, :cond_1

    .line 1323
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1327
    :goto_1
    return-void

    .line 1318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1325
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private cD()V
    .locals 2

    .prologue
    .line 1331
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    return-void

    .line 1333
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cE()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1338
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1340
    return-void
.end method

.method private cF()V
    .locals 2

    .prologue
    .line 1364
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iy:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 1365
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iz:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 1366
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iA:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 1367
    return-void
.end method

.method private cG()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1380
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v0, :cond_0

    .line 1398
    :goto_0
    return-void

    .line 1382
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    if-nez v0, :cond_1

    .line 1385
    const-string v0, ""

    .line 1388
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1389
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1390
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1391
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1392
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1389
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1396
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1397
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private cH()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1407
    const-string v0, "debug.egl.trace"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    if-nez v0, :cond_0

    .line 1409
    const-string v0, ""

    .line 1412
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1413
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1414
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1416
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1422
    :goto_1
    return-void

    .line 1413
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1420
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1421
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1432
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1433
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1434
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1435
    aget-object v3, v2, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1436
    if-lt v3, v1, :cond_1

    .line 1437
    if-eqz v0, :cond_0

    .line 1438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    .line 1440
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1441
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1449
    :goto_1
    return-void

    .line 1434
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1445
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1446
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1447
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private cJ()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1461
    .line 1464
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "com.miui.whetstone"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1465
    const-string v2, "com.miui.whetstone.WhetstoneManager"

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1466
    const-string v2, "getWhetstoneLeve"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1467
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1472
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v0, v1

    .line 1473
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1474
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1475
    if-ne v4, v2, :cond_0

    .line 1476
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1477
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1483
    :goto_1
    return-void

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1482
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cK()V
    .locals 3

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1533
    return-void

    .line 1530
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cL()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1536
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1538
    return-void
.end method

.method private cM()V
    .locals 3

    .prologue
    .line 1581
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1583
    return-void

    .line 1581
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cN()V
    .locals 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1588
    return-void
.end method

.method private cO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1769
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1771
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iT:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1774
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1775
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iT:Landroid/app/Dialog;

    .line 1777
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1778
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1779
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    .line 1781
    :cond_2
    return-void
.end method

.method private ca()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1035
    const-string v0, "debug.hwui.show_non_rect_clip"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    if-nez v0, :cond_0

    .line 1038
    const-string v0, "hide"

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1042
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1043
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1045
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1051
    :goto_1
    return-void

    .line 1042
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cb()V
    .locals 3

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iq:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1063
    return-void
.end method

.method private cc()V
    .locals 2

    .prologue
    .line 1066
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1069
    return-void

    .line 1066
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cd()V
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ir:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1074
    return-void
.end method

.method private ce()V
    .locals 2

    .prologue
    .line 1077
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ir:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1080
    return-void

    .line 1077
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cf()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1083
    const-string v0, "debug.hwui.overdraw"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    if-nez v0, :cond_0

    .line 1085
    const-string v0, ""

    .line 1088
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1089
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1090
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1098
    :goto_1
    return-void

    .line 1089
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cg()V
    .locals 3

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->is:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1110
    return-void
.end method

.method private ch()V
    .locals 2

    .prologue
    .line 1113
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->is:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1116
    return-void

    .line 1113
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private ci()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 1119
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1120
    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1122
    :goto_0
    if-eqz v0, :cond_2

    .line 1123
    const-string v0, "accessibility_display_daltonizer"

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1126
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1127
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1128
    if-gez v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    const v3, 0x7f090650

    new-array v1, v1, [Ljava/lang/Object;

    const v4, 0x7f09064c

    invoke-virtual {p0, v4}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1139
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1120
    goto :goto_0

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1136
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cj()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1147
    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 1149
    :goto_0
    if-eqz v2, :cond_1

    .line 1150
    const-string v2, "accessibility_display_daltonizer"

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1153
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1154
    if-ltz v2, :cond_1

    .line 1159
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1147
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1159
    goto :goto_1
.end method

.method private ck()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1174
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iE:Landroid/preference/CheckBoxPreference;

    const-string v2, "persist.sys.media.use-awesome"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1176
    return-void
.end method

.method private cl()V
    .locals 2

    .prologue
    .line 1179
    const-string v1, "persist.sys.media.use-awesome"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "false"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1182
    return-void

    .line 1179
    :cond_0
    const-string v0, "true"

    goto :goto_0
.end method

.method private cm()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1185
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1187
    return-void
.end method

.method private cn()V
    .locals 3

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1193
    return-void

    .line 1190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private co()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1196
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->it:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1198
    return-void
.end method

.method private cp()V
    .locals 4

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->it:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1202
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1204
    const-string v2, "debug.force_rtl"

    if-eqz v1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1206
    return-void

    .line 1202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1204
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private cq()V
    .locals 0

    .prologue
    .line 1214
    return-void
.end method

.method private cr()V
    .locals 0

    .prologue
    .line 1221
    return-void
.end method

.method private cs()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1224
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1227
    return-void
.end method

.method private ct()V
    .locals 3

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1233
    return-void

    .line 1230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cu()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1237
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ie:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1238
    return-void

    .line 1236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cv()V
    .locals 2

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ie:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1242
    return-void

    .line 1241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cw()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1246
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->if:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1247
    return-void

    .line 1245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cx()V
    .locals 2

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->if:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1251
    return-void

    .line 1250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cy()V
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1255
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ig:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 1256
    return-void

    .line 1254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cz()V
    .locals 2

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ig:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1260
    return-void

    .line 1259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1101
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1104
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cf()V

    .line 1105
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1164
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1165
    if-gez v1, :cond_0

    .line 1166
    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    :goto_0
    return-void

    .line 1168
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1169
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private f(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1293
    const-string v0, "ro.logd.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    if-eqz v0, :cond_0

    .line 1295
    sput-object v0, Lcom/android/settings/DevelopmentSettings;->hz:Ljava/lang/String;

    .line 1297
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    :goto_0
    const-string v1, "persist.logd.size"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1302
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat -b all -G "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 1303
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1304
    const-string v1, "DevelopmentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logcat ring buffer sizes set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cA()V

    .line 1309
    return-void

    .line 1297
    :cond_1
    sget-object v0, Lcom/android/settings/DevelopmentSettings;->hz:Ljava/lang/String;

    goto :goto_0

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    const-string v1, "DevelopmentSettings"

    const-string v2, "Cannot set logcat ring buffer sizes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private g(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1401
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1403
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cG()V

    .line 1404
    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1425
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1427
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cH()V

    .line 1428
    return-void

    .line 1425
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private i(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1453
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1454
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1455
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :goto_1
    return-void

    .line 1453
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private j(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1491
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 1493
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "com.miui.whetstone"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1494
    const-string v2, "com.miui.whetstone.WhetstoneManager"

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1495
    const-string v0, "getWhetstoneLeve"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1496
    const-string v3, "setWhetstoneLeve"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1497
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1498
    if-eq v0, v1, :cond_0

    .line 1500
    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->s(I)V

    .line 1501
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090d87

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090d88

    new-instance v6, Lcom/android/settings/bz;

    invoke-direct {v6, p0, v3, v2, v1}, Lcom/android/settings/bz;-><init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/reflect/Method;Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/by;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/by;-><init>(Lcom/android/settings/DevelopmentSettings;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :cond_0
    :goto_1
    return-void

    .line 1491
    :cond_1
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1523
    :catch_0
    move-exception v0

    .line 1525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private q(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 480
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 482
    return-object v0
.end method

.method private r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 494
    if-nez v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find preference with key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    const-string v1, "enable_adb"

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "disable_usb_by_sim"

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "charging"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hE:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 508
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    return-object v0

    .line 500
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private s(I)V
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1487
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1488
    return-void
.end method

.method private s(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 564
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 567
    if-eqz v0, :cond_0

    .line 568
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->iP:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 564
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 568
    goto :goto_1

    .line 570
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bw()V

    .line 571
    return-void
.end method


# virtual methods
.method a(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 618
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    .line 619
    return-void
.end method

.method cP()V
    .locals 2

    .prologue
    .line 1842
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hI:Z

    if-nez v0, :cond_0

    .line 1844
    new-instance v0, Lcom/android/settings/bB;

    invoke-direct {v0}, Lcom/android/settings/bB;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/bB;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1846
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1568
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1569
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1570
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hY:Ljava/lang/String;

    .line 1571
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bC()V

    .line 1572
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bE()V

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1784
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1785
    if-ne p2, v1, :cond_1

    .line 1786
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->iQ:Z

    .line 1787
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1789
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1790
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bF()V

    .line 1791
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bK()V

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1796
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iT:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1797
    if-ne p2, v1, :cond_0

    .line 1799
    :try_start_0
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1800
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    .line 1801
    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1802
    :catch_0
    move-exception v0

    .line 1803
    const-string v1, "DevelopmentSettings"

    const-string v2, "Unable to clear adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1806
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 1807
    if-ne p2, v1, :cond_4

    .line 1808
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->iQ:Z

    .line 1809
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1811
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    .line 1812
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->s(Z)V

    goto :goto_0

    .line 1815
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 301
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hA:Landroid/view/IWindowManager;

    .line 308
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hB:Landroid/app/backup/IBackupManager;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hC:Landroid/app/admin/DevicePolicyManager;

    .line 311
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->aU:Landroid/os/UserManager;

    .line 313
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hE:Landroid/hardware/usb/UsbManager;

    .line 317
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->aU:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->aY:Z

    .line 320
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 476
    :goto_0
    return-void

    .line 324
    :cond_1
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 326
    const-string v0, "debug_debugging_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 329
    const-string v1, "development_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    .line 330
    const-string v1, "enable_adb"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hJ:Landroid/preference/CheckBoxPreference;

    .line 331
    const-string v1, "clear_adb_keys"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hK:Landroid/preference/Preference;

    .line 332
    const-string v1, "ro.adb.secure"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    if-eqz v0, :cond_2

    .line 334
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hK:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hK:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v1, "enable_terminal"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.terminal"

    invoke-static {v1, v2}, Lcom/android/settings/DevelopmentSettings;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 340
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    .line 344
    :cond_3
    const-string v1, "bugreport"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hM:Landroid/preference/Preference;

    .line 345
    const-string v1, "bugreport_in_power"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    .line 346
    const-string v1, "keep_screen_on"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hO:Landroid/preference/CheckBoxPreference;

    .line 347
    const-string v1, "bt_hci_snoop_log"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hU:Landroid/preference/CheckBoxPreference;

    .line 348
    const-string v1, "oem_unlock_enable"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hP:Landroid/preference/CheckBoxPreference;

    .line 349
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->bJ()Z

    move-result v1

    if-nez v1, :cond_4

    .line 350
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hP:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/preference/Preference;)V

    .line 351
    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hP:Landroid/preference/CheckBoxPreference;

    .line 353
    :cond_4
    const-string v1, "enable_quickboot"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hQ:Landroid/preference/CheckBoxPreference;

    .line 355
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hQ:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/preference/Preference;)V

    .line 356
    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hQ:Landroid/preference/CheckBoxPreference;

    .line 358
    const-string v1, "allow_mock_location"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hR:Landroid/preference/CheckBoxPreference;

    .line 359
    const-string v1, "debug_view_attributes"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hS:Landroid/preference/CheckBoxPreference;

    .line 360
    const-string v1, "local_backup_password"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hX:Landroid/preference/PreferenceScreen;

    .line 361
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hX:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v1, "bt_trace_log"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hV:Landroid/preference/CheckBoxPreference;

    .line 365
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->hT:Z

    if-nez v1, :cond_b

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hM:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 379
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hJ:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hK:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 381
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 382
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hX:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/Preference;)V

    .line 385
    :cond_6
    const-string v1, "debug_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hZ:Landroid/preference/Preference;

    .line 386
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hZ:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v1, "wait_for_debugger"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ia:Landroid/preference/CheckBoxPreference;

    .line 388
    const-string v1, "verify_apps_over_usb"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    .line 389
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bI()Z

    move-result v1

    if-nez v1, :cond_7

    .line 390
    if-eqz v0, :cond_c

    .line 391
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    :cond_7
    :goto_2
    const-string v1, "strict_mode"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ih:Landroid/preference/CheckBoxPreference;

    .line 397
    const-string v1, "pointer_location"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ii:Landroid/preference/CheckBoxPreference;

    .line 398
    const-string v1, "show_touches"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ij:Landroid/preference/CheckBoxPreference;

    .line 399
    const-string v1, "show_screen_updates"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ik:Landroid/preference/CheckBoxPreference;

    .line 400
    const-string v1, "disable_overlays"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->il:Landroid/preference/CheckBoxPreference;

    .line 401
    const-string v1, "show_cpu_usage"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->im:Landroid/preference/CheckBoxPreference;

    .line 402
    const-string v1, "force_hw_ui"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->in:Landroid/preference/CheckBoxPreference;

    .line 403
    const-string v1, "force_msaa"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->io:Landroid/preference/CheckBoxPreference;

    .line 404
    const-string v1, "track_frame_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    .line 405
    const-string v1, "show_non_rect_clip"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    .line 406
    const-string v1, "show_hw_screen_udpates"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iq:Landroid/preference/CheckBoxPreference;

    .line 407
    const-string v1, "show_hw_layers_udpates"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ir:Landroid/preference/CheckBoxPreference;

    .line 408
    const-string v1, "debug_layout"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->is:Landroid/preference/CheckBoxPreference;

    .line 409
    const-string v1, "force_rtl_layout_all_locales"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->it:Landroid/preference/CheckBoxPreference;

    .line 410
    const-string v1, "debug_hw_overdraw"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    .line 411
    const-string v1, "wifi_display_certification"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ic:Landroid/preference/CheckBoxPreference;

    .line 412
    const-string v1, "wifi_verbose_logging"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ie:Landroid/preference/CheckBoxPreference;

    .line 413
    const-string v1, "wifi_aggressive_handover"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->if:Landroid/preference/CheckBoxPreference;

    .line 414
    const-string v1, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ig:Landroid/preference/CheckBoxPreference;

    .line 415
    const-string v1, "select_logd_size"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iv:Landroid/preference/ListPreference;

    .line 421
    const-string v1, "window_animation_scale"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iy:Landroid/preference/ListPreference;

    .line 422
    const-string v1, "transition_animation_scale"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iz:Landroid/preference/ListPreference;

    .line 423
    const-string v1, "animator_duration_scale"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iA:Landroid/preference/ListPreference;

    .line 424
    const-string v1, "overlay_display_devices"

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    .line 426
    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v1, :cond_8

    .line 427
    const-string v1, "debug_drawing_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 432
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->if:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->if:Landroid/preference/CheckBoxPreference;

    .line 436
    :cond_9
    const-string v0, "enable_opengl_traces"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    .line 437
    const-string v0, "simulate_color_space"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    .line 438
    const-string v0, "use_nuplayer"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iE:Landroid/preference/CheckBoxPreference;

    .line 439
    const-string v0, "usb_audio"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iF:Landroid/preference/CheckBoxPreference;

    .line 441
    const-string v0, "immediately_destroy_activities"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iG:Landroid/preference/CheckBoxPreference;

    .line 443
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const-string v0, "app_process_limit"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->q(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    .line 448
    const-string v0, "show_all_anrs"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iI:Landroid/preference/CheckBoxPreference;

    .line 450
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v0, "show_fc"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iO:Landroid/preference/CheckBoxPreference;

    .line 455
    const-string v0, "unlock_enter_system"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->r(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iN:Landroid/preference/CheckBoxPreference;

    .line 456
    new-instance v0, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cH:Lcom/android/settings/ap;

    .line 457
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 461
    const-string v0, "whetstone_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    .line 462
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bv()V

    .line 468
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_a

    .line 470
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->b(Landroid/preference/Preference;)Z

    .line 474
    :cond_a
    const-string v0, "proc_stats"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iJ:Landroid/preference/PreferenceScreen;

    .line 475
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iK:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iJ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 370
    :cond_b
    const-string v1, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 393
    :cond_c
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cO()V

    .line 1838
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1839
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1822
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1823
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->iQ:Z

    if-nez v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1826
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    .line 1833
    :cond_1
    :goto_0
    return-void

    .line 1827
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1828
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->iQ:Z

    if-nez v0, :cond_3

    .line 1829
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1831
    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1720
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1721
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bz()V

    .line 1723
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->cP()V

    .line 1765
    :goto_0
    return v0

    .line 1725
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iv:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1726
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 1728
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iy:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 1729
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iy:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1731
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iz:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 1732
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iz:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1734
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iA:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 1735
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iA:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1737
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iB:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1738
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 1740
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iC:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1741
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 1743
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1744
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 1746
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iu:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1747
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 1749
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->ix:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1750
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1752
    :cond_9
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iH:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1753
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 1755
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1756
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 1758
    :cond_b
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iD:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_c

    .line 1759
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 1761
    :cond_c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hW:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_d

    .line 1762
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->j(Ljava/lang/Object;)V

    goto :goto_0

    :cond_d
    move v0, v1

    .line 1765
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1592
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1715
    :goto_0
    return v1

    .line 1596
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hJ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 1597
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1598
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->iQ:Z

    .line 1599
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cO()V

    .line 1600
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090616

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090615

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    .line 1606
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iS:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1715
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 1608
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1610
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1611
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1612
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bK()V

    goto :goto_1

    .line 1614
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hK:Landroid/preference/Preference;

    if-ne p2, v2, :cond_6

    .line 1615
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iT:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cO()V

    .line 1616
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090617

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iT:Landroid/app/Dialog;

    goto :goto_1

    .line 1621
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 1622
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1623
    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->hL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    .line 1626
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 1627
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->hN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_3

    .line 1630
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hO:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 1631
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "stay_on_while_plugged_in"

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v1, 0x3

    :cond_b
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1635
    :cond_c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hU:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 1636
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bA()V

    goto/16 :goto_1

    .line 1638
    :cond_d
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hV:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 1639
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bB()V

    goto/16 :goto_1

    .line 1640
    :cond_e
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 1641
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->hP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/hl;->h(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 1642
    :cond_f
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hR:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 1643
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->hR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_10
    move v0, v1

    goto :goto_4

    .line 1646
    :cond_11
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hS:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_13

    .line 1647
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug_view_attributes"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->hS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto :goto_5

    .line 1650
    :cond_13
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_15

    .line 1651
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_quickboot"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->hQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v0, v1

    goto :goto_6

    .line 1653
    :cond_15
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hZ:Landroid/preference/Preference;

    if-ne p2, v0, :cond_16

    .line 1656
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/MiuiAppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1657
    :cond_16
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ia:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 1658
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bC()V

    goto/16 :goto_1

    .line 1659
    :cond_17
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ib:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    .line 1660
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bG()V

    goto/16 :goto_1

    .line 1661
    :cond_18
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ih:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 1662
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bM()V

    goto/16 :goto_1

    .line 1663
    :cond_19
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ii:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    .line 1664
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bO()V

    goto/16 :goto_1

    .line 1665
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ij:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 1666
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bQ()V

    goto/16 :goto_1

    .line 1667
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ik:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    .line 1668
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bT()V

    goto/16 :goto_1

    .line 1669
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->il:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 1670
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bU()V

    goto/16 :goto_1

    .line 1671
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->im:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1e

    .line 1672
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cC()V

    goto/16 :goto_1

    .line 1673
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iG:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 1674
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cD()V

    goto/16 :goto_1

    .line 1675
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iI:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_20

    .line 1676
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cK()V

    goto/16 :goto_1

    .line 1677
    :cond_20
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->in:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_21

    .line 1678
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bW()V

    goto/16 :goto_1

    .line 1679
    :cond_21
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->io:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_22

    .line 1680
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->bY()V

    goto/16 :goto_1

    .line 1681
    :cond_22
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iq:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 1682
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cc()V

    goto/16 :goto_1

    .line 1683
    :cond_23
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ir:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_24

    .line 1684
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ce()V

    goto/16 :goto_1

    .line 1685
    :cond_24
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->is:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_25

    .line 1686
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ch()V

    goto/16 :goto_1

    .line 1687
    :cond_25
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->it:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_26

    .line 1688
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cp()V

    goto/16 :goto_1

    .line 1689
    :cond_26
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_27

    .line 1690
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ct()V

    goto/16 :goto_1

    .line 1691
    :cond_27
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ie:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_28

    .line 1692
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cv()V

    goto/16 :goto_1

    .line 1693
    :cond_28
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->if:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_29

    .line 1694
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cx()V

    goto/16 :goto_1

    .line 1695
    :cond_29
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ig:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2a

    .line 1696
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cz()V

    goto/16 :goto_1

    .line 1697
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iE:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2b

    .line 1698
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cl()V

    goto/16 :goto_1

    .line 1699
    :cond_2b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iF:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2c

    .line 1700
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cn()V

    goto/16 :goto_1

    .line 1703
    :cond_2c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iM:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2d

    .line 1704
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cr()V

    goto/16 :goto_1

    .line 1705
    :cond_2d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iN:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2e

    .line 1706
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1707
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->iN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    goto/16 :goto_1

    .line 1708
    :cond_2e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iO:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2f

    .line 1709
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cM()V

    goto/16 :goto_1

    .line 1710
    :cond_2f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->t(Z)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 575
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 577
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->aY:Z

    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 581
    if-eqz v0, :cond_0

    .line 582
    const v1, 0x7f0905f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->hC:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 592
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iP:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 597
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 598
    const-string v3, "development_settings_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    .line 600
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 601
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->s(Z)V

    .line 603
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    .line 611
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->hF:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 612
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->s(Z)V

    goto :goto_0

    .line 594
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->iP:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->hO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public t(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1544
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    if-eq p1, v0, :cond_1

    .line 1545
    if-eqz p1, :cond_2

    .line 1546
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->iQ:Z

    .line 1547
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->cO()V

    .line 1548
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090619

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090618

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    .line 1555
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->iR:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1564
    :cond_1
    :goto_0
    return-void

    .line 1557
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->by()V

    .line 1558
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1560
    iput-boolean p1, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    .line 1561
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->hG:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->s(Z)V

    goto :goto_0
.end method
