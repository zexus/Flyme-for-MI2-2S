.class final Lcom/android/settings/location/SettingsInjector$Setting;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# instance fields
.field public final adc:Lcom/android/settings/location/InjectedSetting;

.field public final add:Landroid/preference/Preference;

.field final synthetic ade:Lcom/android/settings/location/SettingsInjector;

.field public startMillis:J


# direct methods
.method private constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->ade:Lcom/android/settings/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->adc:Lcom/android/settings/location/InjectedSetting;

    .line 408
    iput-object p3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->add:Landroid/preference/Preference;

    .line 409
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;Lcom/android/settings/location/SettingsInjector$1;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/location/SettingsInjector$Setting;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 425
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/location/SettingsInjector$Setting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->adc:Lcom/android/settings/location/InjectedSetting;

    check-cast p1, Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v1, p1, Lcom/android/settings/location/SettingsInjector$Setting;->adc:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/InjectedSetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->adc:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0}, Lcom/android/settings/location/InjectedSetting;->hashCode()I

    move-result v0

    return v0
.end method

.method public qj()V
    .locals 5

    .prologue
    .line 438
    new-instance v0, Lcom/android/settings/location/SettingsInjector$Setting$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/SettingsInjector$Setting$1;-><init>(Lcom/android/settings/location/SettingsInjector$Setting;)V

    .line 452
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 454
    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->adc:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v2}, Lcom/android/settings/location/InjectedSetting;->qb()Landroid/content/Intent;

    move-result-object v2

    .line 455
    const-string v3, "messenger"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 457
    const-string v1, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/location/SettingsInjector$Setting;->adc:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": sending update intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->ade:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v0}, Lcom/android/settings/location/SettingsInjector;->c(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 468
    return-void

    .line 462
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    goto :goto_0
.end method

.method public qk()J
    .locals 4

    .prologue
    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 472
    iget-wide v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public ql()V
    .locals 5

    .prologue
    .line 476
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/location/SettingsInjector$Setting;->qk()J

    move-result-wide v0

    .line 478
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting{setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->adc:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->add:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
