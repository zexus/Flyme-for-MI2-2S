.class public Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private Pq:Z

.field private Pr:Z

.field private Ps:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 77
    new-instance v0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pq:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Ps:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->nq()V

    return-void
.end method

.method private np()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    iget-boolean v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pq:Z

    if-eqz v1, :cond_1

    .line 174
    const v1, 0x7f090100

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 190
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 191
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v5, :cond_0

    .line 195
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 197
    :cond_0
    return-void

    .line 179
    :cond_1
    iget v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 180
    const v1, 0x7f0900fa

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    :goto_1
    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 183
    :cond_2
    const v1, 0x7f0900f9

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private nq()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-boolean v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pr:Z

    if-eqz v1, :cond_2

    .line 243
    const/4 v0, -0x1

    .line 262
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 266
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->finish()V

    .line 268
    return-void

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 248
    invoke-static {p0, v2, v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothPreferences;->b(Landroid/content/Context;J)V

    .line 250
    iget v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v1, :cond_3

    .line 251
    invoke-static {p0, v2, v3}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableTimeoutReceiver;->a(Landroid/content/Context;J)V

    .line 253
    :cond_3
    iget v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 255
    if-lt v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 259
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nr()Z
    .locals 6

    .prologue
    const/16 v5, 0x78

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 276
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pr:Z

    .line 296
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 297
    if-nez v2, :cond_4

    .line 298
    const-string v2, "RequestPermissionActivity"

    const-string v3, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 304
    :goto_1
    return v0

    .line 278
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 283
    const-string v2, "RequestPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v3, 0xe10

    if-le v2, v3, :cond_0

    .line 286
    :cond_2
    iput v5, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 289
    :cond_3
    const-string v2, "RequestPermissionActivity"

    const-string v3, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->setResult(I)V

    goto :goto_1

    .line 302
    :cond_4
    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move v0, v1

    .line 304
    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 201
    if-eq p1, v1, :cond_0

    .line 202
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->finish()V

    .line 223
    :goto_0
    return-void

    .line 207
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 208
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 215
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Ps:Z

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->nq()V

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->np()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 319
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 226
    packed-switch p2, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->nq()V

    goto :goto_0

    .line 232
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->nr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->finish()V

    .line 166
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    .line 108
    packed-switch v1, :pswitch_data_0

    .line 164
    const-string v0, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown adapter state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 141
    const-class v2, Lcom/android/settings_ext/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    const-string v2, "ApplicationName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pr:Z

    if-eqz v0, :cond_2

    .line 145
    const-string v0, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    iput-boolean v4, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pq:Z

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 135
    goto :goto_1

    .line 147
    :cond_2
    const-string v0, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v0, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v2, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 155
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pr:Z

    if-eqz v0, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->nq()V

    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->np()V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 310
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->Pq:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    :cond_0
    return-void
.end method
