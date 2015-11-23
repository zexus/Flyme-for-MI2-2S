.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/k;


# static fields
.field protected static avK:Z

.field public static avX:I

.field public static final gG:Lcom/android/settings/search/l;


# instance fields
.field private Nq:Landroid/widget/TextView;

.field private final asr:Landroid/content/IntentFilter;

.field private atL:Lcom/android/settings/wifi/aa;

.field private atM:Lcom/android/settings/wifi/AccessPoint;

.field private atN:Landroid/os/Bundle;

.field private atO:Lcom/android/settings/wifi/AccessPoint;

.field private ati:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final avI:Ljava/lang/String;

.field protected avJ:Z

.field private final avL:Lcom/android/settings/wifi/ap;

.field protected avM:Landroid/net/wifi/WifiManager$ActionListener;

.field protected avN:Landroid/net/wifi/WifiManager$ActionListener;

.field protected avO:Landroid/net/wifi/WifiManager$ActionListener;

.field protected avP:Lcom/android/settings/wifi/u;

.field protected avQ:Landroid/net/NetworkInfo$DetailedState;

.field protected avR:Landroid/net/wifi/WifiInfo;

.field private avS:Lcom/android/settings/wifi/bh;

.field private avT:Z

.field private avU:Z

.field private avV:Landroid/view/View;

.field private avW:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

.field protected hD:Landroid/net/wifi/WifiManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected sE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->avX:I

    .line 1208
    new-instance v0, Lcom/android/settings/wifi/an;

    invoke-direct {v0}, Lcom/android/settings/wifi/an;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->gG:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v0, "nearby_wifi"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avI:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->ati:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 265
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/android/settings/wifi/ah;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ah;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v0, Lcom/android/settings/wifi/ap;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ap;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avW:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->avW:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    return-object p1
.end method

