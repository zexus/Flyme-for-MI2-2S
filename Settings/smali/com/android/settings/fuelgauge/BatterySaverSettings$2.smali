.class Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$2;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$2;->this$0:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$2;->this$0:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    # invokes: Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->updateSwitch()V
    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->access$100(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)V

    .line 162
    return-void
.end method