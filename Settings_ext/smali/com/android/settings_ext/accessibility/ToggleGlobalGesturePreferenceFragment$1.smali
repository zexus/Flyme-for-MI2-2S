.class Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleGlobalGesturePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ext/widget/L;


# instance fields
.field final synthetic Bq:Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment$1;->Bq:Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/widget/K;Z)Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment$1;->Bq:Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment$1;->Bq:Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment$1;->Bq:Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;->xp:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ext/accessibility/ToggleGlobalGesturePreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 47
    const/4 v0, 0x0

    return v0
.end method
