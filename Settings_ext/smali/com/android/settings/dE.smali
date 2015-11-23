.class Lcom/android/settings/dE;
.super Ljava/lang/Object;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# instance fields
.field final synthetic pn:Lcom/android/settings/MiuiDeviceInfoSettings;

.field private pr:Lcom/android/settings/dD;

.field private ps:Z

.field private pt:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;ZZ)V
    .locals 1

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings/dE;->pn:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Lcom/android/settings/dD;

    invoke-direct {v0}, Lcom/android/settings/dD;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dE;->pr:Lcom/android/settings/dD;

    .line 714
    iput-boolean p2, p0, Lcom/android/settings/dE;->ps:Z

    .line 715
    iput-boolean p3, p0, Lcom/android/settings/dE;->pt:Z

    .line 716
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/deviceinfo/StorageMeasurement;JJ)V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/settings/dE;->pr:Lcom/android/settings/dD;

    iput-wide p2, v0, Lcom/android/settings/dD;->gK:J

    .line 730
    iget-object v0, p0, Lcom/android/settings/dE;->pr:Lcom/android/settings/dD;

    iput-wide p4, v0, Lcom/android/settings/dD;->pq:J

    .line 731
    iget-object v0, p0, Lcom/android/settings/dE;->pn:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->a(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    return-void
.end method

.method public a(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public eF()Lcom/android/settings/dD;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/settings/dE;->pr:Lcom/android/settings/dD;

    return-object v0
.end method

.method public eG()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/android/settings/dE;->pt:Z

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/android/settings/dE;->ps:Z

    return v0
.end method
