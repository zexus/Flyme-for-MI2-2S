.class public Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eo:Landroid/security/MiuiLockPatternUtils;

.field private mIsConnected:Z

.field qA:Landroid/os/AsyncTask;

.field private qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field private qw:Landroid/widget/ImageView;

.field private qx:Landroid/widget/ImageView;

.field private qy:Landroid/widget/TextView;

.field private qz:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    .line 43
    new-instance v0, Lcom/android/settings_ext/dW;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dW;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qz:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    .line 80
    iput-object v1, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qA:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qx:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qy:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qz:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object v0
.end method

.method private eU()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qA:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qA:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qA:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qA:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 161
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    const v0, 0x7f0400f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 114
    const v0, 0x7f100276

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    const v1, 0x7f100271

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    const v2, 0x7f100273

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qw:Landroid/widget/ImageView;

    .line 117
    const v2, 0x7f100274

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qx:Landroid/widget/ImageView;

    .line 118
    iget-object v2, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothNameToUnlock()Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v4, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v4}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    const-string v2, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    new-instance v1, Lcom/android/settings_ext/dY;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/dY;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f100272

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qy:Landroid/widget/TextView;

    .line 153
    return-object v3

    .line 124
    :cond_0
    const-string v5, "%s(%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->finish()V

    .line 194
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ext/dX;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/dX;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;)V

    invoke-direct {v1, v2, v0, v3}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v1, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 107
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->eU()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterUnlockListener()V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 180
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothDeviceInfoFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 169
    :cond_0
    return-void
.end method
