.class Lcom/android/settings_ext/location/LocationMode$1;
.super Landroid/os/Handler;
.source "LocationMode.java"


# instance fields
.field final synthetic acC:Lcom/android/settings_ext/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/location/LocationMode;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/location/LocationMode$1;->acC:Lcom/android/settings_ext/location/LocationMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode$1;->acC:Lcom/android/settings_ext/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings_ext/location/LocationMode;->a(Lcom/android/settings_ext/location/LocationMode;)Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 89
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode$1;->acC:Lcom/android/settings_ext/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings_ext/location/LocationMode;->a(Lcom/android/settings_ext/location/LocationMode;)Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
