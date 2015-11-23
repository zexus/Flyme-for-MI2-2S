.class public Lcom/android/settings/deviceinfo/Status;
.super Lmiui/preference/PreferenceActivity;
.source "Status.java"


# static fields
.field private static final SR:[Ljava/lang/String;

.field private static final SS:[Ljava/lang/String;

.field private static final ST:[Ljava/lang/String;


# instance fields
.field private SU:Landroid/net/ConnectivityManager;

.field private SV:Z

.field private SW:Ljava/lang/String;

.field private SX:Ljava/lang/String;

.field private SY:Landroid/preference/Preference;

.field private SZ:Landroid/preference/Preference;

.field private Ta:Landroid/preference/Preference;

.field private Tb:Landroid/preference/Preference;

.field private Tc:Landroid/preference/Preference;

.field private Td:Landroid/preference/Preference;

.field private Te:Landroid/preference/Preference;

.field private Tf:Landroid/preference/Preference;

.field private Tg:Landroid/content/BroadcastReceiver;

.field private Th:Landroid/content/IntentFilter;

.field private final Ti:Landroid/content/BroadcastReceiver;

.field private aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private bO:Lcom/android/internal/telephony/Phone;

.field private hD:Landroid/net/wifi/WifiManager;

.field private lv:Landroid/telephony/PhoneStateListener;

.field private mHandler:Landroid/os/Handler;

.field private mRes:Landroid/content/res/Resources;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private wS:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "imei"

    aput-object v1, v0, v3

    const-string v1, "imei_sv"

    aput-object v1, v0, v4

    const-string v1, "min_number"

    aput-object v1, v0, v5

    const-string v1, "meid_number"

    aput-object v1, v0, v6

    const-string v1, "icc_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->SR:[Ljava/lang/String;

    .line 119
    const/16 v0, 0x8

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

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->SS:[Ljava/lang/String;

    .line 143
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    aput-object v1, v0, v4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->ST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    .line 216
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->wS:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->lv:Landroid/telephony/PhoneStateListener;

    .line 239
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tg:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ti:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method private a(Landroid/telephony/ServiceState;)V
    .locals 5

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 598
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->bm(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 601
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->bm(I)Ljava/lang/String;

    move-result-object v1

    .line 603
    const-string v2, "service_state"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / Data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :goto_0
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void

    .line 608
    :cond_0
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->aJ(Ljava/lang/String;)V

    return-void
.end method

.method private aI(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 516
    :cond_0
    return-void
.end method

.method private aJ(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 614
    if-eqz p1, :cond_0

    .line 615
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tb:Landroid/preference/Preference;

    return-object v0
.end method

.method private bm(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    packed-switch p1, :pswitch_data_0

    .line 561
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 554
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 557
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bn(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 722
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 723
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 725
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

.method static synthetic c(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ta:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->gd()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->ge()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private gd()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 576
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    packed-switch v1, :pswitch_data_0

    .line 593
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void

    .line 580
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 583
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 589
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ge()V
    .locals 2

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 571
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 538
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->SW:Ljava/lang/String;

    .line 542
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 546
    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 549
    :cond_1
    return-void
.end method

.method private oe()Z
    .locals 1

    .prologue
    .line 269
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

.method private of()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SU:Landroid/net/ConnectivityManager;

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

.method private og()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tf:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "net.wimax.mac.address"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->SX:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    const-string v1, "wimax_mac_address"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_0
    return-void
.end method

.method private oh()V
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 664
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 667
    :goto_0
    const-string v1, "wifi_mac_address"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void

    .line 664
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SX:Ljava/lang/String;

    goto :goto_1
.end method

.method private oi()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SU:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/settings/hl;->a(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_0

    .line 677
    const-string v1, "wifi_ip_address"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    const-string v0, "wifi_ip_address"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->SX:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private oj()V
    .locals 3

    .prologue
    .line 686
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 687
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->Tc:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 696
    :goto_0
    const-string v1, "bt_address"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    return-void

    .line 688
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SX:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic ol()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->ST:[Ljava/lang/String;

    return-object v0
.end method

.method private q(J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x3c

    .line 730
    rem-long v0, p1, v4

    long-to-int v0, v0

    .line 731
    div-long v2, p1, v4

    rem-long/2addr v2, v4

    long-to-int v1, v2

    .line 732
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->bn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->bn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method fZ()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 624
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SY:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 629
    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SY:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 638
    if-ne v4, v0, :cond_4

    move v1, v2

    .line 640
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v0

    .line 642
    if-ne v4, v0, :cond_3

    .line 646
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SY:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09009f

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 651
    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method jF()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 712
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 713
    const-wide/16 v0, 0x1

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->SZ:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->q(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method ok()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->og()V

    .line 703
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->oh()V

    .line 704
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->oj()V

    .line 705
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->oi()V

    .line 706
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 278
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    new-instance v0, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 282
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SU:Landroid/net/ConnectivityManager;

    .line 285
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 286
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->hD:Landroid/net/wifi/WifiManager;

    .line 288
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 289
    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tb:Landroid/preference/Preference;

    .line 290
    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ta:Landroid/preference/Preference;

    .line 291
    const-string v0, "bt_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tc:Landroid/preference/Preference;

    .line 292
    const-string v0, "wifi_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Te:Landroid/preference/Preference;

    .line 293
    const-string v0, "wimax_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tf:Landroid/preference/Preference;

    .line 294
    const-string v0, "wifi_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Td:Landroid/preference/Preference;

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 297
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090079

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SW:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0903f6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SX:Ljava/lang/String;

    .line 301
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    .line 305
    :cond_0
    const-string v0, "signal_strength"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SY:Landroid/preference/Preference;

    .line 306
    const-string v0, "up_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->SZ:Landroid/preference/Preference;

    .line 309
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    .line 310
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->SS:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 311
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const-string v0, "dual_imei"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 315
    const-string v0, "dual_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const-string v0, "prl_version"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 318
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 319
    const-string v0, "min_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 320
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 321
    const-string v0, "imei_sv"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 322
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 409
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->oe()Z

    move-result v0

    if-nez v0, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->Tc:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->Tc:Landroid/preference/Preference;

    .line 414
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->of()Z

    move-result v0

    if-nez v0, :cond_4

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->Tf:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->Tf:Landroid/preference/Preference;

    .line 419
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Th:Landroid/content/IntentFilter;

    .line 420
    sget-object v1, Lcom/android/settings/deviceinfo/Status;->ST:[Ljava/lang/String;

    array-length v3, v1

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_e

    aget-object v2, v1, v0

    .line 421
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->Th:Landroid/content/IntentFilter;

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 327
    :cond_5
    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/eK;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    const-string v0, "dual_imei"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 329
    invoke-virtual {v0, v6}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 330
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->SR:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_7

    aget-object v5, v3, v0

    .line 331
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 334
    :cond_6
    const-string v0, "dual_imei"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 337
    :cond_7
    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/eK;->A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 338
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->SS:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_4
    if-ge v0, v4, :cond_8

    aget-object v5, v3, v0

    .line 339
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 341
    :cond_8
    const-string v0, "dual_sim"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 342
    invoke-virtual {v0, v6}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 349
    :goto_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CDMA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 350
    const-string v0, "meid_number"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "min_number"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    const-string v0, "min_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v3, 0x7f0903e8

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 355
    :cond_9
    const-string v0, "prl_version"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "imei_sv"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 360
    const-string v0, "icc_id"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "imei"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 395
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_7
    const-string v3, "number"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 401
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 404
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->SV:Z

    if-nez v0, :cond_2

    .line 405
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_b
    const-string v0, "dual_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 365
    :cond_c
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 366
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    goto :goto_6

    .line 369
    :cond_d
    const-string v0, "imei"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "imei_sv"

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "prl_version"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 382
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 383
    const-string v0, "min_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 384
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    .line 387
    const-string v0, "br"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 388
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/Status;->SV:Z

    goto/16 :goto_6

    .line 424
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->ok()V

    .line 426
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 427
    if-eqz v0, :cond_f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 428
    const-string v1, "serial_number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Status$5;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Status$5;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 455
    const-string v0, "permanent.hw.custom.serialno"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 457
    const-string v1, "serialno"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_9
    return-void

    .line 430
    :cond_f
    const-string v0, "serial_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    goto :goto_8

    .line 459
    :cond_10
    const-string v0, "serialno"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aI(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    move-object v0, v1

    goto/16 :goto_7
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 493
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 495
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 497
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->lv:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->SV:Z

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tg:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->wS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ti:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 468
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->fZ()V

    .line 472
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->a(Landroid/telephony/ServiceState;)V

    .line 473
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->gd()V

    .line 474
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->lv:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 476
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->SV:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Tg:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ti:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->Th:Landroid/content/IntentFilter;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 487
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->wS:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 489
    return-void
.end method
