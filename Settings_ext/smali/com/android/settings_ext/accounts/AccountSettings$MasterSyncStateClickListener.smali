.class Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic BD:Lcom/android/settings_ext/accounts/AccountSettings;

.field private final zA:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/accounts/AccountSettings;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p2, p0, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;->zA:Landroid/os/UserHandle;

    .line 520
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 524
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "AccountSettings"

    const-string v2, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :goto_0
    return v1

    .line 527
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/accounts/AccountSettings$MasterSyncStateClickListener;->zA:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/android/settings_ext/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->a(Lcom/android/settings_ext/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
