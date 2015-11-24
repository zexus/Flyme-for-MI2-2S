.class public Lcom/android/settings_ext/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "ResetLegacyPassword.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 31
    const v0, 0x7f0400e3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    const v1, 0x7f100060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ext/fY;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/fY;-><init>(Lcom/android/settings_ext/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x65

    const/4 v1, -0x1

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 49
    const-class v0, Lcom/android/settings_ext/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v2, v1}, Lcom/android/settings_ext/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-ne v2, p1, :cond_0

    if-ne v1, p2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ext/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ext/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->setThemeRes(I)V

    .line 27
    return-void
.end method
