.class Lcom/android/settings_ext/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# instance fields
.field final synthetic RL:Lcom/android/settings_ext/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/Memory$2;->RL:Lcom/android/settings_ext/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 282
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory$2;->RL:Lcom/android/settings_ext/deviceinfo/Memory;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/Memory;->b(Lcom/android/settings_ext/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory$2;->RL:Lcom/android/settings_ext/deviceinfo/Memory;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/Memory;->a(Lcom/android/settings_ext/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_0
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory$2;->RL:Lcom/android/settings_ext/deviceinfo/Memory;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/Memory;->a(Lcom/android/settings_ext/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    .line 288
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->os()V

    goto :goto_1

    .line 291
    :cond_1
    return-void
.end method
