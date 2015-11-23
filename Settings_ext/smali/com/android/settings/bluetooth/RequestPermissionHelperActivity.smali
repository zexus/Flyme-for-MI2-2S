.class public Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;
.super Lmiui/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private Pr:Z

.field private mApplicationName:Ljava/lang/String;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    return-void
.end method

.method private nr()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 165
    const-string v3, "ApplicationName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mApplicationName:Ljava/lang/String;

    .line 166
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->Pr:Z

    .line 179
    :goto_0
    invoke-static {p0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 180
    if-nez v2, :cond_2

    .line 181
    const-string v2, "RequestPermissionHelperActivity"

    const-string v3, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 187
    :goto_1
    return v0

    .line 168
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iput-boolean v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->Pr:Z

    .line 172
    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v4, 0x78

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move v0, v1

    .line 187
    goto :goto_1
.end method


# virtual methods
.method np()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 89
    iget-boolean v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->Pr:Z

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mApplicationName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090c9c

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 114
    :goto_0
    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 115
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 117
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    .line 120
    return-void

    .line 93
    :cond_0
    const v1, 0x7f0900f8

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 96
    :cond_1
    iget v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mApplicationName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090c9e

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 101
    :cond_2
    const v1, 0x7f0900ff

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mApplicationName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090c9d

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 108
    :cond_4
    const v1, 0x7f0900fe

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 193
    invoke-super {p0}, Lmiui/app/AlertActivity;->onBackPressed()V

    .line 194
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 125
    packed-switch p2, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 131
    :pswitch_0
    const/16 v1, 0x1e

    move v2, v1

    move v1, v0

    .line 133
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v1

    .line 134
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    .line 140
    :cond_1
    :goto_1
    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    :cond_2
    const/16 v0, -0x3e8

    .line 155
    :cond_3
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->nr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->finish()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->np()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;->dismiss()V

    goto :goto_0
.end method
