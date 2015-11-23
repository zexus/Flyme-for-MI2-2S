.class Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiUsbSettings.java"


# instance fields
.field final synthetic So:Lcom/android/settings/deviceinfo/MiuiUsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->So:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->So:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->So:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V

    .line 43
    return-void
.end method
