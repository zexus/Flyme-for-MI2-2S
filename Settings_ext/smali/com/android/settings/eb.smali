.class Lcom/android/settings/eb;
.super Landroid/os/AsyncTask;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# instance fields
.field final synthetic qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->c(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->d(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->setLock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->d(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 166
    iget-object v1, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->f(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->f(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 170
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->d(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 173
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)I

    .line 182
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->g(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/eb;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/eb;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/eb;->qJ:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;Z)Z

    .line 159
    return-void
.end method
