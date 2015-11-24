.class Lcom/android/settings_ext/bG;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic jt:Lcom/android/settings_ext/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings_ext/bG;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 394
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/bG;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/bG;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 398
    iget-object v0, p0, Lcom/android/settings_ext/bG;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    .line 399
    return-void

    .line 395
    :catch_0
    move-exception v0

    goto :goto_0
.end method
