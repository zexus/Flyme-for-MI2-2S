.class Lcom/miui/compass/CompassDataManager$GpsStatusListener;
.super Ljava/lang/Object;
.source "CompassDataManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsStatusListener"
.end annotation


# static fields
.field private static mCompassDataManager:Lcom/miui/compass/CompassDataManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/compass/CompassDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/compass/CompassDataManager$1;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager$GpsStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 14
    .param p1, "event"    # I

    .prologue
    .line 310
    sget-object v8, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    if-eqz v8, :cond_2

    .line 315
    sget-object v8, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v8}, Lcom/miui/compass/CompassDataManager;->access$1900(Lcom/miui/compass/CompassDataManager;)Landroid/location/LocationManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v5

    .line 316
    .local v5, "status":Landroid/location/GpsStatus;
    const/4 v8, 0x4

    if-ne p1, v8, :cond_2

    .line 317
    invoke-virtual {v5}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v4

    .line 318
    .local v4, "maxSatellites":I
    const/4 v2, 0x0

    .line 319
    .local v2, "gpsSLPAccuracy":I
    invoke-virtual {v5}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 320
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    if-gt v2, v4, :cond_0

    .line 321
    add-int/lit8 v2, v2, 0x1

    .line 320
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 324
    :cond_0
    sget-object v8, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->getGpsLocation()Landroid/location/Location;
    invoke-static {v8}, Lcom/miui/compass/CompassDataManager;->access$1700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v1

    .line 325
    .local v1, "gpsLocation":Landroid/location/Location;
    sget-object v8, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->isSLPAccurate()Z
    invoke-static {v8}, Lcom/miui/compass/CompassDataManager;->access$1100(Lcom/miui/compass/CompassDataManager;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v10, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/miui/compass/CompassDataManager;->access$2000(Lcom/miui/compass/CompassDataManager;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/compass/CompassPreferences;->getLastSLPCalibrationTime(Landroid/content/Context;)J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 328
    .local v6, "timeDiff":J
    sget-object v8, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/miui/compass/CompassDataManager;->access$2000(Lcom/miui/compass/CompassDataManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/compass/CompassPreferences;->getLastSLPAccuracy(Landroid/content/Context;)I

    move-result v8

    if-gt v2, v8, :cond_1

    const-wide/32 v8, 0x36ee80

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 330
    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    double-to-float v0, v8

    .line 331
    .local v0, "altitude":F
    sget-object v8, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    float-to-double v10, v0

    sget-object v9, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;
    invoke-static {v9}, Lcom/miui/compass/CompassDataManager;->access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;

    move-result-object v9

    # getter for: Lcom/miui/compass/CompassDataManager$CompassData;->mPressure:F
    invoke-static {v9}, Lcom/miui/compass/CompassDataManager$CompassData;->access$1000(Lcom/miui/compass/CompassDataManager$CompassData;)F

    move-result v9

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Lcom/miui/compass/Utils;->calculateSLP(DD)D

    move-result-wide v10

    double-to-float v9, v10

    # setter for: Lcom/miui/compass/CompassDataManager;->mSeaLevelPressure:F
    invoke-static {v8, v9}, Lcom/miui/compass/CompassDataManager;->access$1502(Lcom/miui/compass/CompassDataManager;F)F

    .line 333
    sget-object v8, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/miui/compass/CompassDataManager;->access$2000(Lcom/miui/compass/CompassDataManager;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mSeaLevelPressure:F
    invoke-static {v9}, Lcom/miui/compass/CompassDataManager;->access$1500(Lcom/miui/compass/CompassDataManager;)F

    move-result v9

    invoke-static {v8, v9, v2}, Lcom/miui/compass/CompassPreferences;->saveSeaLevelPressure(Landroid/content/Context;FI)V

    .line 339
    .end local v0    # "altitude":F
    .end local v1    # "gpsLocation":Landroid/location/Location;
    .end local v2    # "gpsSLPAccuracy":I
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    .end local v4    # "maxSatellites":I
    .end local v5    # "status":Landroid/location/GpsStatus;
    .end local v6    # "timeDiff":J
    :cond_2
    return-void
.end method

.method public register(Landroid/location/LocationManager;Lcom/miui/compass/CompassDataManager;)V
    .locals 0
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "compassDataManager"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 300
    sput-object p2, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    .line 301
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 302
    return-void
.end method

.method public unregister(Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 305
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 306
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    .line 307
    return-void
.end method
