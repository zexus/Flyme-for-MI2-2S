.class public Lcom/android/settings_ext/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ext/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "network_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ext/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 130
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    aput-object v1, v0, v4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ext/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 204
    new-instance v0, Lcom/android/settings_ext/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/Status$1;-><init>(Lcom/android/settings_ext/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/android/settings_ext/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/Status$2;-><init>(Lcom/android/settings_ext/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 224
    new-instance v0, Lcom/android/settings_ext/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/Status$3;-><init>(Lcom/android/settings_ext/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lcom/android/settings_ext/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/Status$4;-><init>(Lcom/android/settings_ext/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ext/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings_ext/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ext/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ext/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ext/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ext/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ext/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings_ext/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings_ext/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ext/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/deviceinfo/Status;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 663
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 664
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 665
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 667
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings_ext/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings_ext/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 503
    packed-switch p1, :pswitch_data_0

    .line 512
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 505
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 671
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 655
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 656
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 473
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 624
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 625
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 629
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 634
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 626
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 631
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIMEISummaryText(Ljava/lang/String;)V
    .locals 4
    .param p1, "imeiStr"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    .line 415
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 417
    .local v0, "enable14DigitImei":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 419
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 421
    :cond_0
    const-string v1, "imei"

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings_ext/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 617
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object p2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 497
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 609
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 610
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 611
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 612
    return-void

    .line 610
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 611
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 603
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 526
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 527
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 544
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void

    .line 531
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    goto :goto_0

    .line 534
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    goto :goto_0

    .line 537
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    goto :goto_0

    .line 540
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 2

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "networktype":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 549
    .local v3, "voiceState":I
    invoke-direct {p0, v3}, Lcom/android/settings_ext/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "voiceDisplay":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 552
    .local v1, "dataState":I
    invoke-direct {p0, v1}, Lcom/android/settings_ext/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_0
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void

    .line 559
    :cond_0
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 263
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    new-instance v10, Lcom/android/settings_ext/deviceinfo/Status$MyHandler;

    invoke-direct {v10, p0}, Lcom/android/settings_ext/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings_ext/deviceinfo/Status;)V

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 267
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 268
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 269
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 271
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 272
    const v10, 0x7f060016

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 277
    :goto_0
    const-string v10, "battery_level"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 278
    const-string v10, "battery_status"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 279
    const-string v10, "bt_address"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 280
    const-string v10, "wifi_mac_address"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 281
    const-string v10, "wimax_mac_address"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 282
    const-string v10, "wifi_ip_address"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 285
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f09000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 286
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f09038c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 288
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->isMultiSimEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 290
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 293
    :cond_0
    const-string v10, "signal_strength"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 294
    const-string v10, "up_time"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 296
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ext/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 297
    :cond_1
    sget-object v0, Lcom/android/settings_ext/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v6, :cond_7

    aget-object v5, v0, v2

    .line 298
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const v10, 0x7f06001a

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 303
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CDMA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 304
    const-string v10, "meid_number"

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v10, "min_number"

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 307
    const-string v10, "min_number"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f09037e

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 309
    :cond_4
    const-string v10, "prl_version"

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v10, "imei_sv"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 312
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v10

    if-ne v10, v12, :cond_a

    .line 314
    const-string v10, "icc_id"

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "imeiStr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings_ext/deviceinfo/Status;->setIMEISummaryText(Ljava/lang/String;)V

    .line 343
    .end local v3    # "imeiStr":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "rawNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 345
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 346
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    :cond_6
    const-string v10, "number"

    invoke-direct {p0, v10, v1}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v10, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 352
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v11, 0xc8

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 353
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v11, 0x12c

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 355
    iget-boolean v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-nez v10, :cond_7

    .line 356
    const-string v10, "latest_area_info"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 360
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v7    # "rawNumber":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->hasBluetooth()Z

    move-result v10

    if-nez v10, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    iput-object v13, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 365
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->hasWimax()Z

    move-result v10

    if-nez v10, :cond_9

    .line 366
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    iput-object v13, p0, Lcom/android/settings_ext/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 370
    :cond_9
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    iput-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 371
    sget-object v0, Lcom/android/settings_ext/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v6, :cond_c

    aget-object v4, v0, v2

    .line 372
    .local v4, "intent":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v10, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 320
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "intent":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_a
    const-string v10, "imei"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 321
    const-string v10, "icc_id"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 324
    :cond_b
    iget-object v10, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3    # "imeiStr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings_ext/deviceinfo/Status;->setIMEISummaryText(Ljava/lang/String;)V

    .line 326
    const-string v11, "imei_sv"

    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v10, "prl_version"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 333
    const-string v10, "meid_number"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 334
    const-string v10, "min_number"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 335
    const-string v10, "icc_id"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 338
    const-string v10, "br"

    iget-object v11, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 339
    iput-boolean v12, p0, Lcom/android/settings_ext/deviceinfo/Status;->mShowLatestAreaInfo:Z

    goto/16 :goto_2

    .line 375
    .end local v3    # "imeiStr":Ljava/lang/String;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v6    # "len$":I
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->updateConnectivity()V

    .line 377
    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 378
    .local v9, "serial":Ljava/lang/String;
    if-eqz v9, :cond_e

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 379
    const-string v10, "serial_number"

    invoke-direct {p0, v10, v9}, Lcom/android/settings_ext/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v10

    new-instance v11, Lcom/android/settings_ext/deviceinfo/Status$5;

    invoke-direct {v11, p0}, Lcom/android/settings_ext/deviceinfo/Status$5;-><init>(Lcom/android/settings_ext/deviceinfo/Status;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 405
    const-string v10, "button_aboutphone_msim_status"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 406
    .local v8, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_d

    .line 407
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 408
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "PACKAGE"

    const-string v11, "com.android.settings"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v10, "TARGET_CLASS"

    const-string v11, "com.android.settings.deviceinfo.MSimSubscriptionStatus"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_d
    return-void

    .line 381
    .end local v8    # "selectSub":Landroid/preference/PreferenceScreen;
    :cond_e
    const-string v10, "serial_number"

    invoke-direct {p0, v10}, Lcom/android/settings_ext/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 453
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 455
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 457
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 428
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 431
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->updateSignalStrength()V

    .line 432
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 433
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->updateDataState()V

    .line 434
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 436
    iget-boolean v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ext/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings_ext/deviceinfo/Status;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 445
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ext/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->setWimaxStatus()V

    .line 638
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->setWifiStatus()V

    .line 639
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->setBtStatus()V

    .line 640
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Status;->setIpAddressStatus()V

    .line 641
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 575
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 576
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 578
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 580
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    .line 582
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v3    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 586
    .restart local v0    # "r":Landroid/content/res/Resources;
    .restart local v3    # "state":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 588
    .local v2, "signalDbm":I
    if-ne v5, v2, :cond_3

    const/4 v2, 0x0

    .line 590
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 592
    .local v1, "signalAsu":I
    if-ne v5, v1, :cond_4

    const/4 v1, 0x0

    .line 594
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090034

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090035

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 645
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 647
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 648
    const-wide/16 v2, 0x1

    .line 651
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ext/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 652
    return-void
.end method
