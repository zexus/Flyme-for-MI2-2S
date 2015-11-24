.class public Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# instance fields
.field private Pe:Lcom/android/settings_ext/dV;

.field private aor:Landroid/net/wifi/p2p/WifiP2pManager;

.field private ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private ayJ:Landroid/content/DialogInterface$OnClickListener;

.field private ayK:Landroid/content/DialogInterface$OnClickListener;

.field private ayL:Landroid/content/DialogInterface$OnClickListener;

.field private ayM:Landroid/content/DialogInterface$OnClickListener;

.field private ayN:Lcom/android/settings_ext/wifi/p2p/a;

.field private ayO:Lcom/android/settings_ext/wifi/p2p/b;

.field private ayP:Ljava/lang/String;

.field private ayQ:Landroid/widget/EditText;

.field private ayR:Z

.field private ayS:Z

.field private ayT:I

.field private ayU:Z

.field private ayV:Landroid/preference/PreferenceGroup;

.field private ayW:Landroid/preference/PreferenceGroup;

.field private ayX:Lmiui/preference/ValuePreference;

.field private ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private ayZ:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private aza:Ljava/lang/String;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayU:Z

    .line 124
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayZ:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 158
    new-instance v0, Lcom/android/settings_ext/wifi/p2p/d;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/p2p/d;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayZ:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;Lcom/android/settings_ext/wifi/p2p/b;)Lcom/android/settings_ext/wifi/p2p/b;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayO:Lcom/android/settings_ext/wifi/p2p/b;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wn()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayR:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wm()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayU:Z

    return p1
.end method

.method private bs(Z)V
    .locals 0

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayS:Z

    .line 671
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wl()V

    .line 672
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    .line 675
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->invalidateOptionsMenu()V

    .line 676
    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->bs(Z)V

    return-void
.end method

