.class Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ext/widget/L;


# instance fields
.field final synthetic Br:Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->Br:Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/widget/K;Z)Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->Br:Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->Br:Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->Br:Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;->xp:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ext/accessibility/ToggleScreenMagnificationPreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 51
    const/4 v0, 0x0

    return v0
.end method
