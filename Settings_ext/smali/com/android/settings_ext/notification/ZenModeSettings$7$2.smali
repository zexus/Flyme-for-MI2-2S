.class Lcom/android/settings_ext/notification/ZenModeSettings$7$2;
.super Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;
.source "ZenModeSettings.java"


# instance fields
.field final synthetic agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings$7;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$7$2;->agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;

    invoke-direct {p0, p2, p3}, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected aT(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$7$2;->agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;

    iget-object v0, v0, Lcom/android/settings_ext/notification/ZenModeSettings$7;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->a(Lcom/android/settings_ext/notification/ZenModeSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$7$2;->agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;

    iget-object v0, v0, Lcom/android/settings_ext/notification/ZenModeSettings$7;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->b(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "days.onChanged sleepMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$7$2;->agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;

    iget-object v0, v0, Lcom/android/settings_ext/notification/ZenModeSettings$7;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->b(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 255
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$7$2;->agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;

    iget-object v1, v1, Lcom/android/settings_ext/notification/ZenModeSettings$7;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v1, v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->a(Lcom/android/settings_ext/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method
