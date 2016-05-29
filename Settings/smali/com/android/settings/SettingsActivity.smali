.class public Lcom/android/settings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/settings/ButtonBarHandler;


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 244
    const/16 v0, 0x3d

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/voice/VoiceInputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/UsageAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings/notification/ConditionProviderSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 309
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 215
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 316
    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 317
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    .line 350
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 359
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 373
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 374
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    return-void

    .line 215
    nop

    :array_0
    .array-data 4
        0x7f0f0255
        0x7f0f0256
        0x7f0f0257
        0x7f0f0259
        0x7f0f0258
        0x7f0f025b
        0x7f0f025c
        0x7f0f0260
        0x7f0f025f
        0x7f0f0261
        0x7f0f0263
        0x7f0f0262
        0x7f0f0267
        0x7f0f0268
        0x7f0f0269
        0x7f0f026b
        0x7f0f0264
        0x7f0f026a
        0x7f0f026d
        0x7f0f026e
        0x7f0f0273
        0x7f0f026f
        0x7f0f0270
        0x7f0f0265
        0x7f0f025e
        0x7f0f005e
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 978
    const v0, 0x7f060011

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    .line 979
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 980
    return-void
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 657
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1284
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1286
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1292
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1287
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1288
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1290
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 846
    :cond_0
    :goto_0
    return-object v0

    .line 836
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 839
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 414
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 416
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 417
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v2

    .line 481
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 482
    sget-object v3, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 481
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 473
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCategoriesFromResource(ILjava/util/List;)V
    .locals 22
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 990
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v12, 0x0

    .line 992
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 993
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 997
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1001
    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1002
    .local v10, "nodeName":Ljava/lang/String;
    const-string v17, "dashboard-categories"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1003
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_0
    move-exception v5

    .line 1124
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1128
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v17

    .line 1008
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 1010
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 1012
    .local v11, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_19

    .line 1013
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 1017
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1018
    const-string v17, "dashboard-category"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 1019
    new-instance v3, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v3}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 1021
    .local v3, "category":Lcom/android/settings/dashboard/DashboardCategory;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1023
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 1027
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1029
    .local v15, "tv":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1030
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 1031
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 1036
    :cond_6
    :goto_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1038
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1040
    .local v6, "innerDepth":I
    :cond_7
    :goto_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_17

    .line 1041
    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 1045
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1046
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v17, "dashboard-tile"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 1047
    new-instance v14, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v14}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 1049
    .local v14, "tile":Lcom/android/settings/dashboard/DashboardTile;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1051
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 1054
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1056
    if-eqz v15, :cond_9

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1057
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1058
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 1063
    :cond_9
    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1065
    if-eqz v15, :cond_a

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1066
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1067
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 1072
    :cond_a
    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 1074
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1076
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1078
    if-nez v4, :cond_b

    .line 1079
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1082
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    :cond_b
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1084
    .local v7, "innerDepth2":I
    :cond_c
    :goto_5
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v7, :cond_13

    .line 1085
    :cond_d
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 1089
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1090
    .local v9, "innerNodeName2":Ljava/lang/String;
    const-string v17, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "extra"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1092
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1125
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerDepth2":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v15    # "tv":Landroid/util/TypedValue;
    .end local v16    # "type":I
    :catch_1
    move-exception v5

    .line 1126
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1033
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "outerDepth":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tv":Landroid/util/TypedValue;
    .restart local v16    # "type":I
    :cond_e
    :try_start_4
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1060
    .restart local v6    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    .restart local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_f
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1069
    :cond_10
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1094
    .restart local v7    # "innerDepth2":I
    .restart local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_11
    const-string v17, "intent"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v12, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 1098
    :cond_12
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 1102
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v17

    if-lez v17, :cond_14

    .line 1103
    iput-object v4, v14, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1104
    const/4 v4, 0x0

    .line 1108
    :cond_14
    iget-wide v0, v14, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x7f0f0258

    cmp-long v17, v18, v20

    if-nez v17, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1109
    :cond_15
    invoke-virtual {v3, v14}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_2

    .line 1113
    .end local v7    # "innerDepth2":I
    .end local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_16
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1117
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1119
    .end local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v6    # "innerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tv":Landroid/util/TypedValue;
    :cond_18
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1128
    :cond_19
    if-eqz v12, :cond_1a

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1130
    :cond_1a
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1310
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1372
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 1374
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1375
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1377
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1380
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 698
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 699
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 700
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 704
    :goto_0
    const/4 v1, 0x0

    .line 710
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 702
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 708
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 715
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 716
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 717
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 721
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 724
    :cond_0
    return-void

    .line 719
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 661
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 662
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 663
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 664
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 666
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 670
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 672
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 673
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 676
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 683
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 684
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 686
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 685
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 948
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 953
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 954
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0f0194

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 955
    if-eqz p7, :cond_1

    .line 956
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 958
    :cond_1
    if-eqz p4, :cond_2

    .line 959
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 961
    :cond_2
    if-lez p5, :cond_4

    .line 962
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 966
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 967
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 968
    return-object v0

    .line 963
    :cond_4
    if-eqz p6, :cond_3

    .line 964
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1352
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0194

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1356
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1357
    check-cast v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 1363
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1364
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1359
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f090937

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHomeSettingTiles(Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1247
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1248
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1279
    :goto_0
    return v2

    .line 1253
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1254
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1259
    sget-boolean v4, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1260
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1261
    invoke-static {p0}, Lcom/android/settings/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1263
    goto :goto_0

    .line 1268
    :cond_2
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1269
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1271
    :cond_3
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "show"

    sget-object v18, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v19, "eng"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1137
    .local v11, "showDev":Z
    const-string v16, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1139
    .local v15, "um":Landroid/os/UserManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 1140
    .local v12, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_16

    .line 1142
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardCategory;

    .line 1145
    .local v3, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget-wide v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 1146
    .local v7, "id":I
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v16

    add-int/lit8 v8, v16, -0x1

    .line 1147
    .local v8, "n":I
    :goto_1
    if-ltz v8, :cond_15

    .line 1149
    invoke-virtual {v3, v8}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v14

    .line 1150
    .local v14, "tile":Lcom/android/settings/dashboard/DashboardTile;
    const/4 v10, 0x0

    .line 1151
    .local v10, "removeTile":Z
    iget-wide v0, v14, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 1152
    const v16, 0x7f0f025a

    move/from16 v0, v16

    if-eq v7, v0, :cond_0

    const v16, 0x7f0f0266

    move/from16 v0, v16

    if-ne v7, v0, :cond_4

    .line 1153
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1154
    const/4 v10, 0x1

    .line 1232
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1234
    const/4 v10, 0x1

    .line 1237
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 1238
    invoke-virtual {v3, v8}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 1240
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 1241
    goto :goto_1

    .line 1156
    :cond_4
    const v16, 0x7f0f0256

    move/from16 v0, v16

    if-ne v7, v0, :cond_5

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.wifi"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1159
    const/4 v10, 0x1

    goto :goto_2

    .line 1161
    :cond_5
    const v16, 0x7f0f0257

    move/from16 v0, v16

    if-ne v7, v0, :cond_6

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.bluetooth"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1164
    const/4 v10, 0x1

    goto :goto_2

    .line 1166
    :cond_6
    const v16, 0x7f0f0259

    move/from16 v0, v16

    if-ne v7, v0, :cond_7

    .line 1168
    const-string v16, "network_management"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    .line 1171
    .local v9, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v9}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-nez v16, :cond_1

    .line 1172
    const/4 v10, 0x1

    goto :goto_2

    .line 1177
    .end local v9    # "netManager":Landroid/os/INetworkManagementService;
    :cond_7
    const v16, 0x7f0f0262

    move/from16 v0, v16

    if-ne v7, v0, :cond_8

    .line 1180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 1181
    const/4 v10, 0x1

    goto :goto_2

    .line 1183
    :cond_8
    const v16, 0x7f0f025e

    move/from16 v0, v16

    if-ne v7, v0, :cond_9

    .line 1184
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/SettingsActivity;->updateHomeSettingTiles(Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1185
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1187
    :cond_9
    const v16, 0x7f0f0264

    move/from16 v0, v16

    if-ne v7, v0, :cond_d

    .line 1188
    const-string v16, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->getUserCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    const/4 v4, 0x1

    .line 1191
    .local v4, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v16

    if-nez v16, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1195
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1188
    .end local v4    # "hasMultipleUsers":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    .line 1197
    :cond_d
    const v16, 0x7f0f0265

    move/from16 v0, v16

    if-ne v7, v0, :cond_10

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.nfc"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 1199
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1202
    :cond_e
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 1203
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.nfc.hce"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1206
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1209
    .end local v2    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_10
    const v16, 0x7f0f0270

    move/from16 v0, v16

    if-ne v7, v0, :cond_11

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.software.print"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 1212
    .local v5, "hasPrintingSupport":Z
    if-nez v5, :cond_1

    .line 1213
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1215
    .end local v5    # "hasPrintingSupport":Z
    :cond_11
    const v16, 0x7f0f0271

    move/from16 v0, v16

    if-ne v7, v0, :cond_13

    .line 1216
    if-eqz v11, :cond_12

    const-string v16, "no_debugging_features"

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1218
    :cond_12
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1220
    :cond_13
    const v16, 0x7f0f0272

    move/from16 v0, v16

    if-ne v7, v0, :cond_1

    .line 1222
    const/4 v13, 0x0

    .line 1224
    .local v13, "supported":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "eu.chainfire.supersu"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v16, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v17, 0xb9

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_14

    const/4 v13, 0x1

    .line 1227
    :goto_4
    if-nez v13, :cond_1

    .line 1228
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1224
    :cond_14
    const/4 v13, 0x0

    goto :goto_4

    .line 1140
    .end local v10    # "removeTile":Z
    .end local v13    # "supported":Z
    .end local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1174
    .restart local v9    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v10    # "removeTile":Z
    .restart local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :catch_0
    move-exception v16

    goto/16 :goto_2

    .line 1243
    .end local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v7    # "id":I
    .end local v8    # "n":I
    .end local v9    # "netManager":Landroid/os/INetworkManagementService;
    .end local v10    # "removeTile":Z
    .end local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_16
    return-void

    .line 1225
    .restart local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v7    # "id":I
    .restart local v8    # "n":I
    .restart local v10    # "removeTile":Z
    .restart local v13    # "supported":Z
    .restart local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :catch_1
    move-exception v16

    goto :goto_4
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 920
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 922
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 809
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 810
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 813
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 814
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 815
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 817
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 818
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 822
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 823
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 826
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 820
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 826
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 802
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 804
    :goto_1
    return v1

    .line 801
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1369
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 693
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 424
    invoke-static {p0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/Index;->update()V

    .line 425
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 489
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 495
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 499
    :cond_0
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 503
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    .line 508
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 509
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 511
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 516
    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 520
    .local v20, "isSubSettings":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 523
    .local v22, "themeResId":I
    const v2, 0x7f0a0048

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    const v2, 0x7f0a004a

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    .line 525
    const v2, 0x7f0a0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 529
    .end local v22    # "themeResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0400b0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 532
    const v2, 0x7f0f0194

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 536
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_4

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/search/Index;->update()V

    .line 540
    :cond_4
    if-eqz p1, :cond_d

    .line 543
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 544
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 548
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 550
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_5

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 556
    :cond_5
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 557
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 558
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 590
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_6

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 595
    :cond_6
    const v2, 0x7f0f0195

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 598
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 600
    const v2, 0x7f0f0127

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 601
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 602
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 604
    const v2, 0x7f0f0128

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 605
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    const v2, 0x7f0f0129

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 612
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    const v2, 0x7f0f003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 628
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 629
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 637
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 638
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 639
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 645
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 646
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 651
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 652
    return-void

    .line 505
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 516
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 529
    .restart local v20    # "isSubSettings":Z
    :cond_c
    const v2, 0x7f0400b1

    goto/16 :goto_2

    .line 561
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    .line 564
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_e

    .line 565
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 574
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 576
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 577
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 567
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_e
    if-eqz v20, :cond_f

    .line 568
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 569
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 571
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 572
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 581
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 583
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 584
    const v2, 0x7f090936

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 585
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 633
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 642
    :cond_12
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 468
    :goto_0
    return v2

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 443
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f110003

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 448
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f0f0281

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 449
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 451
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 452
    goto :goto_0

    .line 455
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v2, :cond_3

    .line 456
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 459
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 460
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 461
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 463
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_4

    .line 464
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 466
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v2, v4

    .line 468
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 791
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 793
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 796
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1344
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1345
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1348
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1336
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1338
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 783
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 785
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 787
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 392
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 393
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const v3, 0x7f09032e

    .line 403
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 405
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    const v3, 0x7f09013f

    goto :goto_0

    .line 400
    :cond_2
    const v3, 0x7f09013d

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1323
    const/4 v0, 0x0

    .line 1325
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1314
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1315
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1316
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 755
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 757
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 758
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_0

    .line 759
    iput v0, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 760
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsActivity;->invalidateCategories(Z)V

    .line 763
    :cond_0
    new-instance v1, Lcom/android/settings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 769
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 772
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 774
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 776
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 779
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 728
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 730
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 731
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 734
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 735
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 737
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 743
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 744
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 746
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    return-void

    .line 743
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 746
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 431
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 434
    :cond_0
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1388
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1305
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 933
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0f0194

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 934
    if-eqz p2, :cond_0

    .line 935
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 936
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 940
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 941
    return-void

    .line 938
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 870
    const/4 v6, 0x0

    .line 871
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 872
    if-eqz p4, :cond_1

    .line 873
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 879
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 881
    return-void

    .line 876
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 897
    const/4 v4, 0x0

    .line 898
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 899
    if-eqz p4, :cond_1

    .line 900
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 906
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 908
    return-void

    .line 903
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method
