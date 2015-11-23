.class Lcom/android/settings_ext/bD;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic jt:Lcom/android/settings_ext/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings_ext/bD;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 264
    const v0, 0x1605a

    iget-object v1, p0, Lcom/android/settings_ext/bD;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 266
    iget-object v0, p0, Lcom/android/settings_ext/bD;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    .line 267
    return-void
.end method
