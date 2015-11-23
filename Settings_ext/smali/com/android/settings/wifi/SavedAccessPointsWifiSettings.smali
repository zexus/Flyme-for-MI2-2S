.class public Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/k;


# static fields
.field public static final gG:Lcom/android/settings/search/l;


# instance fields
.field private atL:Lcom/android/settings/wifi/aa;

.field private atM:Lcom/android/settings/wifi/AccessPoint;

.field private atN:Landroid/os/Bundle;

.field private atO:Lcom/android/settings/wifi/AccessPoint;

.field private hD:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/android/settings/wifi/I;

    invoke-direct {v0}, Lcom/android/settings/wifi/I;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->gG:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 112
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 114
    if-eqz v7, :cond_4

    .line 116
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move v2, v3

    .line 117
    :goto_0
    if-ge v2, v8, :cond_1

    .line 118
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 119
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 121
    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v9, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v6, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v4, v3

    .line 130
    :goto_1
    if-ge v4, v8, :cond_4

    .line 131
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 132
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v1, :cond_2

    .line 130
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 137
    :cond_2
    new-instance v9, Lcom/android/settings/wifi/d;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/wifi/d;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 138
    invoke-virtual {v9, v3}, Lcom/android/settings/wifi/d;->setShowArrow(Z)V

    .line 140
    iget-object v0, v9, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    invoke-virtual {v9, v3}, Lcom/android/settings/wifi/d;->be(Z)V

    .line 143
    if-eqz v0, :cond_3

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move v2, v3

    .line 145
    :goto_3
    if-ge v2, v10, :cond_3

    .line 146
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {v9, v1}, Lcom/android/settings/wifi/d;->d(Landroid/net/wifi/ScanResult;)Z

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/settings/wifi/d;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 151
    :cond_3
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    :cond_4
    return-object v5
.end method

.method private a(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atL:Lcom/android/settings/wifi/aa;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atL:Lcom/android/settings/wifi/aa;

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 168
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hW()V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 91
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v3

    .line 94
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 96
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 97
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 102
    const-string v0, "SavedAccessPointsWifiSettings"

    const-string v1, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atN:Landroid/os/Bundle;

    .line 85
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    .line 209
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 66
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atN:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atN:Landroid/os/Bundle;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atO:Lcom/android/settings/wifi/AccessPoint;

    .line 180
    new-instance v0, Lcom/android/settings/wifi/aa;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/aa;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atL:Lcom/android/settings/wifi/aa;

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atL:Lcom/android/settings/wifi/aa;

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 213
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 214
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->hW()V

    .line 72
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atL:Lcom/android/settings/wifi/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atL:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atN:Landroid/os/Bundle;

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atM:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atN:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->k(Landroid/os/Bundle;)V

    .line 197
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->atN:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    :cond_0
    return-void
.end method
