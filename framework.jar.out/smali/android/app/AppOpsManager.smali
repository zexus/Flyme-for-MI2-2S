.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final MODE_UNKNOWN:I = -0x1

.field private static final OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field private static final OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"

.field private static final OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"

.field private static final OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"

.field private static final OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"

.field private static final OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"

.field private static final OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"

.field private static final OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"

.field private static final OPSTR_AUTO_START:Ljava/lang/String; = "android:auto_start"

.field private static final OPSTR_BLUETOOTH_CHANGE:Ljava/lang/String; = "android:bluetooth_change"

.field private static final OPSTR_BOOT_COMPLETED:Ljava/lang/String; = "android:boot_completed"

.field private static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field private static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field private static final OPSTR_DATA_CONNECT_CHANGE:Ljava/lang/String; = "android:data_connect_change"

.field private static final OPSTR_DELETE_CALL_LOG:Ljava/lang/String; = "android:delete_call_log"

.field private static final OPSTR_DELETE_CONTACTS:Ljava/lang/String; = "android:delete_contacts"

.field private static final OPSTR_DELETE_MMS:Ljava/lang/String; = "android:delete_mms"

.field private static final OPSTR_DELETE_SMS:Ljava/lang/String; = "android:delete_sms"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field private static final OPSTR_GPS:Ljava/lang/String; = "android:gps"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field private static final OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"

.field private static final OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"

.field private static final OPSTR_NFC_CHANGE:Ljava/lang/String; = "android:nfc_change"

.field private static final OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"

.field private static final OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"

.field private static final OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"

.field private static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field private static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field private static final OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"

.field private static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field private static final OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"

.field private static final OPSTR_READ_MMS:Ljava/lang/String; = "android:read_mms"

.field private static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field private static final OPSTR_RECEIVE_EMERGECY_SMS:Ljava/lang/String; = "android:receive_emergecy_sms"

.field private static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field private static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field private static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field private static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field private static final OPSTR_SEND_MMS:Ljava/lang/String; = "android:send_mms"

.field private static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field private static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field private static final OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"

.field private static final OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"

.field private static final OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"

.field private static final OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"

.field private static final OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"

.field private static final OPSTR_WIFI_CHANGE:Ljava/lang/String; = "android:wifi_change"

.field private static final OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"

.field private static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field private static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field private static final OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"

.field private static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field private static final OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"

.field private static final OPSTR_WRITE_MMS:Ljava/lang/String; = "android:write_mms"

.field private static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field private static final OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACCESS_XIAOMI_ACCOUNT:I = 0x39

.field public static final OP_ACTIVATE_VPN:I = 0x3e

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_AUTO_START:I = 0x32

.field public static final OP_BLUETOOTH_CHANGE:I = 0x2c

.field public static final OP_BOOT_COMPLETED:I = 0x31

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_DATA_CONNECT_CHANGE:I = 0x2d

.field public static final OP_DELETE_CALL_LOG:I = 0x37

.field public static final OP_DELETE_CONTACTS:I = 0x36

.field public static final OP_DELETE_MMS:I = 0x35

.field public static final OP_DELETE_SMS:I = 0x34

.field public static final OP_EXACT_ALARM:I = 0x38

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_USAGE_STATS:I = 0x3a

.field public static final OP_GPS:I = 0x2

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x3b

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NFC_CHANGE:I = 0x33

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROJECT_MEDIA:I = 0x3d

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_MMS:I = 0x2f

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_MMS:I = 0x2e

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x3c

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKEUP_ALARM:I = 0x3f

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_CHANGE:I = 0x2b

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MMS:I = 0x30

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "AppOps"

.field public static final _NUM_OP:I = 0x40

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDefaultStrictMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
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

