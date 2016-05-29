.class Lcom/android/settings_ext/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RestrictedSettingsFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ext/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ext/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ext/RestrictedSettingsFragment;

    # getter for: Lcom/android/settings_ext/RestrictedSettingsFragment;->mChallengeRequested:Z
    invoke-static {v0}, Lcom/android/settings_ext/RestrictedSettingsFragment;->access$000(Lcom/android/settings_ext/RestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings_ext/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ext/RestrictedSettingsFragment;

    # setter for: Lcom/android/settings_ext/RestrictedSettingsFragment;->mChallengeSucceeded:Z
    invoke-static {v0, v1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->access$102(Lcom/android/settings_ext/RestrictedSettingsFragment;Z)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ext/RestrictedSettingsFragment;

    # setter for: Lcom/android/settings_ext/RestrictedSettingsFragment;->mChallengeRequested:Z
    invoke-static {v0, v1}, Lcom/android/settings_ext/RestrictedSettingsFragment;->access$002(Lcom/android/settings_ext/RestrictedSettingsFragment;Z)Z

    .line 67
    :cond_0
    return-void
.end method
