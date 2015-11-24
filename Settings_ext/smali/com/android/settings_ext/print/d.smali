.class Lcom/android/settings_ext/print/d;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ext/widget/M;


# instance fields
.field final synthetic ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/widget/ToggleSwitch;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    if-eqz p2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->e(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->f(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Lcom/android/settings_ext/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_ext/widget/SwitchBar;->ba(Z)V

    .line 303
    iget-object v2, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_CHECKED"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    iget-object v1, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->b(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;I)V

    .line 311
    :goto_0
    return v0

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    iget-object v3, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v3}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->g(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->a(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 311
    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    iget-object v2, p0, Lcom/android/settings_ext/print/d;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->g(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->a(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method
