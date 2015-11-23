.class public Lcom/android/settings/MiuiSecurityBluetoothSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSecurityBluetoothSettings.java"


# instance fields
.field private qK:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettings;->qK:Z

    if-eqz v0, :cond_0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityBluetoothSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 38
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 39
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 40
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 43
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    iput-boolean v3, p0, Lcom/android/settings/MiuiSecurityBluetoothSettings;->qK:Z

    .line 18
    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 19
    const-string v0, ":android:show_fragment"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityBluetoothSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    const-string v0, ":android:show_fragment"

    const-class v2, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v0, "password_confirmed"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    const-string v0, "device_address"

    const-string v2, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    :goto_0
    const-string v0, ":android:no_headers"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    :cond_0
    return-object v1

    .line 25
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/MiuiSecurityBluetoothSettings;->qK:Z

    .line 26
    const-string v0, ":android:show_fragment"

    const-class v2, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
