.class public Lcom/android/settings/df;
.super Lcom/android/settings/V;
.source "MiuiAirplaneModeEnabler.java"


# instance fields
.field private aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field protected ol:Z


# direct methods
.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected d(Z)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/df;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/df;->bU:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/settings/df;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 80
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 119
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 94
    const-string v0, "airplane_mode_settings"

    const-string v1, "airplane_mode_settings"

    const-string v2, "airplane_mode_settings"

    invoke-static {v2}, Lcom/android/settings/cz;->x(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/provider/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/df;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/df;->bU:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/df;->d(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/df;->ol:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/df;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/df;->ol:Z

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/android/settings/V;->pause()V

    .line 62
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/df;->ol:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/df;->ol:Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/df;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/android/settings/V;->resume()V

    .line 54
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/df;->bU:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/settings/df;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/df;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 125
    return-void
.end method
