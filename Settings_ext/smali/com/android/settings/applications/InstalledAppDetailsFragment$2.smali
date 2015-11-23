.class Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final synthetic GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$2;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$2;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->c(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Z)V

    .line 1051
    return-void

    .line 1050
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
