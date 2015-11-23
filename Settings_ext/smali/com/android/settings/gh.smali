.class public Lcom/android/settings/gh;
.super Lmiui/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/settings/ac;


# static fields
.field private static wK:Z

.field private static final wO:[Ljava/lang/String;

.field private static final wP:[Ljava/lang/String;


# instance fields
.field private dg:Landroid/widget/Button;

.field private kr:Lcom/android/settings/widget/SwitchBar;

.field private mCategories:Ljava/util/ArrayList;

.field private mHandler:Landroid/os/Handler;

.field private rQ:[I

.field private tG:Landroid/content/SharedPreferences;

.field private wL:Ljava/lang/String;

.field private wM:Ljava/lang/CharSequence;

.field private wN:I

.field private wQ:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private wR:Z

.field private wS:Landroid/content/BroadcastReceiver;

.field private final wT:Lcom/android/settings/search/b;

.field private wU:Z

.field private wV:Z

.field private wW:Z

.field private wX:Z

.field private wY:Landroid/view/ViewGroup;

.field private wZ:Landroid/widget/SearchView;

.field private xa:Landroid/view/MenuItem;

.field private xb:Z

.field private xc:Lcom/android/settings/dashboard/h;

.field private xd:Ljava/lang/String;

.field private xe:Z

.field private xf:I

.field private xg:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    sput-boolean v3, Lcom/android/settings/gh;->wK:Z

    .line 247
    const/16 v0, 0x3c

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

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/voice/VoiceInputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/UsageAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/notification/ConditionProviderSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/quicklaunch/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/gh;->wO:[Ljava/lang/String;

    .line 312
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/gh;->wP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 218
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/gh;->rQ:[I

    .line 319
    iput-boolean v2, p0, Lcom/android/settings/gh;->wR:Z

    .line 320
    new-instance v0, Lcom/android/settings/gi;

    invoke-direct {v0, p0}, Lcom/android/settings/gi;-><init>(Lcom/android/settings/gh;)V

    iput-object v0, p0, Lcom/android/settings/gh;->wS:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/android/settings/search/b;

    invoke-direct {v0}, Lcom/android/settings/search/b;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gh;->wT:Lcom/android/settings/search/b;

    .line 353
    iput-boolean v1, p0, Lcom/android/settings/gh;->xb:Z

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    .line 362
    new-instance v0, Lcom/android/settings/gj;

    invoke-direct {v0, p0}, Lcom/android/settings/gj;-><init>(Lcom/android/settings/gh;)V

    iput-object v0, p0, Lcom/android/settings/gh;->mHandler:Landroid/os/Handler;

    .line 376
    iput-boolean v1, p0, Lcom/android/settings/gh;->xe:Z

    .line 377
    iput v2, p0, Lcom/android/settings/gh;->xf:I

    return-void

    .line 218
    nop

    :array_0
    .array-data 4
        0x7f100356
        0x7f100357
        0x7f100353
        0x7f100359
        0x7f100358
        0x7f10035b
        0x7f10035c
        0x7f10035f
        0x7f10035e
        0x7f100360
        0x7f100362
        0x7f100361
        0x7f100366
        0x7f100367
        0x7f100368
        0x7f100369
        0x7f100363
        0x7f10034e
        0x7f10036b
        0x7f10036c
        0x7f10034b
        0x7f10036d
        0x7f10036e
        0x7f100364
        0x7f10035d
        0x7f10007d
    .end array-data
.end method

.method private L(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 427
    iget-object v0, p0, Lcom/android/settings/gh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 429
    iput v1, v0, Landroid/os/Message;->what:I

    .line 430
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_data_force_refresh"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 975
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/gh;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_0
    if-nez p2, :cond_1

    .line 981
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 983
    :cond_1
    const-string v0, ":android:show_fragment_title"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 985
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 986
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 987
    const v2, 0x7f100282

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 988
    if-eqz p7, :cond_2

    .line 989
    iget-object v2, p0, Lcom/android/settings/gh;->wY:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 991
    :cond_2
    if-eqz p4, :cond_3

    .line 992
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 994
    :cond_3
    if-lez p5, :cond_5

    .line 995
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 999
    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1000
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1001
    return-object v0

    .line 996
    :cond_5
    if-eqz p6, :cond_4

    .line 997
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private a(ILjava/util/List;)V
    .locals 12

    .prologue
    .line 1023
    const/4 v1, 0x0

    .line 1025
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/gh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1026
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1030
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1034
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1035
    const-string v3, "dashboard-categories"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1036
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with <preference-categories> tag; found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing categories"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1161
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0

    .line 1041
    :cond_3
    const/4 v0, 0x0

    .line 1043
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1045
    :cond_4
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_19

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_19

    .line 1046
    :cond_5
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    .line 1050
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1051
    const-string v5, "dashboard-category"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1052
    new-instance v4, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v4}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 1054
    sget-object v5, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/gh;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1056
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 1060
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1062
    if-eqz v6, :cond_6

    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 1063
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_e

    .line 1064
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    iput v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 1069
    :cond_6
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1071
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1073
    :cond_7
    :goto_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_17

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v5, :cond_17

    .line 1074
    :cond_8
    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    .line 1078
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1079
    const-string v7, "dashboard-tile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1080
    new-instance v6, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v6}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 1082
    sget-object v7, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {p0, v2, v7}, Lcom/android/settings/gh;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1084
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v6, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 1087
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 1089
    if-eqz v8, :cond_9

    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 1090
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_f

    .line 1091
    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 1096
    :cond_9
    :goto_3
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 1098
    if-eqz v8, :cond_a

    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 1099
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_10

    .line 1100
    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 1105
    :cond_a
    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 1107
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1109
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1111
    if-nez v0, :cond_b

    .line 1112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1115
    :cond_b
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1117
    :cond_c
    :goto_5
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_13

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_13

    .line 1118
    :cond_d
    const/4 v9, 0x3

    if-eq v8, v9, :cond_c

    const/4 v9, 0x4

    if-eq v8, v9, :cond_c

    .line 1122
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1123
    const-string v9, "extra"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1124
    invoke-virtual {p0}, Lcom/android/settings/gh;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "extra"

    invoke-virtual {v8, v9, v2, v0}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1125
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1158
    :catch_1
    move-exception v0

    .line 1159
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing categories"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1066
    :cond_e
    :try_start_4
    iget-object v6, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1093
    :cond_f
    iget-object v8, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto :goto_3

    .line 1102
    :cond_10
    iget-object v8, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto :goto_4

    .line 1127
    :cond_11
    const-string v9, "intent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/gh;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v1, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 1131
    :cond_12
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1135
    :cond_13
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 1136
    iput-object v0, v6, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1137
    const/4 v0, 0x0

    .line 1141
    :cond_14
    iget-wide v8, v6, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v10, 0x7f100358

    cmp-long v7, v8, v10

    if-nez v7, :cond_15

    invoke-static {p0}, Lcom/android/settings/hl;->U(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1142
    :cond_15
    invoke-virtual {v4, v6}, Lcom/android/settings/dashboard/DashboardCategory;->b(Lcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_2

    .line 1146
    :cond_16
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1150
    :cond_17
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1152
    :cond_18
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1161
    :cond_19
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1163
    :cond_1a
    return-void
.end method

.method private a(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 1

    .prologue
    .line 738
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    .line 739
    if-lez v0, :cond_1

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 744
    :goto_0
    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->setTitle(Ljava/lang/CharSequence;)V

    .line 747
    :cond_0
    return-void

    .line 742
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/gh;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/gh;->f(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1270
    const-string v2, "home_prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/gh;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1271
    const-string v3, "do_show"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1302
    :goto_0
    return v0

    .line 1276
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/gh;->gI()I

    move-result v3

    iput v3, p0, Lcom/android/settings/gh;->xf:I

    .line 1277
    iget v3, p0, Lcom/android/settings/gh;->xf:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1282
    sget-boolean v3, Lcom/android/settings/gh;->wK:Z

    if-eqz v3, :cond_1

    .line 1283
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/gh;->wK:Z

    .line 1284
    invoke-static {p0}, Lcom/android/settings/dashboard/g;->a(Landroid/app/Activity;)V

    :cond_1
    move v0, v1

    .line 1286
    goto :goto_0

    .line 1291
    :cond_2
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 1292
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1294
    :cond_3
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "do_show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1296
    :catch_0
    move-exception v1

    .line 1298
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/gh;)Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/settings/gh;->wR:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/gh;Z)Z
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/settings/gh;->wR:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/gh;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/gh;Z)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/gh;->L(Z)V

    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 1010
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1011
    const v0, 0x7f06001e

    invoke-direct {p0, v0, p1}, Lcom/android/settings/gh;->a(ILjava/util/List;)V

    .line 1012
    invoke-direct {p0, p1}, Lcom/android/settings/gh;->g(Ljava/util/List;)V

    .line 1013
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1166
    iget-object v0, p0, Lcom/android/settings/gh;->tG:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1170
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    move v6, v4

    .line 1173
    :goto_0
    if-ge v6, v8, :cond_13

    .line 1175
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardCategory;

    .line 1178
    iget-wide v10, v1, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v2, v10

    .line 1179
    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardCategory;->nI()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    .line 1180
    :goto_1
    if-ltz v5, :cond_12

    .line 1182
    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/DashboardCategory;->bg(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    .line 1184
    iget-wide v10, v2, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v9, v10

    .line 1185
    const v10, 0x7f10035a

    if-eq v9, v10, :cond_0

    const v10, 0x7f100365

    if-ne v9, v10, :cond_3

    .line 1186
    :cond_0
    invoke-static {p0, v2}, Lcom/android/settings/hl;->a(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v3

    .line 1255
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/gh;->rQ:[I

    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v3

    .line 1260
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardCategory;->nI()I

    move-result v2

    if-ge v5, v2, :cond_2

    .line 1261
    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/DashboardCategory;->bf(I)V

    .line 1263
    :cond_2
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    .line 1264
    goto :goto_1

    .line 1189
    :cond_3
    const v10, 0x7f100357

    if-ne v9, v10, :cond_4

    .line 1191
    invoke-virtual {p0}, Lcom/android/settings/gh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.wifi"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v3

    .line 1192
    goto :goto_2

    .line 1194
    :cond_4
    const v10, 0x7f100353

    if-ne v9, v10, :cond_5

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/gh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.bluetooth"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v3

    .line 1197
    goto :goto_2

    .line 1199
    :cond_5
    const v10, 0x7f100359

    if-ne v9, v10, :cond_6

    .line 1201
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 1204
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_14

    move v2, v3

    .line 1205
    goto :goto_2

    .line 1207
    :catch_0
    move-exception v2

    move v2, v4

    goto :goto_2

    .line 1210
    :cond_6
    const v10, 0x7f100361

    if-ne v9, v10, :cond_7

    .line 1213
    iget-boolean v2, p0, Lcom/android/settings/gh;->wR:Z

    if-nez v2, :cond_14

    move v2, v3

    .line 1214
    goto :goto_2

    .line 1216
    :cond_7
    const v10, 0x7f10035d

    if-ne v9, v10, :cond_8

    .line 1217
    invoke-direct {p0, v2}, Lcom/android/settings/gh;->a(Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v3

    .line 1218
    goto :goto_2

    .line 1220
    :cond_8
    const v2, 0x7f100363

    if-ne v9, v2, :cond_c

    .line 1221
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings/gh;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    if-le v2, v3, :cond_b

    move v2, v3

    .line 1224
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v10

    if-nez v10, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_a
    move v2, v3

    .line 1228
    goto/16 :goto_2

    :cond_b
    move v2, v4

    .line 1221
    goto :goto_3

    .line 1230
    :cond_c
    const v2, 0x7f100364

    if-ne v9, v2, :cond_f

    .line 1231
    invoke-virtual {p0}, Lcom/android/settings/gh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.nfc"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    .line 1232
    goto/16 :goto_2

    .line 1235
    :cond_d
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 1236
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/gh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.nfc.hce"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_e
    move v2, v3

    .line 1239
    goto/16 :goto_2

    .line 1242
    :cond_f
    const v2, 0x7f10036e

    if-ne v9, v2, :cond_10

    .line 1243
    invoke-virtual {p0}, Lcom/android/settings/gh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.software.print"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 1245
    if-nez v2, :cond_14

    move v2, v3

    .line 1246
    goto/16 :goto_2

    .line 1248
    :cond_10
    const v2, 0x7f10036f

    if-ne v9, v2, :cond_14

    .line 1249
    if-eqz v7, :cond_11

    const-string v2, "no_debugging_features"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_11
    move v2, v3

    .line 1251
    goto/16 :goto_2

    .line 1173
    :cond_12
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 1266
    :cond_13
    return-void

    :cond_14
    move v2, v4

    goto/16 :goto_2
.end method

.method private static g(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gI()I
    .locals 2

    .prologue
    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/gh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 696
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private gJ()I
    .locals 3

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 721
    if-nez v0, :cond_1

    .line 722
    iget v0, p0, Lcom/android/settings/gh;->wN:I

    if-lez v0, :cond_0

    .line 723
    iget v0, p0, Lcom/android/settings/gh;->wN:I

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->setTitle(I)V

    .line 727
    :goto_0
    const/4 v0, 0x0

    .line 733
    :goto_1
    return v0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gh;->wM:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 730
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 731
    invoke-direct {p0, v1}, Lcom/android/settings/gh;->a(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private gK()V
    .locals 3

    .prologue
    .line 1307
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/gh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/gh;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1309
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gh;->wL:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1311
    :catch_0
    move-exception v0

    .line 1313
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get Metadata for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/gh;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gL()V
    .locals 1

    .prologue
    .line 1332
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/gh;->wK:Z

    .line 1333
    return-void
.end method

.method private gM()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1375
    iget-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    if-eqz v0, :cond_0

    .line 1388
    :goto_0
    return-void

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1379
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/settings/dashboard/h;

    if-eqz v1, :cond_1

    .line 1380
    check-cast v0, Lcom/android/settings/dashboard/h;

    iput-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    .line 1386
    :goto_1
    iget-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    iget-object v1, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/h;->setSearchView(Landroid/widget/SearchView;)V

    .line 1387
    iput-boolean v4, p0, Lcom/android/settings/gh;->xb:Z

    goto :goto_0

    .line 1382
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f090993

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/gh;->a(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/h;

    iput-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    goto :goto_1
.end method

.method private gO()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1395
    iput-boolean v1, p0, Lcom/android/settings/gh;->xe:Z

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    .line 1397
    iput-boolean v1, p0, Lcom/android/settings/gh;->xb:Z

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1400
    iget-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1403
    :cond_0
    return-void
.end method

.method private static h(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 495
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 496
    if-nez v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 499
    :goto_1
    sget-object v3, Lcom/android/settings/gh;->wP:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 500
    sget-object v3, Lcom/android/settings/gh;->wP:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private i(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 700
    const-string v0, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 701
    if-lez v0, :cond_0

    .line 702
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/gh;->wM:Ljava/lang/CharSequence;

    .line 703
    iput v0, p0, Lcom/android/settings/gh;->wN:I

    .line 704
    iget v0, p0, Lcom/android/settings/gh;->wN:I

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->setTitle(I)V

    .line 711
    :goto_0
    return-void

    .line 706
    :cond_0
    iput v1, p0, Lcom/android/settings/gh;->wN:I

    .line 707
    const-string v0, ":settings:show_fragment_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/android/settings/gh;->wM:Ljava/lang/CharSequence;

    .line 709
    iget-object v0, p0, Lcom/android/settings/gh;->wM:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gh;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private j(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/settings/gh;->wL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gh;->wL:Ljava/lang/String;

    .line 873
    :cond_0
    :goto_0
    return-object v0

    .line 863
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 866
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

    .line 870
    :cond_3
    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public K(Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 386
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/settings/gh;->f(Ljava/util/List;)V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 947
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/gh;->setResult(ILandroid/content/Intent;)V

    .line 948
    invoke-virtual {p0}, Lcom/android/settings/gh;->finish()V

    .line 949
    return-void
.end method

.method public gH()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings/gh;->kr:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public gN()V
    .locals 1

    .prologue
    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/gh;->xe:Z

    .line 1392
    return-void
.end method

.method public gP()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/settings/gh;->xg:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 836
    invoke-super {p0}, Lmiui/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 837
    invoke-direct {p0, v2}, Lcom/android/settings/gh;->j(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_1

    .line 841
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 842
    const-string v3, ":settings:show_fragment"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 844
    if-eqz v3, :cond_0

    .line 845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 849
    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 850
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, v1

    .line 853
    :goto_1
    return-object v0

    .line 847
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 853
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/settings/gh;->dg:Landroid/widget/Button;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/settings/gh;->dg:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 826
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/gh;->wO:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 827
    sget-object v1, Lcom/android/settings/gh;->wO:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    :cond_0
    return v2

    .line 826
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public k(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/android/settings/gh;->xg:Landroid/content/Intent;

    .line 1411
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/android/settings/gh;->gJ()I

    .line 716
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1353
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 436
    invoke-super {p0, p1}, Lmiui/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 442
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 508
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->setTheme(I)V

    .line 509
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 512
    invoke-direct {p0}, Lcom/android/settings/gh;->gK()V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/gh;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 515
    const-string v0, "settings:ui_options"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/gh;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "settings:ui_options"

    invoke-virtual {v9, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 519
    :cond_0
    const-string v0, "development"

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/gh;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gh;->tG:Landroid/content/SharedPreferences;

    .line 526
    invoke-static {v9}, Lcom/android/settings/gh;->g(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v9}, Lcom/android/settings/gh;->h(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/gh;->wX:Z

    .line 529
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 532
    const-class v1, Lcom/android/settings/Settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/gh;->wW:Z

    .line 534
    const-string v1, ":android:show_fragment"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 536
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    :goto_1
    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_2
    move v2, v3

    .line 549
    :goto_2
    if-eqz v2, :cond_3

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/gh;->getThemeResId()I

    move-result v0

    .line 552
    const v5, 0x7f0a004a

    if-eq v0, v5, :cond_3

    const v5, 0x7f0a004c

    if-eq v0, v5, :cond_3

    .line 559
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/gh;->wW:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0400fb

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->setContentView(I)V

    .line 562
    const v0, 0x7f100282

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/gh;->wY:Landroid/view/ViewGroup;

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 566
    iget-boolean v0, p0, Lcom/android/settings/gh;->wW:Z

    if-eqz v0, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/gh;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->bn(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/e;->update()V

    .line 570
    :cond_4
    if-eqz p1, :cond_d

    .line 573
    const-string v0, ":settings:search_menu_expanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gh;->xb:Z

    .line 574
    const-string v0, ":settings:search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gh;->xd:Ljava/lang/String;

    .line 576
    invoke-direct {p0, v9}, Lcom/android/settings/gh;->i(Landroid/content/Intent;)V

    .line 578
    const-string v0, ":settings:categories"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_5

    .line 581
    iget-object v1, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 582
    iget-object v1, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 583
    invoke-direct {p0}, Lcom/android/settings/gh;->gJ()I

    .line 586
    :cond_5
    const-string v0, ":settings:show_home_as_up"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gh;->wU:Z

    .line 587
    const-string v0, ":settings:show_search"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gh;->wV:Z

    .line 588
    const-string v0, ":settings:home_activities_count"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/gh;->xf:I

    .line 632
    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/gh;->wV:Z

    .line 634
    const v0, 0x7f100283

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/android/settings/gh;->kr:Lcom/android/settings/widget/SwitchBar;

    .line 637
    const-string v0, "extra_prefs_show_button_bar"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 639
    const v0, 0x7f100284

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_8

    .line 641
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 643
    const v0, 0x7f100285

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 644
    new-instance v1, Lcom/android/settings/gk;

    invoke-direct {v1, p0}, Lcom/android/settings/gk;-><init>(Lcom/android/settings/gh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    const v1, 0x7f10005f

    invoke-virtual {p0, v1}, Lcom/android/settings/gh;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 651
    new-instance v2, Lcom/android/settings/gl;

    invoke-direct {v2, p0}, Lcom/android/settings/gl;-><init>(Lcom/android/settings/gh;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    const v2, 0x7f100060

    invoke-virtual {p0, v2}, Lcom/android/settings/gh;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/gh;->dg:Landroid/widget/Button;

    .line 658
    iget-object v2, p0, Lcom/android/settings/gh;->dg:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/gm;

    invoke-direct {v3, p0}, Lcom/android/settings/gm;-><init>(Lcom/android/settings/gh;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 667
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 669
    iget-object v2, p0, Lcom/android/settings/gh;->dg:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 675
    :cond_6
    :goto_5
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 676
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 678
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 684
    :cond_7
    :goto_6
    const-string v0, "extra_prefs_show_skip"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 685
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 690
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/gh;->gI()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gh;->xf:I

    .line 691
    return-void

    :cond_9
    move v0, v4

    .line 526
    goto/16 :goto_0

    .line 538
    :cond_a
    iput-boolean v4, p0, Lcom/android/settings/gh;->wW:Z

    goto/16 :goto_1

    :cond_b
    move v2, v4

    .line 545
    goto/16 :goto_2

    .line 559
    :cond_c
    const v0, 0x7f0400fc

    goto/16 :goto_3

    .line 591
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/gh;->wW:Z

    if-nez v0, :cond_11

    .line 594
    iget-boolean v0, p0, Lcom/android/settings/gh;->wX:Z

    if-eqz v0, :cond_f

    .line 595
    iput-boolean v2, p0, Lcom/android/settings/gh;->wU:Z

    .line 596
    iput-boolean v4, p0, Lcom/android/settings/gh;->wV:Z

    .line 604
    :goto_7
    invoke-direct {p0, v9}, Lcom/android/settings/gh;->i(Landroid/content/Intent;)V

    .line 608
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 609
    if-nez v2, :cond_e

    .line 610
    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 613
    :cond_e
    iget v5, p0, Lcom/android/settings/gh;->wN:I

    iget-object v6, p0, Lcom/android/settings/gh;->wM:Ljava/lang/CharSequence;

    move-object v0, p0

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/gh;->a(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 597
    :cond_f
    if-eqz v2, :cond_10

    .line 598
    iput-boolean v3, p0, Lcom/android/settings/gh;->wU:Z

    .line 599
    iput-boolean v3, p0, Lcom/android/settings/gh;->wV:Z

    goto :goto_7

    .line 601
    :cond_10
    iput-boolean v4, p0, Lcom/android/settings/gh;->wU:Z

    .line 602
    iput-boolean v4, p0, Lcom/android/settings/gh;->wV:Z

    goto :goto_7

    .line 617
    :cond_11
    iput-boolean v4, p0, Lcom/android/settings/gh;->wU:Z

    .line 619
    iput-boolean v3, p0, Lcom/android/settings/gh;->wV:Z

    .line 620
    const v0, 0x7f090992

    iput v0, p0, Lcom/android/settings/gh;->wN:I

    .line 621
    const-class v0, Lcom/android/settings/dashboard/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/settings/gh;->wN:I

    iget-object v7, p0, Lcom/android/settings/gh;->wM:Ljava/lang/CharSequence;

    move-object v1, p0

    move v5, v4

    move v8, v4

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/gh;->a(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 672
    :cond_12
    iget-object v3, p0, Lcom/android/settings/gh;->dg:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 681
    :cond_13
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 455
    iget-boolean v0, p0, Lcom/android/settings/gh;->wV:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 486
    :goto_0
    return v0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gh;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 460
    const v3, 0x7f110003

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 463
    iget-object v3, p0, Lcom/android/settings/gh;->xd:Ljava/lang/String;

    .line 465
    const v0, 0x7f10039e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    .line 466
    iget-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    .line 468
    iget-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 469
    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    iget-object v1, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/h;->setSearchView(Landroid/widget/SearchView;)V

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 481
    iget-boolean v0, p0, Lcom/android/settings/gh;->xb:Z

    if-eqz v0, :cond_4

    .line 482
    iget-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 484
    :cond_4
    iget-object v0, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v0, v2

    .line 486
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 816
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 818
    iget-object v0, p0, Lcom/android/settings/gh;->tG:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/gh;->wQ:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/gh;->wQ:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 821
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1367
    iget-boolean v0, p0, Lcom/android/settings/gh;->xb:Z

    if-eqz v0, :cond_0

    .line 1368
    invoke-direct {p0}, Lcom/android/settings/gh;->gO()V

    .line 1371
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1359
    invoke-direct {p0}, Lcom/android/settings/gh;->gM()V

    .line 1361
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 807
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 809
    iget-object v0, p0, Lcom/android/settings/gh;->wS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 812
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 395
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 396
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    const v3, 0x7f09039c

    .line 416
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 418
    :goto_1
    return v7

    .line 398
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    const v3, 0x7f0901ac

    goto :goto_0

    .line 403
    :cond_2
    const v3, 0x7f0901aa

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.MiuiSecurityTrustedCredentials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.display.PageLayoutFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.tts.TextToSpeechSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 411
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/android/settings/gh;->xd:Ljava/lang/String;

    .line 1345
    iget-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    if-nez v0, :cond_0

    .line 1346
    const/4 v0, 0x0

    .line 1348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/h;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/android/settings/gh;->gM()V

    .line 1338
    iput-object p1, p0, Lcom/android/settings/gh;->xd:Ljava/lang/String;

    .line 1339
    iget-object v0, p0, Lcom/android/settings/gh;->xc:Lcom/android/settings/dashboard/h;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/h;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 778
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 780
    invoke-direct {p0}, Lcom/android/settings/gh;->gI()I

    move-result v0

    .line 781
    iget v1, p0, Lcom/android/settings/gh;->xf:I

    if-eq v0, v1, :cond_0

    .line 782
    iput v0, p0, Lcom/android/settings/gh;->xf:I

    .line 783
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/gh;->L(Z)V

    .line 786
    :cond_0
    new-instance v0, Lcom/android/settings/gn;

    invoke-direct {v0, p0}, Lcom/android/settings/gn;-><init>(Lcom/android/settings/gh;)V

    iput-object v0, p0, Lcom/android/settings/gh;->wQ:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 792
    iget-object v0, p0, Lcom/android/settings/gh;->tG:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/gh;->wQ:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 795
    iget-object v0, p0, Lcom/android/settings/gh;->wS:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/gh;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 800
    iget-boolean v0, p0, Lcom/android/settings/gh;->wV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gh;->xd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/settings/gh;->xd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/gh;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 803
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 751
    invoke-super {p0, p1}, Lmiui/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 754
    const-string v0, ":settings:categories"

    iget-object v1, p0, Lcom/android/settings/gh;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 757
    :cond_0
    const-string v0, ":settings:show_home_as_up"

    iget-boolean v1, p0, Lcom/android/settings/gh;->wU:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 758
    const-string v0, ":settings:show_search"

    iget-boolean v1, p0, Lcom/android/settings/gh;->wV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 760
    iget-boolean v0, p0, Lcom/android/settings/gh;->wV:Z

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/gh;->xa:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 767
    :goto_0
    const-string v1, ":settings:search_menu_expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 769
    iget-object v0, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/gh;->wZ:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    :goto_1
    const-string v1, ":settings:search_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_1
    const-string v0, ":settings:home_activities_count"

    iget v1, p0, Lcom/android/settings/gh;->xf:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    return-void

    .line 766
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 769
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 448
    iget-boolean v0, p0, Lcom/android/settings/gh;->xe:Z

    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/android/settings/gh;->gO()V

    .line 451
    :cond_0
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 1328
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/gh;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lmiui/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/settings/gh;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 960
    const v1, 0x7f100282

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 961
    if-eqz p2, :cond_0

    .line 962
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 963
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 967
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 968
    return-void

    .line 965
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8

    .prologue
    .line 897
    const/4 v6, 0x0

    .line 898
    if-gez p3, :cond_0

    .line 899
    if-eqz p4, :cond_1

    .line 900
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 906
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/gh;->wX:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/hl;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 908
    return-void

    .line 903
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method
