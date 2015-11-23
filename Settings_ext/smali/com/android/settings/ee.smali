.class Lcom/android/settings_ext/ee;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings_ext/ee;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings_ext/ee;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings_ext/ee;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ext/ee;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/ee;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    .line 307
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 308
    const-string v2, "miui_security_fragment_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    check-cast v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings_ext/ee;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