.method private a(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 661
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    .line 667
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    .line 668
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->avU:Z

    .line 670
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 671
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->z(Landroid/content/Intent;)V

    return-void
.end method

.method protected static b(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 905
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 908
    new-instance v6, Lcom/android/settings/wifi/ao;

    invoke-direct {v6}, Lcom/android/settings/wifi/ao;-><init>()V

    .line 910
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 911
    if-eqz v1, :cond_6

    .line 913
    sget-boolean v4, Lcom/android/settings/wifi/WifiSettings;->avK:Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    :goto_0
    if-eq v4, v0, :cond_0

    .line 914
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->avK:Z

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->avK:Z

    .line 915
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 916
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 919
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 920
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v4, :cond_1

    .line 923
    :cond_2
    new-instance v4, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 924
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 925
    invoke-virtual {v4, p2, p3}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 927
    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v0, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Lcom/android/settings/wifi/ao;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v0, v3

    .line 913
    goto :goto_0

    :cond_5
    move v0, v3

    .line 914
    goto :goto_1

    .line 932
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_9

    .line 934
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 936
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "[IBSS]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 942
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/android/settings/wifi/ao;->p(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 943
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_5
    move v4, v1

    .line 945
    goto :goto_4

    .line 946
    :cond_8
    if-nez v4, :cond_7

    .line 947
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 948
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/android/settings/wifi/ao;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 955
    :cond_9
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 956
    return-object v5

    :cond_a
    move v1, v4

    goto :goto_5
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->vl()V

    return-void
.end method

.method public static bI(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 2

    .prologue
    .line 766
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 769
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    const/4 v0, 0x0

    .line 775
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/wifi/WifiSettings;)Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    return-object v0
.end method

.method private df(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1042
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1058
    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    .line 1059
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->avQ:Landroid/net/NetworkInfo$DetailedState;

    .line 1060
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->pause()V

    .line 1061
    :goto_1
    return-void

    .line 1044
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->resume()V

    goto :goto_1

    .line 1048
    :pswitch_1
    const v0, 0x7f090297

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->cV(I)V

    goto :goto_0

    .line 1052
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->vn()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->uy()V

    goto :goto_0

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private vk()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 790
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 796
    const-string v2, "assistant_dismiss_platform"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 798
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v1, :cond_0

    .line 806
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avW:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 808
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04012d

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    .line 811
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    const v1, 0x7f1002ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 812
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    const v2, 0x7f1002fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 813
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    const v3, 0x7f1002fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 815
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09026c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->avW:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    iget-object v6, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 819
    new-instance v2, Lcom/android/settings/wifi/al;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/al;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    new-instance v0, Lcom/android/settings/wifi/am;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/am;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private vl()V
    .locals 3

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 853
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 854
    const-string v1, "assistant_dismiss_platform"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 855
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 856
    return-void
.end method

.method private vn()V
    .locals 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Nq:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 868
    const v0, 0x7f0902bf

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->cV(I)V

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Nq:Landroid/widget/TextView;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    const v0, 0x7f0902a9

    .line 879
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 880
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->Nq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 885
    :cond_0
    return-void

    .line 877
    :cond_1
    const v0, 0x7f0902aa

    goto :goto_0
.end method

.method private z(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 960
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 961
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->df(I)V

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 967
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->uy()V

    .line 969
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->bj(Z)V

    goto :goto_0

    .line 973
    :cond_3
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 974
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 976
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->ati:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 977
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->bk(Z)V

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->uy()V

    .line 979
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    .line 981
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->sE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->avJ:Z

    if-nez v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 984
    :cond_4
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 1

    .prologue
    .line 897
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 472
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 487
    const/4 v2, 0x6

    const v3, 0x7f0906fa

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 496
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    return-void

    .line 473
    nop

    :array_0
    .array-data 4
        0x7f010021
        0x7f010023
    .end array-data
.end method

.method a(Lcom/android/settings/wifi/T;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1096
    invoke-virtual {p1}, Lcom/android/settings/wifi/T;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dg(I)V

    .line 1115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->resume()V

    .line 1118
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->uy()V

    .line 1119
    return-void

    .line 1103
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 1104
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->avN:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1108
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/wifi/T;->uZ()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1109
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->avN:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1111
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method protected ao()I
    .locals 1

    .prologue
    .line 1205
    const v0, 0x7f090935

    return v0
.end method

.method b(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->pause()V

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    .line 999
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->pause()V

    .line 1004
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    .line 1005
    if-eqz p1, :cond_2

    .line 1006
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->avQ:Landroid/net/NetworkInfo$DetailedState;

    .line 1013
    :cond_2
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1014
    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_0

    .line 1019
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 1021
    instance-of v3, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    .line 1022
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 1024
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1027
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->uy()V

    goto :goto_0

    .line 1001
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->resume()V

    goto :goto_1

    .line 1031
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->avQ:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1017
    :cond_5
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2
.end method

.method protected bj(Z)V
    .locals 0

    .prologue
    .line 1066
    return-void
.end method

.method protected bk(Z)V
    .locals 1

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->avT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1081
    :cond_0
    return-void
.end method

.method protected cV(I)V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Nq:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Nq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 892
    return-void
.end method

.method protected dg(I)V
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->avM:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1145
    return-void
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1124
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->avO:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->resume()V

    .line 1133
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->uy()V

    .line 1136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->bk(Z)V

    goto :goto_0
.end method

.method protected j(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->avM:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1141
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 297
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 301
    new-instance v0, Lcom/android/settings/wifi/ai;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ai;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avM:Landroid/net/wifi/WifiManager$ActionListener;

    .line 316
    new-instance v0, Lcom/android/settings/wifi/aj;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aj;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avN:Landroid/net/wifi/WifiManager$ActionListener;

    .line 331
    new-instance v0, Lcom/android/settings/wifi/ak;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ak;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avO:Landroid/net/wifi/WifiManager$ActionListener;

    .line 346
    if-eqz p1, :cond_0

    .line 347
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->avU:Z

    .line 348
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atN:Landroid/os/Bundle;

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 357
    const-string v1, "wifi_enable_next_on_connect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->avT:Z

    .line 359
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->avT:Z

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 363
    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->bk(Z)V

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->vk()V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->vm()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Nq:Landroid/widget/TextView;

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 378
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 379
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 383
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 384
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->vl()V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avW:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1085
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->vb()Lcom/android/settings/wifi/T;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/T;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 606
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 607
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 635
    :goto_0
    return v0

    .line 609
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 635
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 611
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 612
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dg(I)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->arZ:I

    if-nez v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->tR()V

    .line 616
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 623
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->avO:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 627
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 631
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_setup_wizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->sE:Z

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_settings_keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->avJ:Z

    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 578
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 582
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 583
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 585
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->tP()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x7

    const v1, 0x7f0902bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_2

    .line 590
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    .line 591
    const/16 v0, 0x8

    const v1, 0x7f0902bc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 593
    :cond_1
    const/16 v0, 0x9

    const v1, 0x7f0902bd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->arZ:I

    if-eqz v0, :cond_2

    .line 597
    const/16 v0, 0xa

    const v1, 0x7f0902be

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 602
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 675
    packed-switch p1, :pswitch_data_0

    .line 703
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 677
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    .line 678
    if-nez v0, :cond_1

    .line 679
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atN:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 680
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->atN:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 682
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    .line 684
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atN:Landroid/os/Bundle;

    .line 688
    :cond_1
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    .line 689
    new-instance v1, Lcom/android/settings/wifi/aa;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->avU:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/wifi/aa;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    .line 690
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    goto :goto_0

    .line 692
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 694
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 696
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Lcom/android/settings/wifi/bh;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/bh;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avS:Lcom/android/settings/wifi/bh;

    .line 699
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avS:Lcom/android/settings/wifi/bh;

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->gy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/view/Menu;)V

    .line 465
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    .prologue
    const v3, 0x7f09030f

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->gy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    :goto_0
    return v6

    .line 519
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 573
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 521
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 522
    goto :goto_0

    .line 538
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 539
    goto :goto_0

    .line 541
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->vq()V

    :cond_1
    move v6, v10

    .line 544
    goto :goto_0

    .line 546
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->vo()V

    :cond_2
    move v6, v10

    .line 549
    goto :goto_0

    .line 551
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/gh;

    if-eqz v0, :cond_3

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 560
    goto :goto_0

    .line 556
    :cond_3
    const-class v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 562
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/gh;

    if-eqz v0, :cond_4

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090310

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 571
    goto :goto_0

    .line 567
    :cond_4
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090310

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avP:Lcom/android/settings/wifi/u;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avP:Lcom/android/settings/wifi/u;

    invoke-virtual {v0}, Lcom/android/settings/wifi/u;->pause()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->pause()V

    .line 449
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 640
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 641
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    .line 643
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->arZ:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->tR()V

    .line 646
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->avK:Z

    if-nez v1, :cond_0

    .line 647
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->avK:Z

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/net/wifi/WifiConfiguration;)V

    .line 657
    :goto_0
    return v0

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 655
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avP:Lcom/android/settings/wifi/u;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avP:Lcom/android/settings/wifi/u;

    invoke-virtual {v0}, Lcom/android/settings/wifi/u;->resume()V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->uy()V

    .line 438
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 501
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atL:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->avU:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atN:Landroid/os/Bundle;

    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atN:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->k(Landroid/os/Bundle;)V

    .line 509
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atN:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 512
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 408
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->asr:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    return-void
.end method

.method uA()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->resume()V

    .line 1157
    :cond_0
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1158
    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 1161
    :cond_1
    return-void
.end method

.method protected uy()V
    .locals 4

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->gy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    const v0, 0x7f0902c1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->cV(I)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 723
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    sput v1, Lcom/android/settings/wifi/WifiSettings;->avX:I

    .line 725
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 753
    :pswitch_0
    const v0, 0x7f090298

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->cV(I)V

    goto :goto_0

    .line 728
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->avQ:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v0

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 731
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 732
    const v1, 0x7f0902c0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->cV(I)V

    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 736
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->avW:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    if-eqz v1, :cond_4

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->avV:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 740
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 742
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 749
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_0

    .line 757
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->vn()V

    goto/16 :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected vm()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 861
    return-object v0
.end method

.method vo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1168
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    .line 1169
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 1170
    return-void
.end method

.method vp()V
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->avL:Lcom/android/settings/wifi/ap;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ap;->resume()V

    .line 1201
    :cond_0
    return-void
.end method
