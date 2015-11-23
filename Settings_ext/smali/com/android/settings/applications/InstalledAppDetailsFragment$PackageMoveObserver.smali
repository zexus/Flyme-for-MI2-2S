.class Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final synthetic GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$PackageMoveObserver;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->c(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 224
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 225
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$PackageMoveObserver;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-static {v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->c(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method
