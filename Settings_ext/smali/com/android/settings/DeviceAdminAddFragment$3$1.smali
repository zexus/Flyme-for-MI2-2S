.class Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAddFragment.java"


# instance fields
.field final synthetic jx:Lcom/android/settings_ext/bJ;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bJ;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;->jx:Lcom/android/settings_ext/bJ;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;->jx:Lcom/android/settings_ext/bJ;

    iget-object v1, v0, Lcom/android/settings_ext/bJ;->jw:Lcom/android/settings_ext/DeviceAdminAddFragment;

    if-eqz p1, :cond_0

    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ext/DeviceAdminAddFragment;->a(Lcom/android/settings_ext/DeviceAdminAddFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 241
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;->jx:Lcom/android/settings_ext/bJ;

    iget-object v0, v0, Lcom/android/settings_ext/bJ;->jw:Lcom/android/settings_ext/DeviceAdminAddFragment;

    invoke-static {v0}, Lcom/android/settings_ext/DeviceAdminAddFragment;->a(Lcom/android/settings_ext/DeviceAdminAddFragment;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;->jx:Lcom/android/settings_ext/bJ;

    iget-object v0, v0, Lcom/android/settings_ext/bJ;->jw:Lcom/android/settings_ext/DeviceAdminAddFragment;

    iget-object v0, v0, Lcom/android/settings_ext/DeviceAdminAddFragment;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;->jx:Lcom/android/settings_ext/bJ;

    iget-object v1, v1, Lcom/android/settings_ext/bJ;->jw:Lcom/android/settings_ext/DeviceAdminAddFragment;

    iget-object v1, v1, Lcom/android/settings_ext/DeviceAdminAddFragment;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;->jx:Lcom/android/settings_ext/bJ;

    iget-object v0, v0, Lcom/android/settings_ext/bJ;->jw:Lcom/android/settings_ext/DeviceAdminAddFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/DeviceAdminAddFragment;->finish()V

    .line 251
    :goto_2
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAddFragment$3$1;->jx:Lcom/android/settings_ext/bJ;

    iget-object v0, v0, Lcom/android/settings_ext/bJ;->jw:Lcom/android/settings_ext/DeviceAdminAddFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/DeviceAdminAddFragment;->showDialog(I)V

    goto :goto_2

    .line 244
    :catch_0
    move-exception v0

    goto :goto_1
.end method
