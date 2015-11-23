.class Lcom/android/settings/vpn2/MiuiVpnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiVpnSettings.java"


# instance fields
.field final synthetic anW:Lcom/android/settings/vpn2/MiuiVpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;->anW:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "vpn_on"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;->anW:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-static {v1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Lcom/android/settings/vpn2/MiuiVpnSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;->anW:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-static {v1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V

    .line 81
    return-void
.end method
