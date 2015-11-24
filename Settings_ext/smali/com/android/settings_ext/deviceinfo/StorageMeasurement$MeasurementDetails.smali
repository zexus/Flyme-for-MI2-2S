.class public Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# instance fields
.field public TA:Ljava/util/HashMap;

.field public TB:J

.field public TC:Landroid/util/SparseLongArray;

.field public Tx:J

.field public Ty:J

.field public Tz:J

.field public cacheSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TA:Ljava/util/HashMap;

    .line 166
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TC:Landroid/util/SparseLongArray;

    return-void
.end method
