.class public Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;
.super Lmiui/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Nb:Landroid/widget/TextView;

.field private Nc:Ljava/lang/String;

.field private Nd:Ljava/lang/String;

.field private Ne:I

.field private Nf:Z

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;

.field private sP:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nc:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nd:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    .line 57
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-boolean v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nf:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method private c(ZZ)V
    .locals 4

    .prologue
    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nd:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nc:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_0
    const-string v0, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReplyIntentToReceiver() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnClass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v0, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 227
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 74
    return-void
.end method

.method private g(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 118
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 119
    const-string v1, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialog() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    packed-switch p2, :pswitch_data_0

    .line 132
    :goto_0
    const v1, 0x7f090074

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 133
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    const v1, 0x7f090075

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 135
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->sP:Landroid/widget/Button;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 139
    return-void

    .line 123
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mb()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mc()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 129
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->md()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    if-nez v0, :cond_0

    const v0, 0x7f090535

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    return-object v0

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mb()Landroid/view/View;
    .locals 5

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->ma()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f100043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nb:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nb:Landroid/widget/TextView;

    const v2, 0x7f090105

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private mc()Landroid/view/View;
    .locals 5

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->ma()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f100043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nb:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nb:Landroid/widget/TextView;

    const v2, 0x7f090107

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private md()Landroid/view/View;
    .locals 5

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->ma()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f100043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nb:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nb:Landroid/widget/TextView;

    const v2, 0x7f09010b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private me()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "onPositive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0, v2, v2}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->c(ZZ)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 189
    return-void
.end method

.method private mf()V
    .locals 4

    .prologue
    .line 192
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "onNegative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 196
    invoke-static {p0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 199
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ng()Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mH()Z

    move-result v0

    .line 208
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->c(ZZ)V

    .line 209
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Back button pressed! ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 230
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 232
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->me()V

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mf()V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 78
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 112
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 90
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nc:Ljava/lang/String;

    .line 91
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nd:Ljava/lang/String;

    .line 92
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    .line 95
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() Request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    if-ne v0, v3, :cond_1

    .line 98
    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->g(Ljava/lang/String;I)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iput-boolean v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nf:Z

    goto :goto_0

    .line 99
    :cond_1
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    if-ne v0, v4, :cond_2

    .line 100
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->g(Ljava/lang/String;I)V

    goto :goto_1

    .line 101
    :cond_2
    iget v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 102
    const v0, 0x7f09010a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->g(Ljava/lang/String;I)V

    goto :goto_1

    .line 105
    :cond_3
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Ne:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    .line 246
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nf:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothPermissionActivity;->Nf:Z

    .line 250
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method
