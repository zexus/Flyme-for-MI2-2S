.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"

# interfaces
.implements Lcom/android/settings/ff;


# static fields
.field public static final atB:Ljava/util/HashSet;


# instance fields
.field private Pe:Lcom/android/settings/dV;

.field private atA:Z

.field private atu:Landroid/widget/Button;

.field private atv:Landroid/preference/CheckBoxPreference;

.field private atw:Landroid/preference/CheckBoxPreference;

.field private atx:Landroid/preference/CheckBoxPreference;

.field private aty:Lmiui/preference/ValuePreference;

.field private atz:Ljava/util/HashMap;

.field private dg:Landroid/widget/Button;

.field private hD:Landroid/net/wifi/WifiManager;

.field private sG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 668
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->atB:Ljava/util/HashSet;

    .line 669
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->atB:Ljava/util/HashSet;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->atB:Ljava/util/HashSet;

    const-string v1, "CMCC-AUTO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->atB:Ljava/util/HashSet;

    const-string v1, "CMCC-EDU"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->atB:Ljava/util/HashSet;

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 673
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sG:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/d;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->b(Lcom/android/settings/wifi/d;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/android/settings/wifi/d;)V
    .locals 1

    .prologue
    .line 766
    new-instance v0, Lcom/android/settings/wifi/h;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/wifi/h;-><init>(Lcom/android/settings/wifi/AccessPoint;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 767
    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/d;->c(Landroid/view/View$OnClickListener;)V

    .line 768
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sG:Z

    return p1
.end method

.method private b(Lcom/android/settings/wifi/d;)V
    .locals 3

    .prologue
    .line 536
    invoke-virtual {p1}, Lcom/android/settings/wifi/d;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/wifi/d;->bssid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 541
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 542
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 543
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 544
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avM:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 547
    invoke-virtual {p1}, Lcom/android/settings/wifi/d;->tZ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/Y;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/d;->bi(Z)V

    .line 551
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/wifi/d;->bssid:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/Y;->e(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private bq()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_share"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avJ:Z

    if-eqz v0, :cond_3

    .line 318
    :cond_1
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    :cond_2
    :goto_0
    return-void

    .line 325
    :cond_3
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 326
    const-string v0, "notify_open_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 329
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 330
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    .line 334
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->uB()V

    goto :goto_0
.end method

.method private h(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 793
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 803
    :cond_0
    return-void

    .line 796
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atz:Ljava/util/HashMap;

    .line 797
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/Y;->x(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_2

    .line 800
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atz:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 788
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uB()V
    .locals 2

    .prologue
    .line 806
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 808
    :cond_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    .line 809
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    const-string v1, "cmcc_network_notification"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090e04

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 811
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090e05

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 813
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 814
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 816
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->uC()V

    goto :goto_0
.end method

.method private uC()V
    .locals 2

    .prologue
    .line 820
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTipActivity;->bM(Landroid/content/Context;)Z

    move-result v0

    .line 823
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 824
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atx:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 823
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private ux()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method private uz()V
    .locals 6

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-class v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public X()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 677
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 679
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 682
    new-instance v6, Lcom/android/settings/wifi/ao;

    invoke-direct {v6}, Lcom/android/settings/wifi/ao;-><init>()V

    .line 684
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 685
    if-eqz v1, :cond_6

    .line 687
    sget-boolean v4, Lcom/android/settings/wifi/MiuiWifiSettings;->avK:Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    :goto_0
    if-eq v4, v0, :cond_0

    .line 688
    sget-boolean v0, Lcom/android/settings/wifi/MiuiWifiSettings;->avK:Z

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiSettings;->avK:Z

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->invalidateOptionsMenu()V

    .line 691
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

    .line 692
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v4, :cond_1

    .line 695
    :cond_2
    new-instance v4, Lcom/android/settings/wifi/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v0}, Lcom/android/settings/wifi/d;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 696
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 697
    invoke-virtual {v4, p3, p4}, Lcom/android/settings/wifi/d;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 699
    :cond_3
    iget-object v0, v4, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Lcom/android/settings/wifi/ao;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v0, v3

    .line 687
    goto :goto_0

    :cond_5
    move v0, v3

    .line 688
    goto :goto_1

    .line 704
    :cond_6
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_9

    .line 706
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

    .line 708
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

    .line 714
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

    .line 715
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 717
    check-cast v1, Lcom/android/settings/wifi/d;

    invoke-direct {p0, v5, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Ljava/util/List;Lcom/android/settings/wifi/d;)V

    move v1, v2

    :goto_5
    move v4, v1

    .line 719
    goto :goto_4

    .line 720
    :cond_8
    if-nez v4, :cond_7

    .line 721
    new-instance v1, Lcom/android/settings/wifi/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/settings/wifi/d;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 722
    invoke-direct {p0, v5, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Ljava/util/List;Lcom/android/settings/wifi/d;)V

    .line 723
    iget-object v0, v1, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/android/settings/wifi/ao;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 729
    :cond_9
    invoke-static {}, Lcom/android/settings/wifi/d;->uc()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 733
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 734
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 735
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 736
    check-cast v0, Lcom/android/settings/wifi/d;

    .line 737
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atA:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/settings/wifi/d;->ase:Landroid/net/wifi/ScanResult;

    invoke-static {v1}, Lcom/android/settings/wifi/aG;->f(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/settings/wifi/d;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 739
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atz:Ljava/util/HashMap;

    if-nez v1, :cond_b

    .line 740
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->h(Ljava/util/ArrayList;)V

    .line 742
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atz:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    .line 743
    iget-object v1, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_c

    .line 744
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/d;->bi(Z)V

    .line 745
    new-instance v1, Lcom/android/settings/wifi/B;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/B;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/d;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/d;->d(Landroid/view/View$OnClickListener;)V

    .line 753
    :cond_c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v1, v0, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    const/16 v7, 0x9

    if-le v1, v7, :cond_a

    iget-object v1, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/android/settings/wifi/d;->getLevel()I

    move-result v0

    if-gtz v0, :cond_a

    .line 760
    :cond_d
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 761
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->ux()V

    .line 762
    return-object v3

    :cond_e
    move v1, v4

    goto/16 :goto_5
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 619
    sparse-switch p1, :sswitch_data_0

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 621
    :sswitch_0
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 622
    if-eqz v0, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avM:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->uA()V

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/Y;->e(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 630
    :sswitch_1
    const-string v0, "network_id"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 631
    const-string v0, "is_delete"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 632
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 633
    if-eqz v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 634
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avO:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/Y;->g(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 644
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->uA()V

    goto :goto_0

    .line 637
    :cond_2
    if-eqz v0, :cond_1

    .line 638
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avN:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 639
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/Y;->f(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 619
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Lcom/android/settings/wifi/T;)V
    .locals 3

    .prologue
    .line 656
    invoke-virtual {p1}, Lcom/android/settings/wifi/T;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 657
    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {p1}, Lcom/android/settings/wifi/T;->tZ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 659
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/wifi/Y;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 662
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/T;)V

    .line 663
    return-void

    .line 658
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ao()I
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    .line 566
    const-string v0, "connected_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 567
    if-nez v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 571
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 572
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 573
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 574
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avQ:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method protected bj(Z)V
    .locals 1

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Pe:Lcom/android/settings/dV;

    invoke-virtual {v0}, Lcom/android/settings/dV;->et()V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Pe:Lcom/android/settings/dV;

    invoke-virtual {v0}, Lcom/android/settings/dV;->stopAnimation()V

    goto :goto_0
.end method

.method protected bk(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 773
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->bk(Z)V

    .line 774
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_0

    .line 775
    if-eqz p1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atu:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atu:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected cV(I)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 467
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lcom/android/settings/wifi/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/d;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 203
    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atv:Landroid/preference/CheckBoxPreference;

    .line 208
    new-instance v0, Lcom/android/settings/wifi/u;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atv:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/u;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avP:Lcom/android/settings/wifi/u;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_share"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 221
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 612
    if-eqz p3, :cond_0

    .line 613
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(ILandroid/os/Bundle;)V

    .line 615
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_1

    .line 108
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_disable_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sG:Z

    .line 121
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avJ:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 124
    :cond_0
    new-instance v0, Lcom/android/settings/dV;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Pe:Lcom/android/settings/dV;

    .line 125
    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addPreferencesFromResource(I)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bq()V

    .line 127
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_2

    .line 115
    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    goto :goto_0

    .line 117
    :cond_2
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avJ:Z

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 594
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Pe:Lcom/android/settings/dV;

    invoke-virtual {v1}, Lcom/android/settings/dV;->eT()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f100221

    const v4, 0x7f10021a

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 137
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0400d5

    :goto_0
    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 143
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 146
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sG:Z

    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_1
    const v0, 0x7f10021d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f02023e

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    const v0, 0x7f10021e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090d15

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090d16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :cond_1
    return-object v1

    .line 141
    :cond_2
    const v0, 0x7f040137

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/z;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/z;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 472
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 473
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 474
    goto :goto_0

    .line 478
    :cond_1
    const-string v3, "manually_add_network"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->uz()V

    goto :goto_1

    .line 481
    :cond_2
    const-string v3, "wifi_enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avP:Lcom/android/settings/wifi/u;

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/u;->au(Z)V

    goto :goto_1

    .line 484
    :cond_3
    const-string v3, "wifi_share"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 485
    invoke-static {p0}, Lcom/android/settings/wifi/aG;->c(Landroid/app/Fragment;)V

    goto :goto_1

    .line 487
    :cond_4
    const-string v3, "cmcc_network_notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Lcom/android/settings/wifi/WifiTipActivity;->w(Landroid/content/Context;Z)V

    .line 491
    :cond_5
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_d

    move-object v0, p2

    .line 492
    check-cast v0, Lcom/android/settings/wifi/d;

    .line 493
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/d;->bc(Z)V

    .line 494
    iget-object v3, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    .line 495
    iget v4, v0, Lcom/android/settings/wifi/d;->networkId:I

    if-eq v4, v6, :cond_c

    iget v4, v0, Lcom/android/settings/wifi/d;->arZ:I

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/settings/wifi/d;->arZ:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    if-eqz v3, :cond_6

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 500
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iget v4, v0, Lcom/android/settings/wifi/d;->networkId:I

    if-ne v2, v4, :cond_9

    :cond_8
    iget v2, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v2, v1, :cond_b

    .line 501
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget v0, v0, Lcom/android/settings/wifi/d;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avM:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 488
    goto :goto_2

    .line 503
    :cond_b
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/d;->bc(Z)V

    goto/16 :goto_1

    .line 507
    :cond_c
    iput v6, v0, Lcom/android/settings/wifi/d;->networkId:I

    .line 510
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    .line 301
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aty:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/aG;->bK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090ca0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/aG;->bK(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atA:Z

    .line 306
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->uC()V

    .line 307
    return-void

    .line 302
    :cond_1
    const v0, 0x7f090ca1

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_1

    .line 171
    const v0, 0x7f100224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    .line 172
    const v0, 0x7f100223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atu:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 182
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 183
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bk(Z)V

    .line 186
    new-instance v0, Lcom/android/settings/wifi/A;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/A;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->dg:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atu:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_1
    return-void
.end method

.method uA()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->uA()V

    .line 558
    const-string v0, "connected_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 559
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    :cond_0
    return-void
.end method

.method protected uy()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/settings/wifi/MiuiWifiSettings;->avX:I

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 346
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 347
    const-string v1, "connected_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 348
    packed-switch v2, :pswitch_data_0

    .line 439
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atw:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 442
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->uC()V

    goto :goto_0

    .line 352
    :pswitch_0
    if-nez v0, :cond_f

    .line 353
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-eqz v0, :cond_6

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v2, v0

    .line 363
    :goto_2
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 364
    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v1, v3

    .line 368
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avR:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->avQ:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v0

    .line 369
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 370
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 371
    check-cast v0, Lcom/android/settings/wifi/d;

    .line 373
    invoke-virtual {v0}, Lcom/android/settings/wifi/d;->ud()Z

    move-result v4

    if-nez v4, :cond_e

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/wifi/d;->ue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v4

    .line 376
    if-eqz v4, :cond_4

    .line 377
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/d;->bh(Z)V

    .line 381
    :cond_4
    :goto_4
    invoke-virtual {v0}, Lcom/android/settings/wifi/d;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 382
    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->sE:Z

    if-nez v4, :cond_7

    .line 384
    if-nez v1, :cond_5

    .line 385
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 386
    const-string v4, "connected_wifi"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 387
    const v4, 0x7f090b4b

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 388
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_5
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/d;->bg(Z)V

    .line 392
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 393
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 356
    :cond_6
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 357
    const-string v2, "nearby_wifi"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 358
    const v2, 0x7f090b43

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 359
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v2, v0

    goto/16 :goto_2

    .line 395
    :cond_7
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/d;->bg(Z)V

    .line 396
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 399
    :cond_8
    if-eqz v4, :cond_9

    .line 400
    const v6, 0x7f090ce9

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/d;->setSummary(Ljava/lang/CharSequence;)V

    .line 403
    :cond_9
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 408
    :cond_a
    new-instance v0, Lcom/android/settings/wifi/G;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/G;-><init>(Landroid/content/Context;)V

    .line 409
    const-string v1, "manually_add_network"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 410
    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 411
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 413
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->atv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 417
    :pswitch_1
    const v2, 0x7f090298

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->cV(I)V

    .line 421
    :pswitch_2
    if-eqz v0, :cond_b

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    :cond_b
    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 430
    :pswitch_3
    if-eqz v0, :cond_c

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    :cond_c
    if-eqz v1, :cond_d

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    :cond_d
    const v0, 0x7f0902bf

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->cV(I)V

    goto/16 :goto_1

    :cond_e
    move-object v4, v3

    goto/16 :goto_4

    :cond_f
    move-object v2, v0

    goto/16 :goto_2

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
