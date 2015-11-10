.class public Lmiui/app/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManager$OnToggleOrderChangedListener;,
        Lmiui/app/ToggleManager$OnToggleChangedListener;
    }
.end annotation


# static fields
.field public static final ALPHA_DEFAULT:I = 0xff

.field public static final ALPHA_HALF:I = 0x7d

.field public static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final DIVIDER_FIXED_POSITION_IN_PAGE_STYLE:I = 0xb

.field public static final EXTRA_LOCATE_DIVIDER:Ljava/lang/String; = "com.android.systemui.settings.EXTRA_LOCATE_DIVIDER"

.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field public static final MINIMUM_BACKLIGHT:I

.field private static final MINIMUM_COUNT_OF_TOGGLES_IN_STATUS_BAR:I = 0x4

.field public static final RANGE:I

.field private static final SETTINGS_MIDROP:Ljava/lang/String; = "key_midrop_enabled"

.field static final TAG:Ljava/lang/String; = "ToggleManager"

.field public static final TOGGLE_ACCESS_CONTROL:I = 0x10

.field public static final TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final TOGGLE_BLUETOOTH:I = 0x2

.field public static final TOGGLE_BRIGHTNESS:I = 0x4

.field public static final TOGGLE_COUNT:I = 0x1c

.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_DRIVE_MODE:I = 0x15

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_GPS:I = 0x7

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_MIDROP:I = 0x1b

.field public static final TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final TOGGLE_PAPER_MODE:I = 0x1a

.field public static final TOGGLE_POWER_MODE:I = 0x17

.field public static final TOGGLE_PRIVACY_MODE:I = 0xe

.field public static final TOGGLE_QUIET_MODE:I = 0x19

.field public static final TOGGLE_REBOOT:I = 0xc

.field public static final TOGGLE_RINGER:I = 0x5

.field public static final TOGGLE_ROTATE:I = 0x3

.field public static final TOGGLE_SCREENSHOT:I = 0x12

.field public static final TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final TOGGLE_SHUTDOWN:I = 0xd

.field public static final TOGGLE_SYNC:I = 0x8

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_VIBRATE:I = 0x6

.field public static final TOGGLE_WIFI:I = 0xf

.field public static final TOGGLE_WIFI_AP:I = 0x18

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x3

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mHasGpsFeature:Z

.field private static mHasMiDrop:Z

.field private static mHasMobileDataFeature:Z

.field private static mVibrator:Landroid/os/Vibrator;

