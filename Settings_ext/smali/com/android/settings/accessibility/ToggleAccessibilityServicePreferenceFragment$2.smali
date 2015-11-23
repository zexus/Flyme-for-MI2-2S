.class Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ext/widget/L;


# instance fields
.field final synthetic Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/widget/K;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 403
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, v0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ext/widget/K;->ba(Z)V

    .line 404
    if-eqz p2, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    .line 415
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 403
    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->b(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_1
.end method
