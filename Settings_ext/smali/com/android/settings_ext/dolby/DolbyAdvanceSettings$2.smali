.class Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "DolbyAdvanceSettings.java"


# instance fields
.field private final Oi:Ljava/lang/Runnable;

.field final synthetic XH:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;)V
    .locals 1

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->XH:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance v0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2$1;-><init>(Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;)V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->Oi:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 242
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->Oi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->Oi:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->XH:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;

    invoke-static {v0, p1}, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;->a(Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;Landroid/content/Context;)V

    goto :goto_0
.end method
