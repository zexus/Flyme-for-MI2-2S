.class Lcom/android/settings_ext/notification/MiuiZenModeSettings$7;
.super Ljava/lang/Object;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$7;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 218
    check-cast p2, Ljava/lang/Boolean;

    .line 219
    iget-object v0, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$7;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/MiuiZenModeSettings;->a(Lcom/android/settings_ext/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setAutoTimerOfQuietMode(Landroid/content/Context;Z)V

    .line 220
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$7;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/MiuiZenModeSettings;->a(Lcom/android/settings_ext/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/m;->aK(Landroid/content/Context;)V

    .line 225
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$7;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/MiuiZenModeSettings;->a(Lcom/android/settings_ext/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/m;->aM(Landroid/content/Context;)V

    goto :goto_0
.end method