.field private static final sOpStrictMode:[Z

.field private static sOpStringToOp:Ljava/util/HashMap;
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

.field private static sOpToOpString:[Ljava/lang/String;

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 408
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 480
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android:coarse_location"

    aput-object v2, v1, v6

    const-string v2, "android:fine_location"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v3, "android:monitor_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "android:monitor_location_high_power"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-string v3, "android:get_usage_stats"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v3, "android:activate_vpn"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 552
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android:coarse_location"

    aput-object v2, v1, v6

    const-string v2, "android:fine_location"

    aput-object v2, v1, v7

    const-string v2, "android:gps"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "android:vibrate"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android:read_contacts"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android:write_contacts"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android:read_call_log"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android:write_call_log"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android:read_calendar"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android:write_calendar"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "android:wifi_scan"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "android:post_notification"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "android:neighboring_cells"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "android:call_phone"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android:read_sms"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "android:write_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "android:receive_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "android:receive_emergecy_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "android:receive_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "android:receive_wap_push"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "android:send_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "android:read_icc_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "android:write_icc_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "android:write_settings"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "android:system_alert_window"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "android:access_notifications"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "android:camera"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "android:record_audio"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "android:play_audio"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "android:read_clipboard"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "android:write_clipboard"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "android:take_media_buttons"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "android:take_audio_focus"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "android:audio_master_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "android:audio_voice_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "android:audio_ring_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "android:audio_media_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "android:audio_alarm_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "android:audio_notification_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "android:audio_bluetooth_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "android:wake_lock"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "android:monitor_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "android:monitor_location_high_power"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "android:wifi_change"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "android:bluetooth_change"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "android:data_connect_change"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "android:send_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "android:read_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "android:write_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "android:boot_completed"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v3, "android:nfc_change"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "android:delete_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "android:delete_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "android:delete_contacts"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "android:delete_call_log"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-string v3, "android:get_usage_stats"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "android:mute_microphone"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "android:toast_window"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "android:project_media"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "android:activate_vpn"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    .line 624
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "FINE_LOCATION"

    aput-object v2, v1, v7

    const-string v2, "GPS"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "WIFI_SCAN"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "POST_NOTIFICATION"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NEIGHBORING_CELLS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "RECEIVE_EMERGECY_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "READ_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "WRITE_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "PLAY_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "READ_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "WRITE_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "TAKE_MEDIA_BUTTONS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "TAKE_AUDIO_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "AUDIO_MASTER_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "AUDIO_VOICE_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "AUDIO_RING_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "AUDIO_MEDIA_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "AUDIO_ALARM_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "AUDIO_NOTIFICATION_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "AUDIO_BLUETOOTH_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "MONITOR_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MONITOR_HIGH_POWER_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "WIFI_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "BLUETOOTH_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "DATA_CONNECT_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "SEND_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "READ_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "WRITE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "BOOT_COMPLETED"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "AUTO_START"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "NFC_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "DELETE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "DELETE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "DELETE_CONTACTS"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "DELETE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "EXACT_ALARM"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "ACCESS XIAOMI_CCOUNT"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "GET_USAGE_STATS"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "MUTE_MICROPHONE"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "TOAST_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "PROJECT_MEDIA"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "ACTIVATE_VPN"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "WAKEUP_ALARM"

    aput-object v3, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 696
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    const-string v3, "android.permission.VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android.permission.WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "android.permission.RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "android.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v3, "android.permission.WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "android.permission.BLUETOOTH"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v3, "android.permission.NFC"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "android.permission.WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 769
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v6

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v7

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "no_outgoing_calls"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "no_outgoing_calls"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "no_create_windows"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string/jumbo v3, "no_unmute_microphone"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string/jumbo v3, "no_create_windows"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string/jumbo v3, "no_config_vpn"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 841
    new-array v1, v5, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 913
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 985
    new-array v1, v5, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    .line 1056
    new-array v1, v5, [Z

    fill-array-data v1, :array_4

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    .line 1131
    new-array v1, v5, [Z

    fill-array-data v1, :array_5

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 1199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 1200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStringToOp:Ljava/util/HashMap;

    .line 1203
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-eq v1, v5, :cond_0

    .line 1204
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1207
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_1

    .line 1208
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1211
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_2

    .line 1212
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToOpString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1215
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_3

    .line 1216
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_4

    .line 1220
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1223
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_5

    .line 1224
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1227
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_6

    .line 1228
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1231
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_7

    .line 1232
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_7
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_8

    .line 1236
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1239
    :cond_8
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_9

    .line 1240
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1243
    :cond_9
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_a

    .line 1244
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1247
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_d

    .line 1248
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_b

    .line 1249
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    :cond_b
    sget-object v1, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    .line 1252
    sget-object v1, Landroid/app/AppOpsManager;->sOpStringToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    :cond_d
    return-void

    .line 408
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
    .end array-data

    .line 841
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 913
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x3
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    .line 985
    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x4
        0x0
        0x0
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x3
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    .line 1056
    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 1131
    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1474
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1475
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1476
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1843
    const-class v1, Landroid/app/AppOpsManager;

    monitor-enter v1

    .line 1844
    :try_start_0
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1845
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    :goto_0
    return-object v0

    .line 1848
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1852
    :goto_1
    :try_start_2
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1

    goto :goto_0

    .line 1853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1849
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static isStrictEnable()Z
    .locals 2

    .prologue
    .line 1924
    const-string/jumbo v0, "persist.sys.strict_op_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStrictOp(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 1932
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1296
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1314
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static opToDefaultMode(IZ)I
    .locals 1
    .param p0, "op"    # I
    .param p1, "isStrict"    # Z

    .prologue
    .line 1304
    if-eqz p1, :cond_0

    .line 1305
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    aget v0, v0, p0

    .line 1306
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 1270
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    .line 1271
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1279
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1287
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1262
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1609
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1610
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1611
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1613
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringOpToOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1950
    sget-object v1, Landroid/app/AppOpsManager;->sOpStringToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1951
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1952
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1954
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringToMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1938
    const-string v0, "allowed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    const/4 v0, 0x0

    .line 1945
    :goto_0
    return v0

    .line 1940
    :cond_0
    const-string v0, "ignored"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1941
    const/4 v0, 0x1

    goto :goto_0

    .line 1942
    :cond_1
    const-string v0, "ask"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1943
    const/4 v0, 0x4

    goto :goto_0

    .line 1945
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1773
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 1774
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1775
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1780
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1790
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1793
    :goto_0
    return v0

    .line 1791
    :catch_0
    move-exception v0

    .line 1793
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1727
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 1728
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1729
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1734
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1633
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpInternal(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1982
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperationInternal(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1985
    :goto_0
    return v0

    .line 1983
    :catch_0
    move-exception v0

    .line 1985
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1744
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1747
    :goto_0
    return v0

    .line 1745
    :catch_0
    move-exception v0

    .line 1747
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1641
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1758
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1765
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1919
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1920
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1912
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    :goto_0
    return-void

    .line 1913
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1705
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1706
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1505
    :goto_0
    return-object v0

    .line 1503
    :catch_0
    move-exception v0

    .line 1505
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1489
    :goto_0
    return-object v0

    .line 1487
    :catch_0
    move-exception v0

    .line 1489
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1959
    const/4 v0, 0x1

    .line 1961
    .local v0, "isShow":Z
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->isControlAllowed(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1964
    :goto_0
    return v0

    .line 1962
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1838
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1813
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 1814
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1815
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1820
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1659
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1830
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1833
    :goto_0
    return v0

    .line 1831
    :catch_0
    move-exception v0

    .line 1833
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1667
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IOpsCallback;

    .prologue
    .line 1969
    const/4 v0, -0x1

    .line 1970
    .local v0, "result":I
    if-eqz p1, :cond_0

    .line 1972
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1976
    :cond_0
    :goto_0
    return v0

    .line 1973
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resetAllModes()V
    .locals 1

    .prologue
    .line 1539
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    :goto_0
    return-void

    .line 1540
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1511
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    :goto_0
    return-void

    .line 1512
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1530
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1531
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 1532
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1900
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1875
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 1876
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1877
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1882
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1687
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1892
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1895
    :goto_0
    return v0

    .line 1893
    :catch_0
    move-exception v0

    .line 1895
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1695
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1563
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1564
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 1565
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 1566
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1576
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1582
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1583
    return-void

    .line 1582
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1580
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1552
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1553
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1590
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1591
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 1594
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1598
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1599
    return-void

    .line 1598
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1595
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
