.class public Lcom/android/settings_ext/wifi/WifiSettings;
.super Lcom/android/settings_ext/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ext/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ext/wifi/WifiSettings$Scanner;,
        Lcom/android/settings_ext/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ext/search/Indexable$SearchIndexProvider;

.field public static mVerboseLogging:I

.field private static savedNetworksExist:Z


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

.field private mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiToNfcDialog:Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ext/wifi/WifiSettings;->mVerboseLogging:I

    .line 987
    new-instance v0, Lcom/android/settings_ext/wifi/WifiSettings$5;

    invoke-direct {v0}, Lcom/android/settings_ext/wifi/WifiSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ext/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ext/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 218
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/android/settings_ext/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/WifiSettings$1;-><init>(Lcom/android/settings_ext/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings_ext/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;
    .param p2, "x2"    # Landroid/net/wifi/WifiInfo;
    .param p3, "x3"    # Landroid/net/NetworkInfo;

    .prologue
    .line 82
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ext/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 715
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 862
    :cond_0
    return-void
.end method

.method private static constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "lastNetworkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ext/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v1, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ext/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings_ext/wifi/WifiSettings$Multimap;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/android/settings_ext/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings_ext/wifi/WifiSettings$1;)V

    .line 725
    .local v2, "apMap":Lcom/android/settings_ext/wifi/WifiSettings$Multimap;, "Lcom/android/settings_ext/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings_ext/wifi/AccessPoint;>;"
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 726
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_6

    .line 728
    sget-boolean v11, Lcom/android/settings_ext/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    :goto_0
    if-eq v11, v10, :cond_0

    .line 729
    sget-boolean v10, Lcom/android/settings_ext/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    sput-boolean v10, Lcom/android/settings_ext/wifi/WifiSettings;->savedNetworksExist:Z

    .line 730
    instance-of v10, p0, Landroid/app/Activity;

    if-eqz v10, :cond_0

    move-object v10, p0

    .line 731
    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 734
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 735
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v10, v3, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v10, :cond_2

    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v10, :cond_1

    .line 738
    :cond_2
    new-instance v0, Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ext/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 739
    .local v0, "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 740
    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ext/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 742
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v10, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings_ext/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 728
    .end local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 729
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 747
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 748
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_b

    .line 749
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 751
    .local v8, "result":Landroid/net/wifi/ScanResult;
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "[IBSS]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 756
    const/4 v5, 0x0

    .line 757
    .local v5, "found":Z
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/android/settings_ext/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/AccessPoint;

    .line 758
    .restart local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    invoke-virtual {v0, v8}, Lcom/android/settings_ext/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 759
    const/4 v5, 0x1

    goto :goto_4

    .line 761
    .end local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    :cond_9
    if-nez v5, :cond_7

    .line 762
    new-instance v0, Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-direct {v0, p0, v8}, Lcom/android/settings_ext/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 763
    .restart local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 764
    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ext/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 766
    :cond_a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v10, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings_ext/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 773
    .end local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    .end local v5    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 774
    return-object v1
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 778
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/wifi/WifiSettings;->updateWifiState(I)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 785
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 786
    :cond_3
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 787
    const-string v2, "networkInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 789
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 790
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 791
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->updateAccessPoints()V

    .line 792
    invoke-direct {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 793
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ext/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private setOffMessage()V
    .locals 5

    .prologue
    .line 693
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f090250

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 695
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 697
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    const v1, 0x7f090239

    .line 705
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 706
    .local v0, "charSeq":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 709
    .end local v0    # "charSeq":Ljava/lang/CharSequence;
    .end local v1    # "resId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 710
    return-void

    .line 703
    :cond_1
    const v1, 0x7f09023a

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings_ext/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings_ext/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 591
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->removeDialog(I)V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    .line 597
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 598
    iput-boolean p2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgEdit:Z

    .line 600
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(I)V

    .line 601
    return-void
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 645
    const v4, 0x7f090252

    invoke-direct {p0, v4}, Lcom/android/settings_ext/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 648
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 651
    .local v3, "wifiState":I
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v4

    sput v4, Lcom/android/settings_ext/wifi/WifiSettings;->mVerboseLogging:I

    .line 653
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 677
    :pswitch_0
    const v4, 0x7f090229

    invoke-direct {p0, v4}, Lcom/android/settings_ext/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 656
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v7, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings_ext/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v1

    .line 659
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ext/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 660
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 661
    const v4, 0x7f090251

    invoke-direct {p0, v4}, Lcom/android/settings_ext/wifi/WifiSettings;->addMessagePreference(I)V

    .line 664
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/AccessPoint;

    .line 666
    .local v0, "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 667
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 673
    .end local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    .end local v1    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ext/wifi/AccessPoint;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 681
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 800
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 801
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->pause()V

    .line 825
    :cond_0
    return-void

    .line 805
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4

    .line 807
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->pause()V

    .line 812
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 813
    if-eqz p1, :cond_2

    .line 814
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 820
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 821
    check-cast v0, Lcom/android/settings_ext/wifi/AccessPoint;

    .line 822
    .local v0, "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ext/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 817
    .end local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 809
    .end local v1    # "i":I
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 829
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 833
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 847
    :goto_0
    iput-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 848
    iput-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 849
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->pause()V

    .line 850
    :goto_1
    return-void

    .line 835
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 839
    :pswitch_1
    const v1, 0x7f090228

    invoke-direct {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 843
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 399
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 401
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f090243

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 405
    sget-boolean v2, Lcom/android/settings_ext/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 406
    const/4 v2, 0x3

    const v3, 0x7f0902a9

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 411
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f090695

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 414
    const/4 v2, 0x5

    const v3, 0x7f09024a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 416
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    return-void

    .line 399
    nop

    :array_0
    .array-data 4
        0x7f01002a
        0x7f01002c
    .end array-data
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 933
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 929
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings_ext/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SettingsActivity;

    .line 359
    .local v0, "activity":Lcom/android/settings_ext/SettingsActivity;
    new-instance v1, Lcom/android/settings_ext/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsActivity;->getSwitchBar()Lcom/android/settings_ext/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ext/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ext/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 904
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    .line 906
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 918
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->resume()V

    .line 921
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->updateAccessPoints()V

    .line 924
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 925
    :goto_1
    return-void

    .line 910
    :cond_1
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ext/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 984
    const v0, 0x7f0908d4

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 688
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 689
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 239
    invoke-super {p0, p1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 241
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings_ext/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 243
    new-instance v8, Lcom/android/settings_ext/wifi/WifiSettings$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ext/wifi/WifiSettings$2;-><init>(Lcom/android/settings_ext/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 258
    new-instance v8, Lcom/android/settings_ext/wifi/WifiSettings$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ext/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ext/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 273
    new-instance v8, Lcom/android/settings_ext/wifi/WifiSettings$4;

    invoke-direct {v8, p0}, Lcom/android/settings_ext/wifi/WifiSettings$4;-><init>(Lcom/android/settings_ext/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 288
    if-eqz p1, :cond_0

    .line 289
    const-string v8, "edit_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgEdit:Z

    .line 290
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 291
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 299
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "wifi_enable_next_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 301
    iget-boolean v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v8, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->hasNextButton()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 305
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 308
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings_ext/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 313
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const v8, 0x7f060053

    invoke-virtual {p0, v8}, Lcom/android/settings_ext/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings_ext/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0, v10}, Lcom/android/settings_ext/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 319
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 320
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "ssid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->updateAccessPoints()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 323
    .local v6, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 324
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 325
    .local v5, "preference":Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v8, :cond_3

    move-object v0, v5

    .line 326
    check-cast v0, Lcom/android/settings_ext/wifi/AccessPoint;

    .line 327
    .local v0, "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    iget-object v8, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    iget v8, v0, Lcom/android/settings_ext/wifi/AccessPoint;->security:I

    if-eqz v8, :cond_3

    .line 329
    invoke-virtual {p0, v6, v5}, Lcom/android/settings_ext/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 335
    .end local v0    # "accessPoint":Lcom/android/settings_ext/wifi/AccessPoint;
    .end local v2    # "i":I
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_2
    return-void

    .line 323
    .restart local v2    # "i":I
    .restart local v5    # "preference":Landroid/preference/Preference;
    .restart local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v7    # "ssid":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 951
    iput-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 952
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(Lcom/android/settings_ext/wifi/AccessPoint;Z)V

    .line 953
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 866
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->forget()V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiDialog;->getController()Lcom/android/settings_ext/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->submit(Lcom/android/settings_ext/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 535
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 536
    invoke-super {p0, p1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 564
    :goto_0
    return v0

    .line 538
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 564
    invoke-super {p0, p1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 540
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->connect(I)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->security:I

    if-nez v1, :cond_2

    .line 544
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 545
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(Lcom/android/settings_ext/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 552
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 556
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(Lcom/android/settings_ext/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 560
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 498
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_3

    .line 499
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 502
    .local v1, "preference":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v2, :cond_3

    .line 503
    check-cast v1, Lcom/android/settings_ext/wifi/AccessPoint;

    .end local v1    # "preference":Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 504
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 505
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ext/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 507
    const/4 v2, 0x7

    const v3, 0x7f09024b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 511
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ext/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ext/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_2

    .line 518
    :cond_1
    const/16 v2, 0x8

    const v3, 0x7f09024d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 520
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-eq v2, v5, :cond_3

    .line 521
    const/16 v2, 0x9

    const v3, 0x7f09024e

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 522
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 523
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_3

    .line 526
    const/16 v2, 0xa

    const v3, 0x7f09024f

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 531
    .end local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 605
    packed-switch p1, :pswitch_data_0

    .line 633
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 607
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 608
    .local v0, "ap":Lcom/android/settings_ext/wifi/AccessPoint;
    if-nez v0, :cond_1

    .line 609
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 610
    new-instance v0, Lcom/android/settings_ext/wifi/AccessPoint;

    .end local v0    # "ap":Lcom/android/settings_ext/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 612
    .restart local v0    # "ap":Lcom/android/settings_ext/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 614
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 618
    :cond_1
    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 619
    new-instance v1, Lcom/android/settings_ext/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings_ext/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ext/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    .line 620
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    goto :goto_0

    .line 622
    .end local v0    # "ap":Lcom/android/settings_ext/wifi/AccessPoint;
    :pswitch_2
    new-instance v1, Lcom/android/settings_ext/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ext/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 624
    :pswitch_3
    new-instance v1, Lcom/android/settings_ext/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ext/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 626
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 627
    new-instance v1, Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ext/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;

    .line 629
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 605
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
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 391
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onDestroyView()V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 344
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0902a2

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    :goto_0
    return v6

    .line 439
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 493
    invoke-super {p0, p1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 441
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 442
    goto :goto_0

    .line 458
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 459
    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v6, v10

    .line 464
    goto :goto_0

    .line 466
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v6, v10

    .line 469
    goto :goto_0

    .line 471
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/SettingsActivity;

    if-eqz v0, :cond_3

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SettingsActivity;

    const-class v1, Lcom/android/settings_ext/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 480
    goto :goto_0

    .line 476
    :cond_3
    const-class v0, Lcom/android/settings_ext/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ext/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 482
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/SettingsActivity;

    if-eqz v0, :cond_4

    .line 483
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SettingsActivity;

    const-class v1, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902a3

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 491
    goto :goto_0

    .line 487
    :cond_4
    const-class v0, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0902a3

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ext/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 439
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
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onPause()V

    .line 377
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiEnabler;->pause()V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->pause()V

    .line 383
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 569
    instance-of v1, p2, Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 570
    check-cast p2, Lcom/android/settings_ext/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 572
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->security:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 576
    sget-boolean v1, Lcom/android/settings_ext/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v1, :cond_0

    .line 577
    sput-boolean v0, Lcom/android/settings_ext/wifi/WifiSettings;->savedNetworksExist:Z

    .line 578
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 587
    :goto_0
    return v0

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/wifi/WifiSettings;->showDialog(Lcom/android/settings_ext/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 585
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 365
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onResume()V

    .line 366
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->updateAccessPoints()V

    .line 372
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 421
    invoke-super {p0, p1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 424
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDialog:Lcom/android/settings_ext/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 429
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/settings_ext/RestrictedSettingsFragment;->onStart()V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings_ext/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ext/wifi/WifiEnabler;

    .line 352
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->resume()V

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 944
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->resume()V

    .line 980
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings_ext/wifi/WifiConfigController;)V
    .locals 3
    .param p1, "configController"    # Lcom/android/settings_ext/wifi/WifiConfigController;

    .prologue
    const/4 v2, -0x1

    .line 877
    invoke-virtual {p1}, Lcom/android/settings_ext/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 879
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 880
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->connect(I)V

    .line 896
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mScanner:Lcom/android/settings_ext/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/WifiSettings$Scanner;->resume()V

    .line 899
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettings;->updateAccessPoints()V

    .line 900
    return-void

    .line 884
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 885
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 889
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings_ext/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 890
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 892
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method
