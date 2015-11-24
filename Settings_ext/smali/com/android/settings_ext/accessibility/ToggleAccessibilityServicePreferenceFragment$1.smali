.class Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/settings_ext/accessibility/SettingsContentObserver;
.source "ToggleAccessibilityServicePreferenceFragment.java"


# instance fields
.field final synthetic Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ext/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->b(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Bi:Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/widget/K;->ba(Z)V

    .line 74
    return-void
.end method
