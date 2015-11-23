.class Lcom/android/settings/notification/MiuiZenModeSettings$5;
.super Ljava/lang/Object;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aeC:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->aeC:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->aeC:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v1}, Lcom/android/settings/notification/MiuiZenModeSettings;->b(Lcom/android/settings/notification/MiuiZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->aeC:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v2}, Lcom/android/settings/notification/MiuiZenModeSettings;->c(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-eq v1, v2, :cond_0

    .line 184
    const-string v0, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowLight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->aeC:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->c(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 186
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    .line 187
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->aeC:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v1, v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->a(Lcom/android/settings/notification/MiuiZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method
