.class Lcom/android/settings_ext/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# instance fields
.field final synthetic Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$1;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$1;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    const-string v1, "accessory"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->a(Lcom/android/settings_ext/deviceinfo/UsbSettings;Z)Z

    .line 79
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbAccessoryMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$1;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-static {v2}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->a(Lcom/android/settings_ext/deviceinfo/UsbSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$1;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->finish()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$1;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-static {v0, v3}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->b(Lcom/android/settings_ext/deviceinfo/UsbSettings;Z)Z

    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$1;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->b(Lcom/android/settings_ext/deviceinfo/UsbSettings;)V

    goto :goto_0
.end method
