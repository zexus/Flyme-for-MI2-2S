.class public final Lcom/android/settings_ext/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings_ext/widget/I;


# instance fields
.field private MH:Landroid/widget/Switch;

.field private MI:Z

.field private final Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

.field private kr:Lcom/android/settings_ext/widget/SwitchBar;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic a(Lcom/android/settings_ext/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private am(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 171
    iput v1, v0, Landroid/os/Message;->what:I

    .line 172
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 157
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MI:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->b(Lcom/android/settings_ext/widget/I;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MI:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->a(Lcom/android/settings_ext/widget/I;)V

    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f09029a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->at(Z)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 190
    return-void
.end method

.method aR(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-direct {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 149
    invoke-direct {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->am(Z)V

    .line 151
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 136
    invoke-direct {p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->am(Z)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->MH:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 144
    invoke-direct {p0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->am(Z)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
