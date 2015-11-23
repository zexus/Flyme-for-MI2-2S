.class public Lcom/android/settings/b/c;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field public static final gG:Lcom/android/settings/search/l;


# instance fields
.field private adp:Landroid/preference/PreferenceCategory;

.field private adq:Landroid/preference/PreferenceCategory;

.field private adr:Landroid/preference/Preference;

.field private ft:Landroid/net/NetworkPolicyManager;

.field private gj:Lcom/android/settings/b/f;

.field private hD:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/android/settings/b/d;

    invoke-direct {v0}, Lcom/android/settings/b/d;-><init>()V

    sput-object v0, Lcom/android/settings/b/c;->gG:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/android/settings/b/c;)Lcom/android/settings/b/f;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/b/c;->gj:Lcom/android/settings/b/f;

    return-object v0
.end method

.method private aX(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/b/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/b/c;->adp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/b/c;->adq:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 90
    invoke-static {p1}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/b/c;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings/b/c;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 92
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/settings/b/c;->adq:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/b/c;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/settings/b/c;->adq:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/b/c;->adr:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/android/settings/b/e;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/b/e;-><init>(Lcom/android/settings/b/c;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 114
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/b/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/b/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/b/c;->ft:Landroid/net/NetworkPolicyManager;

    .line 68
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/b/c;->hD:Landroid/net/wifi/WifiManager;

    .line 70
    new-instance v0, Lcom/android/settings/b/f;

    iget-object v2, p0, Lcom/android/settings/b/c;->ft:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v2}, Lcom/android/settings/b/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/settings/b/c;->gj:Lcom/android/settings/b/f;

    .line 71
    iget-object v0, p0, Lcom/android/settings/b/c;->gj:Lcom/android/settings/b/f;

    invoke-virtual {v0}, Lcom/android/settings/b/f;->read()V

    .line 73
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/android/settings/b/c;->addPreferencesFromResource(I)V

    .line 74
    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Lcom/android/settings/b/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/b/c;->adp:Landroid/preference/PreferenceCategory;

    .line 75
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/b/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/b/c;->adq:Landroid/preference/PreferenceCategory;

    .line 76
    const-string v0, "wifi_disabled"

    invoke-virtual {p0, v0}, Lcom/android/settings/b/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/b/c;->adr:Landroid/preference/Preference;

    .line 78
    invoke-direct {p0, v1}, Lcom/android/settings/b/c;->aX(Landroid/content/Context;)V

    .line 79
    return-void
.end method
