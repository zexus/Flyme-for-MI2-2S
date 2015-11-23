.class public Lcom/android/settings_ext/wifi/WifiConfigInfo;
.super Lmiui/app/Activity;
.source "WifiConfigInfo.java"


# instance fields
.field private avk:Landroid/widget/TextView;

.field private hD:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiConfigInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigInfo;->hD:Landroid/net/wifi/WifiManager;

    .line 42
    const v0, 0x7f04012e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiConfigInfo;->setContentView(I)V

    .line 43
    const v0, 0x7f100300

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiConfigInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigInfo;->avk:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigInfo;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigInfo;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 52
    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 57
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigInfo;->avk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigInfo;->avk:Landroid/widget/TextView;

    const v1, 0x7f090358

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
