.class Lcom/android/settings/notification/ZenModeSettings$8;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;


# instance fields
.field final synthetic agC:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$8;->agC:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$8;->agC:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->a(Lcom/android/settings/notification/ZenModeSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$8;->agC:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->b(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$8;->agC:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->b(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    if-eq p2, v1, :cond_0

    .line 285
    :cond_4
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrefChange sleepStart h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$8;->agC:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettings;->b(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 287
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    .line 288
    iput p2, v0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    .line 289
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$8;->agC:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v1, v0}, Lcom/android/settings/notification/ZenModeSettings;->a(Lcom/android/settings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method
