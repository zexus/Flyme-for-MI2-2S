.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# instance fields
.field final synthetic Uc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->Uc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    .line 100
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->Uc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->b(JJ)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 105
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->Uc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->c(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
