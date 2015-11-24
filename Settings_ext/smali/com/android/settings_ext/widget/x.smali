.class final Lcom/android/settings_ext/widget/x;
.super Lcom/android/settings_ext/widget/C;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/widget/C;-><init>(Lcom/android/settings_ext/widget/w;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/widget/w;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/settings_ext/widget/x;-><init>()V

    return-void
.end method

.method private static cQ(I)I
    .locals 1

    .prologue
    .line 494
    packed-switch p0, :pswitch_data_0

    .line 504
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 496
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 502
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public aY(Z)I
    .locals 1

    .prologue
    .line 445
    if-eqz p1, :cond_0

    const v0, 0x7f0200ab

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200aa

    goto :goto_0
.end method

.method public getActualState(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/android/settings_ext/widget/SettingsAppWidgetProvider;->tF()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 452
    invoke-static {p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 453
    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x4

    .line 458
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/widget/SettingsAppWidgetProvider;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    .line 458
    :cond_1
    invoke-static {}, Lcom/android/settings_ext/widget/SettingsAppWidgetProvider;->tF()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings_ext/widget/x;->cQ(I)I

    move-result v0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 482
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 486
    invoke-static {v0}, Lcom/android/settings_ext/widget/x;->cQ(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ext/widget/x;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/android/settings_ext/widget/SettingsAppWidgetProvider;->tF()Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 464
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Lcom/android/settings_ext/widget/y;

    invoke-direct {v0, p0, p2}, Lcom/android/settings_ext/widget/y;-><init>(Lcom/android/settings_ext/widget/x;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public tG()I
    .locals 1

    .prologue
    .line 440
    const v0, 0x7f1002ed

    return v0
.end method

.method public tH()I
    .locals 1

    .prologue
    .line 441
    const v0, 0x7f1002ee

    return v0
.end method

.method public tI()I
    .locals 1

    .prologue
    .line 442
    const v0, 0x7f1002ef

    return v0
.end method

.method public tJ()I
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f090765

    return v0
.end method
