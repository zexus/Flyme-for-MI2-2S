.class Lcom/android/settings_ext/fuelgauge/BatteryEntry$NameAndIconLoader;
.super Ljava/lang/Thread;
.source "BatteryEntry.java"


# instance fields
.field private Yq:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "BatteryUsage Icon Loader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryEntry$NameAndIconLoader;->Yq:Z

    .line 59
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryEntry$NameAndIconLoader;->Yq:Z

    .line 63
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 69
    :goto_0
    sget-object v1, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryEntry$NameAndIconLoader;->Yq:Z

    if-eqz v0, :cond_2

    .line 71
    :cond_0
    sget-object v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    :cond_1
    sget-object v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    monitor-exit v1

    return-void

    .line 77
    :cond_2
    sget-object v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/fuelgauge/BatteryEntry;

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v0}, Lcom/android/settings_ext/fuelgauge/BatteryEntry;->pm()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
