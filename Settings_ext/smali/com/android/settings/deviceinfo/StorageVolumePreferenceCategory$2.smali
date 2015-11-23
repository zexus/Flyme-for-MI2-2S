.class Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$2;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;


# instance fields
.field final synthetic Uc:Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$2;->Uc:Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;JJ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 574
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$2;->Uc:Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->b(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    aput-wide p4, v1, v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    return-void
.end method

.method public a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement;Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$2;->Uc:Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->b(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    return-void
.end method
