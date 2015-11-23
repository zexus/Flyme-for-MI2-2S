.class Lcom/android/settings_ext/wifi/openwifi/e;
.super Ljava/lang/Object;
.source "FreeWifiLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ext/wifi/openwifi/e;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/e;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings_ext/wifi/MiuiWifiService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/e;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings_ext/wifi/MiuiWifiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/MiuiWifiService;->us()V

    .line 90
    :cond_0
    return-void
.end method
