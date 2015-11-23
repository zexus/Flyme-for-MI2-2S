.class Lcom/android/settings_ext/users/UserSettings$12;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# instance fields
.field final synthetic amU:Lcom/android/settings_ext/users/UserSettings;

.field final synthetic amV:I


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    iput p2, p0, Lcom/android/settings_ext/users/UserSettings$12;->amV:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 666
    .line 668
    iget v0, p0, Lcom/android/settings_ext/users/UserSettings$12;->amV:I

    if-ne v0, v4, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ext/users/UserSettings;->k(Lcom/android/settings_ext/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 673
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ext/users/UserSettings;->i(Lcom/android/settings_ext/users/UserSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings_ext/users/UserSettings;->a(Lcom/android/settings_ext/users/UserSettings;Z)Z

    .line 675
    iget v2, p0, Lcom/android/settings_ext/users/UserSettings$12;->amV:I

    if-ne v2, v4, :cond_1

    .line 676
    iget-object v2, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings_ext/users/UserSettings;->c(Lcom/android/settings_ext/users/UserSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 677
    iget-object v2, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings_ext/users/UserSettings;->c(Lcom/android/settings_ext/users/UserSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings_ext/users/UserSettings;->c(Lcom/android/settings_ext/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 683
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ext/users/UserSettings;->l(Lcom/android/settings_ext/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0

    .line 680
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings_ext/users/UserSettings;->c(Lcom/android/settings_ext/users/UserSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/users/UserSettings$12;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings_ext/users/UserSettings;->c(Lcom/android/settings_ext/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
