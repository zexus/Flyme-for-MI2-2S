.class final Lcom/android/settings_ext/eg;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qO:I

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(ILandroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 210
    iput p1, p0, Lcom/android/settings_ext/eg;->qO:I

    iput-object p2, p0, Lcom/android/settings_ext/eg;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 214
    const-string v0, "miui_security_fragment_result"

    iget v2, p0, Lcom/android/settings_ext/eg;->qO:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/eg;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings_ext/eg;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 216
    return-void
.end method
