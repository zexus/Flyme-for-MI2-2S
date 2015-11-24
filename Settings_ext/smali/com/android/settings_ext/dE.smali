.class Lcom/android/settings_ext/dE;
.super Ljava/lang/Object;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;


# instance fields
.field final synthetic pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

.field private pr:Lcom/android/settings_ext/dD;

.field private ps:Z

.field private pt:Z


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/MiuiDeviceInfoSettings;ZZ)V
    .locals 1

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings_ext/dE;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Lcom/android/settings_ext/dD;

    invoke-direct {v0}, Lcom/android/settings_ext/dD;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dE;->pr:Lcom/android/settings_ext/dD;

    .line 714
    iput-boolean p2, p0, Lcom/android/settings_ext/dE;->ps:Z

    .line 715
    iput-boolean p3, p0, Lcom/android/settings_ext/dE;->pt:Z

    .line 716
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;JJ)V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/settings_ext/dE;->pr:Lcom/android/settings_ext/dD;

    iput-wide p2, v0, Lcom/android/settings_ext/dD;->gK:J

    .line 730
    iget-object v0, p0, Lcom/android/settings_ext/dE;->pr:Lcom/android/settings_ext/dD;

    iput-wide p4, v0, Lcom/android/settings_ext/dD;->pq:J

    .line 731
    iget-object v0, p0, Lcom/android/settings_ext/dE;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->a(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    return-void
.end method

.method public a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public eF()Lcom/android/settings_ext/dD;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/settings_ext/dE;->pr:Lcom/android/settings_ext/dD;

    return-object v0
.end method

.method public eG()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/android/settings_ext/dE;->pt:Z

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/android/settings_ext/dE;->ps:Z

    return v0
.end method
