.class Lcom/android/settings_ext/fZ;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# instance fields
.field final synthetic we:Lcom/android/settings_ext/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RestrictedSettingsFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ext/fZ;->we:Lcom/android/settings_ext/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/fZ;->we:Lcom/android/settings_ext/RestrictedSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/RestrictedSettingsFragment;->a(Lcom/android/settings_ext/RestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/fZ;->we:Lcom/android/settings_ext/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->a(Lcom/android/settings_ext/RestrictedSettingsFragment;Z)Z

    .line 69
    iget-object v0, p0, Lcom/android/settings_ext/fZ;->we:Lcom/android/settings_ext/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->b(Lcom/android/settings_ext/RestrictedSettingsFragment;Z)Z

    .line 71
    :cond_0
    return-void
.end method