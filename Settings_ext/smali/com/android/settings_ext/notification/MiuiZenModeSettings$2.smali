.class Lcom/android/settings_ext/notification/MiuiZenModeSettings$2;
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
    .line 122
    iput-object p1, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$2;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 125
    iget-object v1, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$2;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/MiuiZenModeSettings;->b(Lcom/android/settings_ext/notification/MiuiZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$2;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-static {v2}, Lcom/android/settings_ext/notification/MiuiZenModeSettings;->c(Lcom/android/settings_ext/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-eq v1, v2, :cond_0

    .line 131
    const-string v0, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowMusic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$2;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/MiuiZenModeSettings;->c(Lcom/android/settings_ext/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 133
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    .line 134
    iget-object v1, p0, Lcom/android/settings_ext/notification/MiuiZenModeSettings$2;->aeC:Lcom/android/settings_ext/notification/MiuiZenModeSettings;

    invoke-static {v1, v0}, Lcom/android/settings_ext/notification/MiuiZenModeSettings;->a(Lcom/android/settings_ext/notification/MiuiZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method
