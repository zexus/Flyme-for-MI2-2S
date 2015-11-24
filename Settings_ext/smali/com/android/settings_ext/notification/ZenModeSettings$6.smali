.class Lcom/android/settings_ext/notification/ZenModeSettings$6;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic agC:Lcom/android/settings_ext/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$6;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 230
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$6;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/ZenModeSettings;->a(Lcom/android/settings_ext/notification/ZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$6;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v2}, Lcom/android/settings_ext/notification/ZenModeSettings;->b(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v1, v2, :cond_0

    .line 233
    const-string v0, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowEvents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$6;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->b(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 235
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 236
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$6;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v1, v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->a(Lcom/android/settings_ext/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method
