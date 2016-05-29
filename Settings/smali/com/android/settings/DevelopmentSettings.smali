.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/SwitchPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private mProcessStats:Landroid/preference/PreferenceScreen;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUseAwesomePlayer:Landroid/preference/SwitchPreference;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "262144"

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1643
    new-instance v0, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 1605
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 379
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 4

    .prologue
    .line 1293
    new-instance v0, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 1301
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0905a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0904c4

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1308
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 731
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    .local v0, "enabled":Z
    :goto_0
    return v1

    .line 734
    .end local v0    # "enabled":Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 735
    .restart local v0    # "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1526
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1528
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1532
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1535
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1536
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1538
    :cond_2
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 679
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v4

    .line 682
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 686
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v3, "verification":Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 689
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 690
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 694
    goto :goto_0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 393
    .local v0, "pref":Landroid/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 394
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    const-string v1, "enable_adb"

    if-ne p1, v1, :cond_1

    const-string v1, "charging"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090597

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1634
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1636
    :cond_0
    :goto_0
    return v1

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 422
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 424
    const/4 v0, 0x1

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 562
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 564
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 565
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 567
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 563
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 571
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 572
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 573
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 574
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 579
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 580
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 581
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 582
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 583
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 585
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 636
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 436
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 437
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 439
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 440
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 703
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

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 1475
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0905a1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0905a2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 698
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

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 504
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 505
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 506
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 508
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 509
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 513
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 515
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 517
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 519
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 520
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 522
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const-string v2, "mock_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 524
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v5, "debug_view_attributes"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    :goto_6
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 526
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 527
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 528
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 529
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 531
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 533
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 534
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 536
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 537
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 538
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 539
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 540
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 541
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 542
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 543
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 544
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 545
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 546
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 547
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 548
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 549
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 550
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 551
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 552
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 553
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 554
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 555
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 556
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 557
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUseNuplayerOptions()V

    .line 558
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 559
    return-void

    :cond_2
    move v2, v4

    .line 506
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 509
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 513
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 515
    goto/16 :goto_3

    :cond_6
    move v2, v4

    .line 517
    goto/16 :goto_4

    :cond_7
    move v2, v4

    .line 522
    goto/16 :goto_5

    :cond_8
    move v3, v4

    .line 524
    goto :goto_6
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1188
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1189
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1190
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1191
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 1168
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1169
    .local v1, "scale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 1170
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1172
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1173
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1174
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1175
    .local v2, "val":F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 1176
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1177
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1185
    .end local v0    # "i":I
    .end local v1    # "scale":F
    .end local v2    # "val":F
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1173
    .restart local v0    # "i":I
    .restart local v1    # "scale":F
    .restart local v2    # "val":F
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    .end local v2    # "val":F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1182
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1183
    .end local v0    # "i":I
    .end local v1    # "scale":F
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1253
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1254
    .local v1, "limit":I
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1255
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1256
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1257
    .local v2, "val":I
    if-lt v2, v1, :cond_1

    .line 1258
    if-eqz v0, :cond_0

    .line 1259
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1261
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1262
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1270
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "val":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1255
    .restart local v0    # "i":I
    .restart local v1    # "limit":I
    .restart local v2    # "val":I
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1266
    .end local v2    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1267
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1268
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 707
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 709
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 711
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 712
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 713
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 723
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 709
    goto :goto_0

    .line 715
    .restart local v0    # "adbEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 716
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 717
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 718
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 721
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1136
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

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
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1138
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 922
    const-string v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 924
    const-string v1, ""

    .line 927
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 928
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 929
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 930
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 931
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 937
    :goto_1
    return-void

    .line 928
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 936
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 949
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 645
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 647
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 652
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 653
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 657
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0907ae

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 659
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 664
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 645
    goto :goto_0

    .line 653
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 654
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 661
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0907ad

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 773
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 774
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 776
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 777
    .local v4, "reply":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 778
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 780
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 782
    .local v6, "showCpu":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 783
    .local v2, "enableGL":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 784
    .local v7, "showUpdates":I
    iget-object v11, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 786
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 787
    .local v5, "showBackground":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .local v1, "disableOverlays":I
    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 789
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v3    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "reply":Landroid/os/Parcel;
    .restart local v6    # "showCpu":I
    .restart local v7    # "showUpdates":I
    :cond_1
    move v10, v9

    .line 784
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v5    # "showBackground":I
    :cond_2
    move v8, v9

    .line 788
    goto :goto_1

    .line 792
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1035
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

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
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1037
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 832
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 588
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 589
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 590
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 594
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 595
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 596
    move v3, v2

    .line 600
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 601
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 604
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 594
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1162
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

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
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1164
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0b0042

    .line 1087
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1088
    const-string v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1090
    const-string v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    if-nez v0, :cond_0

    .line 1092
    const-string v0, "256K"

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1096
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1097
    .local v4, "titles":[Ljava/lang/String;
    const-string v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1098
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1101
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1103
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1104
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1106
    :cond_2
    move v2, v1

    .line 1110
    :cond_3
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1111
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1114
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1103
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "summaries":[Ljava/lang/String;
    .restart local v4    # "titles":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 841
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1228
    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1230
    const-string v1, ""

    .line 1233
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1234
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1235
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1236
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1237
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1243
    :goto_1
    return-void

    .line 1234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1241
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1242
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1203
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1206
    const-string v1, ""

    .line 1209
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1210
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1211
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1213
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1219
    :goto_1
    return-void

    .line 1210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1218
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090736

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 616
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090735

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 756
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

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
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 758
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1288
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

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
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1290
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 913
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 902
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 874
    const-string v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 877
    const-string v1, "hide"

    .line 880
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 881
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 882
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 884
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 890
    :goto_1
    return-void

    .line 881
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 889
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 766
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

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
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 768
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 958
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 959
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 961
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 962
    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 966
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 967
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 969
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const v7, 0x7f0905eb

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f0905e7

    invoke-virtual {p0, v8}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 978
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 959
    goto :goto_0

    .line 972
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 975
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 747
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 748
    return-void

    .line 747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 849
    const-string v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 851
    const-string v1, ""

    .line 854
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 855
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 856
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 858
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 864
    :goto_1
    return-void

    .line 855
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 863
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1024
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1026
    return-void
.end method

.method private updateUseNuplayerOptions()V
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.media.use-awesome"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1015
    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 667
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 670
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1070
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1071
    return-void

    .line 1069
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1079
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1080
    return-void

    .line 1078
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1048
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

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
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1051
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1061
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1062
    return-void

    .line 1060
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 986
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 988
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 989
    const-string v6, "accessibility_display_daltonizer"

    const/4 v7, -0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 993
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 998
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return v4

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 986
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_1
    move v4, v5

    .line 998
    goto :goto_1
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1195
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1196
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1197
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    .end local v0    # "scale":F
    :goto_1
    return-void

    .line 1195
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1274
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1275
    .local v0, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1276
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    .end local v0    # "limit":I
    :goto_1
    return-void

    .line 1274
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1277
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 619
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 620
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    return-void

    .line 621
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1141
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1142
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1144
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1146
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1147
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1151
    :goto_1
    return-void

    .line 1142
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1149
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 940
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 943
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 944
    return-void

    .line 940
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 952
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 955
    return-void

    .line 952
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 628
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 815
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 816
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 818
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 819
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 820
    .local v1, "disableOverlays":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1041
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1043
    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1045
    return-void

    .line 1041
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1043
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 835
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 837
    return-void

    .line 835
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1155
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    return-void

    .line 1157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1117
    const-string v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1119
    sput-object v0, Lcom/android/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1121
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1126
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1127
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1128
    const-string v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1133
    return-void

    .line 1121
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    goto :goto_0

    .line 1129
    .restart local v3    # "size":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DevelopmentSettings"

    const-string v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 844
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 846
    return-void

    .line 844
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1246
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1248
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1249
    return-void

    .line 1246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1224
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1225
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1285
    return-void

    .line 1282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 916
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 919
    return-void

    .line 916
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 905
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 908
    return-void

    .line 905
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 893
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 896
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 897
    return-void

    .line 893
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 763
    return-void

    .line 761
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 798
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 799
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 801
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 802
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 803
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1003
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1004
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1005
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1010
    :goto_0
    return-void

    .line 1007
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1008
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 744
    :goto_1
    return-void

    .line 740
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 867
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 870
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 871
    return-void

    .line 867
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1032
    return-void

    .line 1029
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUseAwesomePlayerOptions()V
    .locals 2

    .prologue
    .line 1018
    const-string v1, "persist.sys.media.use-awesome"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1021
    return-void

    .line 1018
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 675
    return-void

    .line 673
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1075
    return-void

    .line 1074
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1084
    return-void

    .line 1083
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1057
    return-void

    .line 1054
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1066
    return-void

    .line 1065
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 412
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 413
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1339
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1340
    if-ne p2, v1, :cond_0

    .line 1341
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1342
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1343
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    if-nez p1, :cond_3

    .line 1346
    if-ne p2, v1, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1350
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1354
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 1541
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 1542
    if-ne p2, v4, :cond_1

    .line 1543
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1544
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1546
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1547
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1548
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 1553
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 1554
    if-ne p2, v4, :cond_0

    .line 1556
    :try_start_0
    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1557
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 1558
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1559
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 1560
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DevelopmentSettings"

    const-string v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1563
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 1564
    if-ne p2, v4, :cond_4

    .line 1565
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1566
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1568
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1569
    iget-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 1572
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 257
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 260
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 262
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 266
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_debugging_features"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    .line 269
    new-instance v2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 375
    :goto_0
    return-void

    .line 273
    :cond_1
    const v2, 0x7f060014

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 275
    const-string v2, "debug_debugging_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 278
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string v2, "enable_adb"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 279
    const-string v2, "clear_adb_keys"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 280
    const-string v2, "ro.adb.secure"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    if-eqz v0, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v2, "enable_terminal"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.terminal"

    invoke-static {v2, v3}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 292
    :cond_3
    const-string v2, "bugreport"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 293
    const-string v2, "bugreport_in_power"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 294
    const-string v2, "keep_screen_on"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    .line 295
    const-string v2, "bt_hci_snoop_log"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 296
    const-string v2, "oem_unlock_enable"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 297
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v2

    if-nez v2, :cond_4

    .line 298
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 299
    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 301
    :cond_4
    const-string v2, "allow_mock_location"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    .line 302
    const-string v2, "debug_view_attributes"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 303
    const-string v2, "local_backup_password"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 304
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 308
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 310
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 311
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 314
    :cond_5
    const-string v2, "debug_app"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 315
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v2, "wait_for_debugger"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 317
    const-string v2, "verify_apps_over_usb"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 318
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v2

    if-nez v2, :cond_6

    .line 319
    if-eqz v0, :cond_8

    .line 320
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_6
    :goto_1
    const-string v2, "strict_mode"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 326
    const-string v2, "pointer_location"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 327
    const-string v2, "show_touches"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 328
    const-string v2, "show_screen_updates"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 329
    const-string v2, "disable_overlays"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 330
    const-string v2, "show_cpu_usage"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 331
    const-string v2, "force_hw_ui"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 332
    const-string v2, "force_msaa"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 333
    const-string v2, "track_frame_time"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 334
    const-string v2, "show_non_rect_clip"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 335
    const-string v2, "show_hw_screen_udpates"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 336
    const-string v2, "show_hw_layers_udpates"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 337
    const-string v2, "debug_layout"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 338
    const-string v2, "force_rtl_layout_all_locales"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 339
    const-string v2, "debug_hw_overdraw"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 340
    const-string v2, "wifi_display_certification"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 341
    const-string v2, "wifi_verbose_logging"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 342
    const-string v2, "wifi_aggressive_handover"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 343
    const-string v2, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 344
    const-string v2, "select_logd_size"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 346
    const-string v2, "window_animation_scale"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 347
    const-string v2, "transition_animation_scale"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 348
    const-string v2, "animator_duration_scale"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 349
    const-string v2, "overlay_display_devices"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 350
    const-string v2, "enable_opengl_traces"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 351
    const-string v2, "simulate_color_space"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 352
    const-string v2, "use_awesomeplayer"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    .line 353
    const-string v2, "usb_audio"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 355
    const-string v2, "immediately_destroy_activities"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 357
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v2, "app_process_limit"

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 362
    const-string v2, "show_all_anrs"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 364
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v2, "hdcp_checking"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 368
    .local v1, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v1, :cond_7

    .line 369
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 373
    :cond_7
    const-string v2, "proc_stats"

    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    .line 374
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 322
    .end local v1    # "hdcpChecking":Landroid/preference/Preference;
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1595
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1596
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 490
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1579
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1580
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1583
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1590
    :cond_1
    :goto_0
    return-void

    .line 1584
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1585
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 1586
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1588
    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1483
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 1486
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1522
    :goto_0
    return v0

    .line 1488
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1489
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1491
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 1492
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1494
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 1495
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1497
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 1498
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1500
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1501
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1503
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1504
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1506
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1507
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1509
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1510
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1512
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1513
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1515
    :cond_9
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1516
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1518
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1519
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    move v0, v1

    .line 1522
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1360
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return v2

    .line 1364
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_4

    .line 1365
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1366
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1367
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1368
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0905b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0905b2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040013

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040009

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1374
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1376
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "adb_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1378
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1379
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1380
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1382
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 1383
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1384
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0905b4

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1389
    :cond_6
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_8

    .line 1390
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1391
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    .line 1394
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_a

    .line 1395
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bugreport_in_power_menu"

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_2

    .line 1398
    :cond_a
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_c

    .line 1399
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto :goto_3

    .line 1403
    :cond_c
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_d

    .line 1404
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1405
    :cond_d
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_f

    .line 1406
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1408
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1410
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1413
    :cond_f
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_11

    .line 1414
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    move v1, v2

    goto :goto_4

    .line 1417
    :cond_11
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_13

    .line 1418
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "debug_view_attributes"

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    move v1, v2

    goto :goto_5

    .line 1421
    :cond_13
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_14

    .line 1422
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/AppPicker;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1423
    :cond_14
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_15

    .line 1424
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1425
    :cond_15
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_16

    .line 1426
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1427
    :cond_16
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_17

    .line 1428
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1429
    :cond_17
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_18

    .line 1430
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1431
    :cond_18
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_19

    .line 1432
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1433
    :cond_19
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1a

    .line 1434
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1435
    :cond_1a
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1b

    .line 1436
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1437
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1c

    .line 1438
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1439
    :cond_1c
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1d

    .line 1440
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1441
    :cond_1d
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1e

    .line 1442
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1443
    :cond_1e
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1f

    .line 1444
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1445
    :cond_1f
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_20

    .line 1446
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1447
    :cond_20
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_21

    .line 1448
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1449
    :cond_21
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_22

    .line 1450
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1451
    :cond_22
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_23

    .line 1452
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1453
    :cond_23
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_24

    .line 1454
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1455
    :cond_24
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_25

    .line 1456
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1457
    :cond_25
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_26

    .line 1458
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 1459
    :cond_26
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_27

    .line 1460
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 1461
    :cond_27
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_28

    .line 1462
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 1463
    :cond_28
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_29

    .line 1464
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeUseAwesomePlayerOptions()V

    goto/16 :goto_0

    .line 1465
    :cond_29
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2a

    .line 1466
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 1468
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 444
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 446
    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 449
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 450
    if-eqz v1, :cond_0

    .line 451
    const v2, 0x7f090591

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 484
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 461
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 467
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "development_settings_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 469
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 470
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 472
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v2, :cond_3

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 480
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 481
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 483
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto :goto_0

    .line 463
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1312
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 1316
    if-eqz p2, :cond_3

    .line 1317
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1318
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1319
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905b5

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

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1326
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1328
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1329
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1331
    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1332
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1599
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1601
    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1603
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 498
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 499
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 500
    return-void
.end method