.field private static mWifiApEnabler:Lmiui/app/WifiApEnabler;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static sLongClickActions:[I

.field private static sToggleDisabled:[Z

.field private static sToggleGeneralImages:[I

.field private static sToggleImages:[I

.field private static sToggleManager:Lmiui/app/ToggleManager;

.field private static sToggleNames:[I

.field private static sToggleOffImages:[I

.field private static sToggleOnImages:[I

.field private static sToggleStatus:[Z

.field private static sToggleStatusNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleStringToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mACObserver:Landroid/database/ContentObserver;

.field private mAccelerometer:Z

.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBrightnessAutoAvailable:Z

.field private mBrightnessAutoLevel:F

.field private mBrightnessAutoMode:Z

.field private mBrightnessManualLevel:I

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFlightMode:Z

.field private final mFlightModeObserver:Landroid/database/ContentObserver;

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSimMissing:Z

.field private final mLocationAllowedObserver:Landroid/database/ContentObserver;

.field private mMiDropChanging:Z

.field private mMiDropEnable:Z

.field private final mMiDropObserver:Landroid/database/ContentObserver;

.field private mMobileDataEnable:Z

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mMobilePolicyEnable:Z

.field private final mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

.field private mPaperMode:Z

.field private final mPaperModeObserver:Landroid/database/ContentObserver;

.field private mPowerMode:Ljava/lang/String;

.field private final mPowerModeObserver:Landroid/database/ContentObserver;

.field private mPrivacyMode:Z

.field private final mPrivacyModeObserver:Landroid/database/ContentObserver;

.field private mQuietMode:Z

.field private final mQuietModeObserver:Landroid/database/ContentObserver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mScreenButtonDisabled:Z

.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private final mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final mVibrateEnableObserver:Landroid/database/ContentObserver;

.field mWifiChanging:Z

.field mWifiConnected:Z

.field mWifiEnable:Z

.field mWifiSsid:Ljava/lang/String;

.field private final mZenModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x1c

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    .line 141
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "access_control"

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "bluetooth"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "brightness_mode"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "flight_mode"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "gps"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "lock"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "power_mode"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "privacy_mode"

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "quiet_mode"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "rotate"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "ringer_mode"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screenshot"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screen_button"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "sync_mode"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "torch"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "vibration_mode"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "wifi"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "wifi_ap"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "paper_mode"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "midrop"

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    .line 164
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x10

    const/high16 v3, 0x11070000

    aput v3, v1, v2

    .line 165
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x16

    const v3, 0x11070002

    aput v3, v1, v2

    .line 166
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070001

    aput v2, v1, v6

    .line 167
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070003

    aput v2, v1, v5

    .line 168
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x9

    const v3, 0x11070004

    aput v3, v1, v2

    .line 169
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x7

    const v3, 0x11070005

    aput v3, v1, v2

    .line 170
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xa

    const v3, 0x11070006

    aput v3, v1, v2

    .line 171
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070007

    aput v2, v1, v8

    .line 172
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x17

    const v3, 0x11070010

    aput v3, v1, v2

    .line 173
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xe

    const v3, 0x11070008

    aput v3, v1, v2

    .line 174
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070009

    aput v2, v1, v7

    .line 175
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x14

    const v3, 0x1107000a

    aput v3, v1, v2

    .line 176
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x12

    const v3, 0x1107000b

    aput v3, v1, v2

    .line 177
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x8

    const v3, 0x1107000c

    aput v3, v1, v2

    .line 178
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xb

    const v3, 0x1107000d

    aput v3, v1, v2

    .line 179
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x6

    const v3, 0x1107000e

    aput v3, v1, v2

    .line 180
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xf

    const v3, 0x1107000f

    aput v3, v1, v2

    .line 181
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x18

    const v3, 0x11070011

    aput v3, v1, v2

    .line 182
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x19

    const v3, 0x11070012

    aput v3, v1, v2

    .line 183
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1a

    const v3, 0x11070013

    aput v3, v1, v2

    .line 184
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1b

    const v3, 0x11070014

    aput v3, v1, v2

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 187
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    .line 194
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x16

    const v3, 0x11070017

    aput v3, v1, v2

    .line 195
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11070015

    aput v2, v1, v5

    .line 196
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11070016

    aput v2, v1, v6

    .line 197
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x9

    const v3, 0x11070018

    aput v3, v1, v2

    .line 198
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x7

    const v3, 0x11070019

    aput v3, v1, v2

    .line 199
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1107001a

    aput v2, v1, v8

    .line 200
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x17

    const v3, 0x1107001f

    aput v3, v1, v2

    .line 201
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1107001b

    aput v2, v1, v7

    .line 202
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x8

    const v3, 0x1107001c

    aput v3, v1, v2

    .line 203
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x6

    const v3, 0x1107001d

    aput v3, v1, v2

    .line 204
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0xf

    const v3, 0x1107001e

    aput v3, v1, v2

    .line 205
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x18

    const v3, 0x11070020

    aput v3, v1, v2

    .line 206
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x19

    const v3, 0x11070021

    aput v3, v1, v2

    .line 207
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0xe

    const v3, 0x11070022

    aput v3, v1, v2

    .line 208
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x10

    const v3, 0x11070023

    aput v3, v1, v2

    .line 209
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1a

    const v3, 0x11070024

    aput v3, v1, v2

    .line 210
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1b

    const v3, 0x11070025

    aput v3, v1, v2

    .line 218
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    .line 219
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x10

    const v3, 0x1102004c

    aput v3, v1, v2

    .line 220
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x16

    const v3, 0x1102004f

    aput v3, v1, v2

    .line 221
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x1102004e

    aput v2, v1, v6

    .line 222
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x11020052

    aput v2, v1, v5

    .line 223
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x9

    const v3, 0x11020054

    aput v3, v1, v2

    .line 224
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x7

    const v3, 0x11020056

    aput v3, v1, v2

    .line 225
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xa

    const v3, 0x11020057

    aput v3, v1, v2

    .line 226
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x1102005c

    aput v2, v1, v8

    .line 227
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x17

    const v3, 0x11020060

    aput v3, v1, v2

    .line 228
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xe

    const v3, 0x11020062

    aput v3, v1, v2

    .line 229
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x11020066

    aput v2, v1, v7

    .line 230
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x14

    const v3, 0x11020067

    aput v3, v1, v2

    .line 231
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x12

    const v3, 0x11020069

    aput v3, v1, v2

    .line 232
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x8

    const v3, 0x1102006c

    aput v3, v1, v2

    .line 233
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xb

    const v3, 0x1102006e

    aput v3, v1, v2

    .line 234
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x6

    const v3, 0x11020070

    aput v3, v1, v2

    .line 235
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xf

    const v3, 0x11020074

    aput v3, v1, v2

    .line 236
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x18

    const v3, 0x11020072

    aput v3, v1, v2

    .line 237
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x19

    const v3, 0x11020064

    aput v3, v1, v2

    .line 238
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1a

    const v3, 0x1102005e

    aput v3, v1, v2

    .line 239
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1b

    const v3, 0x1102005a

    aput v3, v1, v2

    .line 241
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    .line 242
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 243
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_1
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0xa

    const v3, 0x11020058

    aput v3, v1, v2

    .line 246
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0x12

    const v3, 0x1102006a

    aput v3, v1, v2

    .line 248
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    .line 249
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 250
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 253
    :cond_2
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    .line 254
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x10

    const v3, 0x1102004b

    aput v3, v1, v2

    .line 255
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x16

    const v3, 0x11020050

    aput v3, v1, v2

    .line 256
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102004d

    aput v2, v1, v6

    .line 257
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x11020051

    aput v2, v1, v5

    .line 258
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x9

    const v3, 0x11020053

    aput v3, v1, v2

    .line 259
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/4 v2, 0x7

    const v3, 0x11020055

    aput v3, v1, v2

    .line 260
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xa

    const v3, 0x11020057

    aput v3, v1, v2

    .line 261
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102005b

    aput v2, v1, v8

    .line 262
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x17

    const v3, 0x1102005f

    aput v3, v1, v2

    .line 263
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xe

    const v3, 0x11020061

    aput v3, v1, v2

    .line 264
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x11020065

    aput v2, v1, v7

    .line 265
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x14

    const v3, 0x11020068

    aput v3, v1, v2

    .line 266
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x12

    const v3, 0x11020069

    aput v3, v1, v2

    .line 267
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x8

    const v3, 0x1102006b

    aput v3, v1, v2

    .line 268
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xb

    const v3, 0x1102006d

    aput v3, v1, v2

    .line 269
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/4 v2, 0x6

    const v3, 0x1102006f

    aput v3, v1, v2

    .line 270
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xf

    const v3, 0x11020073

    aput v3, v1, v2

    .line 271
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x18

    const v3, 0x11020071

    aput v3, v1, v2

    .line 272
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x19

    const v3, 0x11020063

    aput v3, v1, v2

    .line 273
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1a

    const v3, 0x1102005d

    aput v3, v1, v2

    .line 274
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1b

    const v3, 0x11020059

    aput v3, v1, v2

    .line 280
    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    .line 281
    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    .line 300
    const-string v1, "persist.power.useautobrightadj"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 308
    const/4 v1, 0x0

    sput-object v1, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 856
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    .line 859
    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    rsub-int v1, v1, 0xff

    sput v1, Lmiui/app/ToggleManager;->RANGE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    .line 861
    iput-object v8, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 877
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    .line 879
    new-instance v3, Lmiui/app/ToggleManager$1;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$1;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 899
    new-instance v3, Lmiui/app/ToggleManager$2;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$2;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 910
    new-instance v3, Lmiui/app/ToggleManager$3;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$3;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 917
    new-instance v3, Lmiui/app/ToggleManager$4;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$4;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 925
    new-instance v3, Lmiui/app/ToggleManager$5;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$5;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    .line 934
    new-instance v3, Lmiui/app/ToggleManager$6;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$6;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 941
    new-instance v3, Lmiui/app/ToggleManager$7;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$7;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    .line 948
    new-instance v3, Lmiui/app/ToggleManager$8;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$8;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mACObserver:Landroid/database/ContentObserver;

    .line 955
    new-instance v3, Lmiui/app/ToggleManager$9;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$9;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 962
    new-instance v3, Lmiui/app/ToggleManager$10;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$10;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    .line 968
    new-instance v3, Lmiui/app/ToggleManager$11;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$11;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 975
    new-instance v3, Lmiui/app/ToggleManager$12;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$12;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 982
    new-instance v3, Lmiui/app/ToggleManager$13;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$13;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    .line 988
    new-instance v3, Lmiui/app/ToggleManager$14;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$14;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Landroid/database/ContentObserver;

    .line 994
    new-instance v3, Lmiui/app/ToggleManager$15;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$15;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    .line 1000
    new-instance v3, Lmiui/app/ToggleManager$16;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$16;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    .line 1006
    new-instance v3, Lmiui/app/ToggleManager$17;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$17;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    .line 1025
    new-instance v3, Lmiui/app/ToggleManager$18;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lmiui/app/ToggleManager$18;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 1033
    new-instance v3, Lmiui/app/ToggleManager$19;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$19;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    .line 1039
    new-instance v3, Lmiui/app/ToggleManager$20;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$20;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 1164
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1165
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1166
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1167
    iput-object v8, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 317
    iput-object p1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 318
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 319
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 320
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    .line 322
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 324
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    sput-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 325
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    sput-object v3, Lmiui/app/ToggleManager;->mVibrator:Landroid/os/Vibrator;

    .line 327
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    sput-object v3, Lmiui/app/ToggleManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 329
    sget-object v3, Lmiui/app/ToggleManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    sput-boolean v3, Lmiui/app/ToggleManager;->mHasMobileDataFeature:Z

    .line 331
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.location.gps"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lmiui/app/ToggleManager;->mHasGpsFeature:Z

    .line 333
    :try_start_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.xiaomi.midrop"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    sput-boolean v3, Lmiui/app/ToggleManager;->mHasMiDrop:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_1
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    const v6, 0x11090001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    .line 339
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    .line 341
    sget-object v3, Lmiui/app/ToggleManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "mWifiRegexs":[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_3

    move v2, v4

    .line 343
    .local v2, "wifiAvailable":Z
    :goto_2
    if-eqz v2, :cond_0

    .line 344
    new-instance v3, Lmiui/app/WifiApEnabler;

    invoke-direct {v3, p1, p0}, Lmiui/app/WifiApEnabler;-><init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V

    sput-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    .line 347
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    .line 356
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 357
    invoke-virtual {p0, v8}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    .line 359
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "status_bar_toggle_list_order"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 363
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "status_bar_toggle_page_order"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    const v3, 0x7fffffff

    iget-object v6, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v3, v6}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 371
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    .line 373
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "accelerometer_rotation"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 377
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    .line 379
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    .line 385
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "location_providers_allowed"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    .line 391
    iget-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v7}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 393
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "mobile_policy"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 397
    iget-object v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 399
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "privacy_mode_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 403
    new-instance v3, Landroid/security/ChooseLockSettingsHelper;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 404
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePrivacyModeToggle()V

    .line 406
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "access_control_lock_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mACObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 410
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateACToggle()V

    .line 412
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_brightness"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 416
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_auto_brightness_adj"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 420
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_brightness_mode"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 424
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    .line 426
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_buttons_state"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 430
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    .line 432
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "torch_state"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 436
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    .line 438
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "vibrate_in_silent"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 442
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "vibrate_in_normal"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 446
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    .line 448
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "power_mode"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    .line 454
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "quiet_mode_enable"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    .line 460
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_paper_mode_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 464
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    .line 466
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "key_midrop_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 470
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    .line 472
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "zen_mode"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 477
    iget-object v3, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 479
    :cond_1
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "mWifiRegexs":[Ljava/lang/String;
    .end local v2    # "wifiAvailable":Z
    :cond_2
    move v3, v5

    .line 333
    goto/16 :goto_0

    .restart local v1    # "mWifiRegexs":[Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 342
    goto/16 :goto_2

    .line 334
    .end local v1    # "mWifiRegexs":[Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateACToggle()V

    return-void
.end method

.method static synthetic access$102(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return p1
.end method

.method static synthetic access$1100(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    return-void
.end method

.method static synthetic access$1300(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    return-void
.end method

.method static synthetic access$1500(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    return-void
.end method

.method static synthetic access$1700(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    return-void
.end method

.method static synthetic access$1800(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    return-void
.end method

.method static synthetic access$1900(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static synthetic access$2000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    return-void
.end method

.method static synthetic access$2100(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/ToggleManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/ToggleManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return p1
.end method

.method static synthetic access$700(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method static synthetic access$900(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePrivacyModeToggle()V

    return-void
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_0
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lmiui/app/ToggleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 313
    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 1241
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1243
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 657
    invoke-static {p0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    .line 659
    const-string v0, "support_power_mode"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-nez v0, :cond_1

    .line 664
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 667
    :cond_1
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_2
    sget-boolean v0, Lmiui/app/ToggleManager;->mHasMobileDataFeature:Z

    if-nez v0, :cond_3

    .line 672
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 674
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 675
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 678
    :cond_3
    sget-object v0, Lmiui/app/ToggleManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_4

    .line 679
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 682
    :cond_4
    sget-boolean v0, Lmiui/app/ToggleManager;->mHasGpsFeature:Z

    if-nez v0, :cond_5

    .line 683
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 686
    :cond_5
    const-string v0, "support_screen_paper_mode"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 687
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    :cond_6
    sget-boolean v0, Lmiui/app/ToggleManager;->mHasMiDrop:Z

    if-nez v0, :cond_7

    .line 691
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 694
    :cond_7
    return-void
.end method

.method public static getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1b

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 561
    return-object v0
.end method

.method public static getDividerFixedPosition(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 582
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x11060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getGeneralImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 784
    sget-object v0, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 752
    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageResource(IZ)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z

    .prologue
    .line 764
    if-eqz p1, :cond_0

    sget-object v0, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getName(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 740
    sget-object v0, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getStatus(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 756
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 744
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 745
    .local v0, "statusName":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 746
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "statusName":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    :goto_0
    return-object v1

    .restart local v0    # "statusName":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getToggleIdFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "toggleString"    # Ljava/lang/String;

    .prologue
    .line 724
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    const/4 v0, -0x1

    .line 727
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 586
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status_bar_toggle_list_order"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "status_bar_toggle_page_order"

    goto :goto_0
.end method

.method public static getToggleStringFromId(I)Ljava/lang/String;
    .locals 3
    .param p0, "toggleId"    # I

    .prologue
    .line 731
    sget-object v2, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 732
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 733
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 736
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0}, Lmiui/app/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "toggleList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 518
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "toggles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 521
    :try_start_0
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 522
    .local v2, "id":I
    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 523
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    .end local v2    # "id":I
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v5    # "toggles":[Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 532
    return-object v3
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1222
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1223
    .local v3, "ssid":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1225
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1226
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1227
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1228
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1233
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    if-eqz v3, :cond_2

    const-string v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1234
    const/4 v3, 0x0

    .line 1236
    :cond_2
    return-object v3
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 788
    return-void
.end method

.method public static isDisabled(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 760
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method private longClickScreenshot()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 1668
    const/4 v8, 0x0

    .line 1669
    .local v8, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    sget-object v12, Lmiui/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v12}, Lmiui/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v13, "Screenshots"

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1671
    .local v10, "screenShotFolder":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1673
    new-instance v9, Lmiui/app/ToggleManager$21;

    invoke-direct {v9, p0}, Lmiui/app/ToggleManager$21;-><init>(Lmiui/app/ToggleManager;)V

    .line 1685
    .local v9, "pictureFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v10, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1686
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 1704
    .end local v2    # "files":[Ljava/io/File;
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_0
    :goto_0
    return v11

    .line 1689
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_1
    const-wide/16 v6, 0x0

    .line 1690
    .local v6, "maxLastModifed":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 1691
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_2

    .line 1692
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1693
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1690
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1698
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxLastModifed":J
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1700
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    .local v4, "intent":Landroid/content/Intent;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1703
    iget-object v11, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1704
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private queryBrightnessStatus()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1014
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1020
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    .line 1022
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    .line 1023
    return-void

    :cond_0
    move v0, v1

    .line 1014
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 1218
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1214
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1215
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1216
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setBrightnessMode()V
    .locals 3

    .prologue
    .line 1295
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1300
    return-void

    .line 1295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    .line 1416
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/app/ToggleManager;->showToast(Ljava/lang/CharSequence;I)V

    .line 1417
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    .line 1420
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1421
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 1422
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1423
    return-void
.end method

.method private supportZenMode()Z
    .locals 2

    .prologue
    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleAccelerometer()V
    .locals 3

    .prologue
    .line 1375
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1377
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v1, :cond_0

    .line 1378
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 1387
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 1380
    .restart local v0    # "wm":Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1381
    const v1, 0x11070026

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/app/ToggleManager;->showToast(II)V

    .line 1383
    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1385
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toggleAutoBrightness()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1283
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_0

    .line 1284
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1290
    :goto_0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    .line 1291
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->getCurBrightness()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->applyBrightness(IZ)V

    .line 1292
    return-void

    .line 1287
    :cond_0
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_0
.end method

.method private toggleBluetooth()V
    .locals 1

    .prologue
    .line 1247
    const/4 v0, 0x2

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method private toggleData()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1338
    const/4 v1, 0x0

    .line 1339
    .local v1, "result":Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1340
    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v5, :cond_2

    .line 1341
    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-nez v5, :cond_1

    :goto_0
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1342
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 1357
    :cond_0
    :goto_1
    return v1

    .line 1341
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1344
    :cond_2
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/MobileDataUtils;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1345
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1346
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1347
    .local v3, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1348
    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.miui.networkassistant"

    const-string v6, "com.miui.networkassistant.ui.activity.NetworkOverLimitActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1350
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1351
    const-string v4, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1352
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1353
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private toggleFlightMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1479
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1480
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1483
    const-string v1, "state"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1484
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1485
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 1479
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1480
    goto :goto_1
.end method

.method private toggleGps()V
    .locals 3

    .prologue
    .line 1446
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1448
    return-void

    .line 1446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleMiDrop()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1626
    const/16 v1, 0x1b

    invoke-static {v1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1627
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    .line 1628
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 1629
    new-instance v0, Landroid/content/Intent;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    if-eqz v1, :cond_2

    const-string v1, "miui.intent.action.midrop_on"

    :goto_1
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1630
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1631
    const-string v1, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMidropEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {p0, v2}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 1634
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1627
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1629
    :cond_2
    const-string v1, "miui.intent.action.midrop_off"

    goto :goto_1
.end method

.method private togglePaperMode()V
    .locals 3

    .prologue
    .line 1606
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1607
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_paper_mode_enabled"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1609
    return-void

    .line 1606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private togglePowerMode()V
    .locals 4

    .prologue
    .line 1558
    const-string v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1559
    const-string v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1564
    :goto_0
    const-string v1, "persist.sys.aries.power_profile"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "power_mode"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1568
    .local v0, "powerModeChange":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1569
    return-void

    .line 1561
    .end local v0    # "powerModeChange":Landroid/content/Intent;
    :cond_0
    const-string v1, "high"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private togglePrivacyMode()Z
    .locals 7

    .prologue
    const/high16 v6, 0x20000000

    const/high16 v5, 0x10000000

    const/high16 v4, 0x4000000

    .line 1499
    const/4 v1, 0x0

    .line 1500
    .local v1, "result":Z
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    if-nez v2, :cond_0

    .line 1501
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.PrivacyModeDialog"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1504
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1505
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1506
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1522
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 1508
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1511
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "confirm_purpose"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1513
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1514
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1515
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1516
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1517
    const/4 v1, 0x1

    .line 1518
    goto :goto_0

    .line 1519
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0
.end method

.method private toggleQuietMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1585
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1586
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1587
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "zen_mode"

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1591
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1585
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1587
    goto :goto_1

    .line 1589
    :cond_2
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method private toggleRinger()V
    .locals 2

    .prologue
    .line 1404
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 1405
    return-void
.end method

.method private toggleScreenButtonState()V
    .locals 7

    .prologue
    const v4, 0x11070027

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1708
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 1710
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1711
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1712
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1717
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 1718
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1727
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_1
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_buttons_state"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1730
    return-void

    :cond_0
    move v1, v3

    .line 1708
    goto :goto_0

    .line 1721
    :cond_1
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_2

    move v1, v4

    :goto_3
    invoke-direct {p0, v1, v3}, Lmiui/app/ToggleManager;->showToast(II)V

    goto :goto_1

    :cond_2
    const v1, 0x11070028

    goto :goto_3

    :cond_3
    move v2, v3

    .line 1727
    goto :goto_2
.end method

.method private toggleScreenshot()V
    .locals 3

    .prologue
    .line 1663
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1664
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1665
    return-void
.end method

.method private toggleSync()V
    .locals 1

    .prologue
    .line 1463
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1464
    return-void

    .line 1463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    .line 1551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1553
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1554
    return-void
.end method

.method private toggleVibrate()V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    .line 1431
    return-void
.end method

.method private updateACToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 1534
    iget-object v1, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    .line 1535
    .local v0, "enable":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1536
    if-eqz v0, :cond_0

    const v1, 0x1102004c

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1539
    return-void

    .line 1536
    :cond_0
    const v1, 0x1102004b

    goto :goto_0
.end method

.method private updateAccelerometerToggle()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1390
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    .line 1392
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1393
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_2

    const v0, 0x11020065

    :goto_2
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1396
    return-void

    :cond_0
    move v0, v2

    .line 1390
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1392
    goto :goto_1

    .line 1393
    :cond_2
    const v0, 0x11020066

    goto :goto_2
.end method

.method private updateBrightnessToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 1274
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v1, :cond_0

    const v0, 0x1102004f

    .line 1278
    .local v0, "autoResId":I
    :goto_0
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1279
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1280
    return-void

    .line 1274
    .end local v0    # "autoResId":I
    :cond_0
    const v0, 0x11020050

    goto :goto_0
.end method

.method private updateDataToggle()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1361
    iget-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1362
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-nez v3, :cond_2

    move v0, v1

    .line 1363
    .local v0, "isDataEnabled":Z
    :goto_0
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1364
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1365
    if-eqz v0, :cond_3

    const v2, 0x11020052

    :goto_1
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1367
    return-void

    .end local v0    # "isDataEnabled":Z
    :cond_2
    move v0, v2

    .line 1362
    goto :goto_0

    .line 1365
    .restart local v0    # "isDataEnabled":Z
    :cond_3
    const v2, 0x11020051

    goto :goto_1
.end method

.method private updateFlightModeToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x0

    .line 1488
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1490
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1491
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v0, :cond_1

    const v0, 0x11020054

    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1495
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    .line 1496
    return-void

    .line 1491
    :cond_1
    const v0, 0x11020053

    goto :goto_0
.end method

.method private updateGpsToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1451
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    .line 1453
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1454
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_0

    const v0, 0x11020056

    :goto_0
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1457
    return-void

    .line 1454
    :cond_0
    const v0, 0x11020055

    goto :goto_0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 791
    if-eqz p1, :cond_0

    .line 792
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 793
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 796
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private updateMiDropToggle()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1637
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_midrop_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1638
    .local v0, "setting":I
    if-eq v0, v3, :cond_0

    if-ne v0, v5, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    .line 1639
    if-eq v0, v5, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 1640
    const-string v1, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMidropEnable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isMiDropDisabled:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x1b

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isWifiAPDisabled:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x18

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mMiDropChanging:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " setting:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-virtual {p0, v3}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 1644
    return-void

    :cond_3
    move v1, v2

    .line 1638
    goto :goto_0
.end method

.method private updatePaperModeToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x1a

    .line 1612
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1615
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1616
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_0

    const v0, 0x1102005e

    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1619
    return-void

    .line 1616
    :cond_0
    const v0, 0x1102005d

    goto :goto_0
.end method

.method private updatePowerModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 1572
    const/4 v1, 0x0

    .line 1573
    .local v1, "resId":I
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "power_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1574
    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1575
    const-string v2, "middle"

    iput-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1577
    :cond_0
    const-string v2, "high"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1578
    .local v0, "isHigh":Z
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1579
    if-eqz v0, :cond_1

    const v2, 0x11020060

    :goto_0
    invoke-virtual {p0, v4, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1582
    return-void

    .line 1579
    :cond_1
    const v2, 0x1102005f

    goto :goto_0
.end method

.method private updatePrivacyModeToggle()V
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 1526
    iget-object v0, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    .line 1527
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1528
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    if-eqz v0, :cond_0

    const v0, 0x11020062

    :goto_0
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1531
    return-void

    .line 1528
    :cond_0
    const v0, 0x11020061

    goto :goto_0
.end method

.method private updateQuietModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1594
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1595
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1599
    :goto_1
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1600
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v0, :cond_2

    const v0, 0x11020064

    :goto_2
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1603
    return-void

    :cond_0
    move v0, v1

    .line 1595
    goto :goto_0

    .line 1597
    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    goto :goto_1

    .line 1600
    :cond_2
    const v0, 0x11020063

    goto :goto_2
.end method

.method private updateScreenButtonState()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v0, 0x0

    .line 1733
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_buttons_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 1735
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1736
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_1

    const v0, 0x11020067

    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1739
    return-void

    .line 1736
    :cond_1
    const v0, 0x11020068

    goto :goto_0
.end method

.method private updateSyncToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1467
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 1468
    .local v0, "isSyncOn":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1469
    if-eqz v0, :cond_0

    const v1, 0x1102006c

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1472
    return-void

    .line 1469
    :cond_0
    const v1, 0x1102006b

    goto :goto_0
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 799
    if-eqz p1, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    :cond_0
    return-void
.end method

.method private updateTorchToggle()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1542
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    .line 1544
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1545
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x1102006e

    :goto_1
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1548
    return-void

    :cond_0
    move v0, v1

    .line 1542
    goto :goto_0

    .line 1545
    :cond_1
    const v0, 0x1102006d

    goto :goto_1
.end method

.method private static validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 603
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 604
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 605
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 606
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 607
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 608
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 609
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 610
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 611
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 612
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 613
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 614
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 615
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 616
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 617
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 618
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 619
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 620
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 621
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 622
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 624
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 625
    return-void
.end method

.method private static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 630
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 631
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 632
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 633
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 634
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 635
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 636
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 637
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 639
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 640
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 641
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 642
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 643
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 644
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 645
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 646
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 647
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 648
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 649
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 650
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 652
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 654
    return-void
.end method


# virtual methods
.method public applyBrightness(IZ)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    .line 1309
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1310
    .local v2, "power":Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 1312
    :try_start_0
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v4, :cond_1

    .line 1313
    sget-boolean v4, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_0

    .line 1314
    int-to-float v4, p1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sget v5, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v4, v5

    .line 1315
    .local v3, "valf":F
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 1316
    if-eqz p2, :cond_0

    .line 1317
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_auto_brightness_adj"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1331
    .end local v3    # "valf":F
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v4

    .line 1322
    .local v0, "brightnessValue":I
    invoke-interface {v2, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 1323
    if-eqz p2, :cond_0

    .line 1324
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1327
    .end local v0    # "brightnessValue":I
    :catch_0
    move-exception v1

    .line 1328
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurBrightness()I
    .locals 2

    .prologue
    .line 1303
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public isBrightnessAutoMode()Z
    .locals 1

    .prologue
    .line 1742
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    return v0
.end method

.method isMiDropDisabled()Z
    .locals 1

    .prologue
    .line 1659
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 487
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 488
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 489
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 490
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 491
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 492
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mACObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 493
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 494
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 495
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 496
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 497
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 498
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 499
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 500
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 501
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 508
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v0}, Lmiui/app/WifiApEnabler;->unregisterReceiver()V

    .line 510
    :cond_1
    return-void
.end method

.method public performToggle(I)Z
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1064
    const/4 v1, 0x0

    .line 1065
    .local v1, "mustCollapse":Z
    packed-switch p1, :pswitch_data_0

    .line 1147
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1067
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ConfirmAccessControl"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const-string v2, "confirm_purpose"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    :goto_1
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1076
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1077
    const/4 v1, 0x1

    .line 1078
    goto :goto_0

    .line 1073
    :cond_1
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseAccessControl"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1081
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAutoBrightness()V

    goto :goto_0

    .line 1084
    :pswitch_3
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBluetooth()V

    goto :goto_0

    .line 1087
    :pswitch_4
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleData()Z

    move-result v1

    .line 1088
    goto :goto_0

    .line 1090
    :pswitch_5
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleFlightMode()V

    goto :goto_0

    .line 1093
    :pswitch_6
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleGps()V

    goto :goto_0

    .line 1096
    :pswitch_7
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 1100
    :pswitch_8
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleRinger()V

    goto :goto_0

    .line 1103
    :pswitch_9
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePrivacyMode()Z

    move-result v1

    .line 1104
    goto :goto_0

    .line 1106
    :pswitch_a
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAccelerometer()V

    goto :goto_0

    .line 1109
    :pswitch_b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenButtonState()V

    goto :goto_0

    .line 1112
    :pswitch_c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenshot()V

    .line 1113
    const/4 v1, 0x1

    .line 1114
    goto :goto_0

    .line 1116
    :pswitch_d
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSync()V

    goto :goto_0

    .line 1119
    :pswitch_e
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleTorch()V

    goto :goto_0

    .line 1122
    :pswitch_f
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleVibrate()V

    goto :goto_0

    .line 1125
    :pswitch_10
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleWifi()V

    goto :goto_0

    .line 1128
    :pswitch_11
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePowerMode()V

    goto/16 :goto_0

    .line 1131
    :pswitch_12
    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v2, :cond_0

    .line 1132
    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v2}, Lmiui/app/WifiApEnabler;->toggleWifiAp()V

    goto/16 :goto_0

    .line 1136
    :pswitch_13
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleQuietMode()V

    goto/16 :goto_0

    .line 1139
    :pswitch_14
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePaperMode()V

    goto/16 :goto_0

    .line 1142
    :pswitch_15
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleMiDrop()V

    goto/16 :goto_0

    .line 1065
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_f
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_10
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 711
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 712
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 713
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 711
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 717
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    :cond_2
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 720
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 703
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 707
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x54

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 567
    .local v1, "toggleList":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 568
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/app/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 575
    return-void
.end method

.method public startLongClickAction(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 805
    const/16 v7, 0x12

    if-ne v7, p1, :cond_1

    .line 806
    invoke-direct {p0}, Lmiui/app/ToggleManager;->longClickScreenshot()Z

    move-result v5

    .line 850
    :cond_0
    :goto_0
    return v5

    .line 809
    :cond_1
    if-ne v6, p1, :cond_2

    invoke-static {p1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 813
    :cond_2
    sget-object v7, Lmiui/app/ToggleManager;->sLongClickActions:[I

    aget v4, v7, p1

    .line 814
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 818
    iget-object v7, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 823
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 824
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 828
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 830
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 831
    const/16 v5, 0x19

    if-ne v5, p1, :cond_5

    .line 832
    const-string v5, "switch"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    :cond_3
    :goto_1
    if-ne v6, p1, :cond_4

    .line 840
    const-string v5, ":miui:starting_window_label"

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    :cond_4
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 846
    :try_start_0
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v5, v6

    .line 850
    goto :goto_0

    .line 834
    :cond_5
    const/4 v5, 0x5

    if-ne v5, p1, :cond_3

    .line 835
    const-string v5, "switch"

    const/4 v7, 0x3

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 847
    :catch_0
    move-exception v2

    .line 848
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ToggleManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start activity exception, component = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method toggleWifi()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1151
    const/16 v4, 0xf

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1152
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1153
    .local v0, "currentWifiState":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    .line 1155
    .local v1, "enable":Z
    :goto_0
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 1156
    .local v2, "wifiApState":I
    if-eqz v1, :cond_1

    const/16 v4, 0xc

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    .line 1158
    :cond_0
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1160
    :cond_1
    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1162
    .end local v0    # "currentWifiState":I
    .end local v1    # "enable":Z
    .end local v2    # "wifiApState":I
    :cond_2
    return-void

    .restart local v0    # "currentWifiState":I
    :cond_3
    move v1, v3

    .line 1153
    goto :goto_0
.end method

.method updateBluetoothToggle()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 1257
    const/4 v0, 0x0

    .line 1258
    .local v0, "bluetoothChanging":Z
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1259
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 1260
    .local v1, "currentState":I
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne v1, v6, :cond_3

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1261
    if-eq v1, v6, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    :cond_1
    move v0, v4

    .line 1264
    .end local v1    # "currentState":I
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1265
    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1267
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v2, :cond_5

    const v2, 0x1102004e

    :goto_2
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1271
    return-void

    .restart local v1    # "currentState":I
    :cond_3
    move v2, v3

    .line 1260
    goto :goto_0

    :cond_4
    move v0, v3

    .line 1261
    goto :goto_1

    .line 1267
    .end local v1    # "currentState":I
    :cond_5
    const v2, 0x1102004d

    goto :goto_2
.end method

.method updateMiDropToggle(Z)V
    .locals 3
    .param p1, "updateWifiAp"    # Z

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x1b

    .line 1647
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1648
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1, v0}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    .line 1650
    :cond_0
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->isWifiApDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1652
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1653
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mMiDropEnable:Z

    if-eqz v0, :cond_3

    const v0, 0x1102005a

    :goto_1
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1656
    return-void

    .line 1650
    :cond_2
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1653
    :cond_3
    const v0, 0x11020059

    goto :goto_1
.end method

.method public updateRingerToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 1408
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1409
    .local v0, "silentEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1410
    if-eqz v0, :cond_0

    const v1, 0x1102005c

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1413
    return-void

    .line 1410
    :cond_0
    const v1, 0x1102005b

    goto :goto_0
.end method

.method protected updateToggleDisabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 772
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aput-boolean p2, v0, p1

    .line 773
    return-void
.end method

.method protected updateToggleImage(II)V
    .locals 4
    .param p1, "toggleId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1048
    sget-object v3, Lmiui/app/ToggleManager;->sToggleImages:[I

    aput p2, v3, p1

    .line 1050
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1051
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1052
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1053
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 1054
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v2, :cond_0

    .line 1055
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1051
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1057
    :cond_0
    invoke-interface {v2, p1}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_1

    .line 1061
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method protected updateToggleStatus(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 768
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aput-boolean p2, v0, p1

    .line 769
    return-void
.end method

.method protected updateToggleStatusName(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "statusName"    # Ljava/lang/Object;

    .prologue
    .line 776
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    return-void
.end method

.method public updateVibrateToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1434
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1435
    .local v0, "isVibrateEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1436
    if-eqz v0, :cond_0

    const v1, 0x11020070

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1439
    return-void

    .line 1436
    :cond_0
    const v1, 0x1102006f

    goto :goto_0
.end method

.method updateWifiToggle(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v8, 0xf

    .line 1169
    if-eqz p1, :cond_3

    .line 1170
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1172
    const-string v4, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1173
    .local v3, "wifiState":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    if-ne v3, v9, :cond_4

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1175
    if-eq v3, v9, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1203
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "wifiState":I
    :cond_3
    :goto_1
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    if-nez v4, :cond_a

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1107000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    .line 1204
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1205
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1206
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eqz v4, :cond_b

    const v4, 0x11020074

    :goto_3
    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1210
    return-void

    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "wifiState":I
    :cond_4
    move v4, v5

    .line 1173
    goto :goto_0

    .line 1178
    .end local v3    # "wifiState":I
    :cond_5
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1179
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1181
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1182
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    if-eqz v4, :cond_9

    .line 1184
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1185
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_6

    .line 1186
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1188
    :cond_6
    if-eqz v1, :cond_8

    .line 1189
    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/app/ToggleManager;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 1193
    :goto_5
    const-string v4, "ToggleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";isWifiContected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";WifiInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    move v6, v5

    .line 1181
    goto :goto_4

    .line 1191
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_8
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_5

    .line 1198
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_9
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_1

    .line 1203
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_2

    .line 1206
    :cond_b
    const v4, 0x11020073

    goto/16 :goto_3
.end method

.method useWifiApForMiDrop()Z
    .locals 1

    .prologue
    .line 1622
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/app/ToggleManager;->mHasMiDrop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
