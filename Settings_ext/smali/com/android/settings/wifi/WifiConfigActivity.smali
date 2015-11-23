.class public Lcom/android/settings_ext/wifi/WifiConfigActivity;
.super Landroid/app/Activity;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private asR:Lcom/android/settings_ext/wifi/AccessPoint;

.field private atL:Lcom/android/settings_ext/wifi/aa;

.field private hD:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 47
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->atL:Lcom/android/settings_ext/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/aa;->vb()Lcom/android/settings_ext/wifi/T;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/T;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->hD:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 52
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 53
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/T;->tZ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 56
    :goto_0
    invoke-static {p0, v2, v0}, Lcom/android/settings_ext/wifi/Y;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 58
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->hD:Landroid/net/wifi/WifiManager;

    .line 26
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 27
    invoke-static {p0, v0}, Lcom/android/settings_ext/wifi/Y;->d(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 28
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings_ext/wifi/Y;->w(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 29
    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->hD:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiConfigActivity;->finish()V

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v1, Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 35
    new-instance v0, Lcom/android/settings_ext/wifi/aa;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings_ext/wifi/aa;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ext/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->atL:Lcom/android/settings_ext/wifi/aa;

    .line 36
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->atL:Lcom/android/settings_ext/wifi/aa;

    new-instance v1, Lcom/android/settings_ext/wifi/S;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/S;-><init>(Lcom/android/settings_ext/wifi/WifiConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/aa;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->atL:Lcom/android/settings_ext/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/aa;->show()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->atL:Lcom/android/settings_ext/wifi/aa;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigActivity;->atL:Lcom/android/settings_ext/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/aa;->dismiss()V

    .line 66
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    return-void
.end method
