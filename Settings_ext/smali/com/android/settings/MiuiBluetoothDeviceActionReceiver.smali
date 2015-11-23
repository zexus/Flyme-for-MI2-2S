.class public Lcom/android/settings/MiuiBluetoothDeviceActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothDeviceActionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 13
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 14
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 15
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 16
    return-void
.end method
