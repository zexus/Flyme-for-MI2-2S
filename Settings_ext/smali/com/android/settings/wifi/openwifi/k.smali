.class Lcom/android/settings_ext/wifi/openwifi/k;
.super Landroid/os/Handler;
.source "FreeWifiLogin.java"


# instance fields
.field final synthetic ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings_ext/wifi/openwifi/k;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 370
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 380
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/k;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;I)V

    .line 382
    :goto_0
    return-void

    .line 372
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/k;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;->e(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)V

    goto :goto_0

    .line 376
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/k;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;->f(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)V

    goto :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method
