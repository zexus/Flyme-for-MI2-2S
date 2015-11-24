.class Lcom/android/settings_ext/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic Ge:Lcom/android/settings_ext/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$2;->Ge:Lcom/android/settings_ext/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$2;->Ge:Lcom/android/settings_ext/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->b(Lcom/android/settings_ext/applications/InstalledAppDetails;Z)V

    .line 1301
    return-void

    .line 1300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