.method private ca(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 601
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 602
    aget-byte v5, v3, v0

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_0

    .line 603
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 604
    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 605
    add-int/lit8 v0, v0, 0x3

    .line 609
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    aget-byte v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 612
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 613
    :goto_2
    if-ge v1, v2, :cond_2

    .line 614
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 616
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_3
    return-object v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 620
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic d(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayU:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wo()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wp()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ext/wifi/p2p/b;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayO:Lcom/android/settings_ext/wifi/p2p/b;

    return-object v0
.end method

.method private sT()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/eK;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings_ext/wifi/p2p/c;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/wifi/p2p/c;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method private wm()V
    .locals 5

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    :cond_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayV:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayT:I

    .line 589
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayZ:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 591
    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayV:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings_ext/wifi/p2p/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/settings_ext/wifi/p2p/a;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayT:I

    goto :goto_0
.end method

.method private wn()V
    .locals 2

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->bs(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayR:Z

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    .line 663
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayV:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayR:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 666
    return-void
.end method

.method private wo()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayS:Z

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ext/wifi/p2p/n;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/wifi/p2p/n;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 688
    :cond_0
    return-void
.end method

.method private wp()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 219
    new-instance v0, Lcom/android/settings_ext/dV;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/dV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->Pe:Lcom/android/settings_ext/dV;

    .line 220
    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 231
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 232
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 236
    const-string v0, "WifiP2pSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-object v4, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 243
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "PEER_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "PEER_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 245
    new-instance v1, Lcom/android/settings_ext/wifi/p2p/a;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings_ext/wifi/p2p/a;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    .line 247
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "DEV_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    const-string v0, "DEV_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aza:Ljava/lang/String;

    .line 250
    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "GROUP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    const-string v0, "GROUP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayP:Ljava/lang/String;

    .line 254
    :cond_3
    new-instance v0, Lcom/android/settings_ext/wifi/p2p/e;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/p2p/e;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayJ:Landroid/content/DialogInterface$OnClickListener;

    .line 277
    new-instance v0, Lcom/android/settings_ext/wifi/p2p/g;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/p2p/g;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayK:Landroid/content/DialogInterface$OnClickListener;

    .line 296
    new-instance v0, Lcom/android/settings_ext/wifi/p2p/i;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/p2p/i;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayL:Landroid/content/DialogInterface$OnClickListener;

    .line 316
    new-instance v0, Lcom/android/settings_ext/wifi/p2p/k;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/p2p/k;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayM:Landroid/content/DialogInterface$OnClickListener;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 352
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 356
    new-instance v1, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    .line 357
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setPersistent(Z)V

    .line 361
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    const v2, 0x7f090c1c

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setTitle(I)V

    .line 362
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 364
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayV:Landroid/preference/PreferenceGroup;

    .line 367
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayV:Landroid/preference/PreferenceGroup;

    const v2, 0x7f09032c

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 368
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayV:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 374
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 375
    return-void

    .line 240
    :cond_4
    const-string v0, "WifiP2pSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    .prologue
    const v8, 0x7f09054f

    const v7, 0x7f09054e

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 502
    if-ne p1, v5, :cond_2

    .line 503
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 507
    :goto_0
    iget v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayT:I

    if-le v2, v5, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090332

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayT:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090330

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayK:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 561
    :goto_2
    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090331

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 520
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 521
    const v2, 0x7f090334

    .line 522
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 526
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090333

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayL:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_3

    .line 533
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 534
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    .line 535
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aza:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 537
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aza:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 543
    :cond_5
    :goto_4
    iput-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aza:Ljava/lang/String;

    .line 544
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09032b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayJ:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 540
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayY:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4

    .line 551
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 552
    const v0, 0x7f090335

    .line 554
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayM:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayM:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    .line 561
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayS:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09032a

    .line 401
    :goto_0
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayR:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 404
    const/4 v0, 0x2

    const v1, 0x7f09032b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayR:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 407
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 408
    return-void

    .line 399
    :cond_0
    const v0, 0x7f090329

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 437
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 445
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 439
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wo()V

    goto :goto_0

    .line 442
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 390
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 391
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayZ:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 657
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wm()V

    .line 658
    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 5

    .prologue
    .line 624
    const-string v1, "\\x"

    .line 625
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayW:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 627
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 628
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    invoke-direct {p0, v3}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    if-eqz v3, :cond_1

    .line 632
    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 636
    :cond_1
    new-instance v3, Lcom/android/settings_ext/wifi/p2p/b;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/settings_ext/wifi/p2p/b;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 637
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayW:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 638
    invoke-virtual {v3}, Lcom/android/settings_ext/wifi/p2p/b;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iput-object v3, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayO:Lcom/android/settings_ext/wifi/p2p/b;

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayP:Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayP:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 649
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Selected group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disappered on next query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 450
    instance-of v0, p2, Lcom/android/settings_ext/wifi/p2p/a;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 451
    check-cast v0, Lcom/android/settings_ext/wifi/p2p/a;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    .line 452
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_1

    .line 453
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 497
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v2, :cond_2

    .line 455
    invoke-virtual {p0, v5}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 457
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 458
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 460
    const-string v1, "wifidirect.wps"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 462
    if-eq v1, v4, :cond_3

    .line 463
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 474
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings_ext/wifi/p2p/m;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/wifi/p2p/m;-><init>(Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 468
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 470
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 487
    :cond_6
    instance-of v0, p2, Lcom/android/settings_ext/wifi/p2p/b;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 488
    check-cast v0, Lcom/android/settings_ext/wifi/p2p/b;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayO:Lcom/android/settings_ext/wifi/p2p/b;

    .line 489
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 492
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayX:Lmiui/preference/ValuePreference;

    if-ne v0, p2, :cond_0

    .line 493
    const-class v0, Lcom/android/settings_ext/MiuiDeviceNameEditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 412
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 413
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 415
    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->Pe:Lcom/android/settings_ext/dV;

    invoke-virtual {v2}, Lcom/android/settings_ext/dV;->eT()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 416
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->wl()V

    .line 418
    iget-boolean v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayR:Z

    if-eqz v2, :cond_0

    .line 419
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 420
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 426
    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 428
    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayS:Z

    if-eqz v1, :cond_1

    .line 429
    const v1, 0x7f09032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 433
    :goto_1
    return-void

    .line 422
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 423
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 431
    :cond_1
    const v1, 0x7f090329

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayI:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->sT()V

    .line 386
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayN:Lcom/android/settings_ext/wifi/p2p/a;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/p2p/a;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 570
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayQ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayO:Lcom/android/settings_ext/wifi/p2p/b;

    if-eqz v0, :cond_2

    .line 573
    const-string v0, "GROUP_NAME"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayO:Lcom/android/settings_ext/wifi/p2p/b;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/p2p/b;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 577
    return-void
.end method

.method public wl()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->ayS:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->Pe:Lcom/android/settings_ext/dV;

    invoke-virtual {v0}, Lcom/android/settings_ext/dV;->et()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p2p/WifiP2pSettings;->Pe:Lcom/android/settings_ext/dV;

    invoke-virtual {v0}, Lcom/android/settings_ext/dV;->stopAnimation()V

    goto :goto_0
.end method
