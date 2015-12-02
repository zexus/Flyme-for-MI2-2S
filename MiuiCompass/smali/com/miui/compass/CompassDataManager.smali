.class public Lcom/miui/compass/CompassDataManager;
.super Ljava/lang/Object;
.source "CompassDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/compass/CompassDataManager$CompassDataObserver;,
        Lcom/miui/compass/CompassDataManager$CompassData;,
        Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;,
        Lcom/miui/compass/CompassDataManager$LocationGetter;,
        Lcom/miui/compass/CompassDataManager$GpsStatusListener;,
        Lcom/miui/compass/CompassDataManager$CompassLocationListener;,
        Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;
    }
.end annotation


# instance fields
.field private mCancelCalibrateAltitude:Z

.field private mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

.field private mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

.field private mCompassLocationListener:Lcom/miui/compass/CompassDataManager$CompassLocationListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGpsStatusListener:Lcom/miui/compass/CompassDataManager$GpsStatusListener;

.field private mLastLogTime:J

.field private mLocation:Landroid/location/Location;

.field private mLocationGetter:Lcom/miui/compass/CompassDataManager$LocationGetter;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPressureRequestor:Lcom/miui/compass/PressureRequestor;

.field private mPressureSensor:Landroid/hardware/Sensor;

.field private mPressureSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSeaLevelPressure:F

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Lcom/miui/compass/CompassDataManager$1;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassDataManager$1;-><init>(Lcom/miui/compass/CompassDataManager;)V

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mPressureSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 56
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    .line 59
    new-instance v0, Lcom/miui/compass/PressureRequestor;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/compass/PressureRequestor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mPressureRequestor:Lcom/miui/compass/PressureRequestor;

    .line 60
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 61
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mPressureSensor:Landroid/hardware/Sensor;

    .line 64
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/compass/CompassPreferences;->getSeaLevelPressure(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/compass/CompassDataManager;->mSeaLevelPressure:F

    .line 66
    new-instance v0, Lcom/miui/compass/CompassDataManager$CompassData;

    invoke-direct {v0}, Lcom/miui/compass/CompassDataManager$CompassData;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

    .line 67
    new-instance v0, Lcom/miui/compass/CompassDataManager$CompassLocationListener;

    invoke-direct {v0, v2}, Lcom/miui/compass/CompassDataManager$CompassLocationListener;-><init>(Lcom/miui/compass/CompassDataManager$1;)V

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassLocationListener:Lcom/miui/compass/CompassDataManager$CompassLocationListener;

    .line 68
    new-instance v0, Lcom/miui/compass/CompassDataManager$GpsStatusListener;

    invoke-direct {v0, v2}, Lcom/miui/compass/CompassDataManager$GpsStatusListener;-><init>(Lcom/miui/compass/CompassDataManager$1;)V

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mGpsStatusListener:Lcom/miui/compass/CompassDataManager$GpsStatusListener;

    .line 69
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/compass/CompassDataManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager;->isSLPAccurate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/compass/CompassDataManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/compass/CompassDataManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/compass/CompassDataManager;->mSeaLevelPressure:F

    return v0
.end method

.method static synthetic access$1502(Lcom/miui/compass/CompassDataManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/miui/compass/CompassDataManager;->mSeaLevelPressure:F

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/compass/CompassDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager;->notifyCompassDataChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/compass/CompassDataManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/miui/compass/CompassDataManager;->mLastLogTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/miui/compass/CompassDataManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/miui/compass/CompassDataManager;->mLastLogTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/miui/compass/CompassDataManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/compass/CompassDataManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassDataObserver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/compass/CompassDataManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager;->doCalibrateAltitude()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/compass/CompassDataManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/compass/CompassDataManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassDataManager;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

    return-object v0
.end method

.method private doCalibrateAltitude()I
    .locals 12

    .prologue
    .line 161
    const-string v1, "Compass:CompassDataManager"

    const-string v9, "doCalibrateAltitude begin"

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 163
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/miui/compass/CompassDataManager$LocationGetter;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lcom/miui/compass/CompassDataManager$LocationGetter;-><init>(Lcom/miui/compass/CompassDataManager;Lcom/miui/compass/CompassDataManager$1;)V

    iput-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationGetter:Lcom/miui/compass/CompassDataManager$LocationGetter;

    .line 165
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationGetter:Lcom/miui/compass/CompassDataManager$LocationGetter;

    invoke-virtual {v1}, Lcom/miui/compass/CompassDataManager$LocationGetter;->start()V

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationGetter:Lcom/miui/compass/CompassDataManager$LocationGetter;

    const-wide/16 v10, 0x4e20

    invoke-virtual {v1, v10, v11}, Lcom/miui/compass/CompassDataManager$LocationGetter;->join(J)V

    .line 168
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationGetter:Lcom/miui/compass/CompassDataManager$LocationGetter;

    invoke-virtual {v1}, Lcom/miui/compass/CompassDataManager$LocationGetter;->stopRunning()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    const-string v1, "Compass:CompassDataManager"

    const-string v9, "doCalibrateAltitude get location complete"

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-boolean v1, p0, Lcom/miui/compass/CompassDataManager;->mCancelCalibrateAltitude:Z

    if-eqz v1, :cond_1

    .line 175
    const/4 v8, 0x3

    .line 193
    :goto_1
    return v8

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e1":Ljava/lang/InterruptedException;
    const-string v1, "Compass:CompassDataManager"

    const-string v9, "LocationGetter thread is interrupted mLocation"

    invoke-static {v1, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 178
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v8, 0x0

    .line 179
    .local v8, "error":I
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 181
    .local v4, "longitude":D
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 182
    .local v6, "latitude":D
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mPressureRequestor:Lcom/miui/compass/PressureRequestor;

    invoke-virtual/range {v1 .. v7}, Lcom/miui/compass/PressureRequestor;->requestPressure(JDD)I

    move-result v8

    .line 183
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/compass/CompassPreferences;->getSeaLevelPressure(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/miui/compass/CompassDataManager;->mSeaLevelPressure:F

    .line 189
    .end local v4    # "longitude":D
    .end local v6    # "latitude":D
    :goto_2
    iget-boolean v1, p0, Lcom/miui/compass/CompassDataManager;->mCancelCalibrateAltitude:Z

    if-eqz v1, :cond_2

    .line 190
    const/4 v8, 0x3

    .line 192
    :cond_2
    const-string v1, "Compass:CompassDataManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doCalibrateAltitude complete result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :cond_3
    const/4 v8, 0x1

    .line 186
    const-string v1, "Compass:CompassDataManager"

    const-string v9, "doCalibrateAltitude mLocation is null"

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getGpsLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private isSLPAccurate()Z
    .locals 6

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/compass/CompassPreferences;->getLastSLPCalibrationTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 150
    .local v0, "timeDiff":J
    iget-object v2, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/compass/CompassPreferences;->getLastSLPAccuracy(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x270f

    if-ne v2, v3, :cond_0

    const-wide/32 v2, 0xdbba0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyCompassDataChanged()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

    invoke-interface {v0, v1}, Lcom/miui/compass/CompassDataManager$CompassDataObserver;->notifyCompassDataChanged(Lcom/miui/compass/CompassDataManager$CompassData;)V

    .line 146
    :cond_0
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide v2, -0x3f86c00000000000L    # -404.0

    .line 130
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    .line 131
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mLongitude:D
    invoke-static {v0, v2, v3}, Lcom/miui/compass/CompassDataManager$CompassData;->access$202(Lcom/miui/compass/CompassDataManager$CompassData;D)D

    .line 133
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mLatitude:D
    invoke-static {v0, v2, v3}, Lcom/miui/compass/CompassDataManager$CompassData;->access$302(Lcom/miui/compass/CompassDataManager$CompassData;D)D

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager;->notifyCompassDataChanged()V

    .line 140
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mLongitude:D
    invoke-static {v0, v2, v3}, Lcom/miui/compass/CompassDataManager$CompassData;->access$202(Lcom/miui/compass/CompassDataManager$CompassData;D)D

    .line 136
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mLatitude:D
    invoke-static {v0, v2, v3}, Lcom/miui/compass/CompassDataManager$CompassData;->access$302(Lcom/miui/compass/CompassDataManager$CompassData;D)D

    goto :goto_0
.end method


# virtual methods
.method public cancelCalibrating()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationGetter:Lcom/miui/compass/CompassDataManager$LocationGetter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationGetter:Lcom/miui/compass/CompassDataManager$LocationGetter;

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager$LocationGetter;->cancel()V

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/compass/CompassDataManager;->mCancelCalibrateAltitude:Z

    .line 126
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mPressureRequestor:Lcom/miui/compass/PressureRequestor;

    invoke-virtual {v0}, Lcom/miui/compass/PressureRequestor;->abortPressureRequest()V

    .line 127
    return-void
.end method

.method public enableLocationProvider()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/miui/compass/CompassDataManager;->updateLocation(Landroid/location/Location;)V

    .line 79
    return-void
.end method

.method public isLocationProviderEnabled()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

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

.method public isPressureSensorAvailable()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mPressureSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompassDataObserver(Lcom/miui/compass/CompassDataManager$CompassDataObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    .line 88
    return-void
.end method

.method public startCalibrateAltitude(Z)V
    .locals 3
    .param p1, "notifyUser"    # Z

    .prologue
    const/4 v2, 0x0

    .line 155
    const-string v0, "Compass:CompassDataManager"

    const-string v1, "startCalibrateAltitude"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean v2, p0, Lcom/miui/compass/CompassDataManager;->mCancelCalibrateAltitude:Z

    .line 157
    new-instance v0, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;-><init>(Lcom/miui/compass/CompassDataManager;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/compass/CompassDataManager$CalibratAltitudeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method

.method public startMonitor()V
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    .line 92
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager;->getNetworkLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassLocationListener:Lcom/miui/compass/CompassDataManager$CompassLocationListener;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1, p0}, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->register(Landroid/location/LocationManager;Lcom/miui/compass/CompassDataManager;)V

    .line 97
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mGpsStatusListener:Lcom/miui/compass/CompassDataManager$GpsStatusListener;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1, p0}, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->register(Landroid/location/LocationManager;Lcom/miui/compass/CompassDataManager;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/compass/CompassDataManager;->isPressureSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mPressureSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/miui/compass/CompassDataManager;->mPressureSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/miui/compass/CompassDataManager;->updateLocation(Landroid/location/Location;)V

    .line 103
    return-void
.end method

.method public stopMonitor()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mCompassLocationListener:Lcom/miui/compass/CompassDataManager$CompassLocationListener;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->unregister(Landroid/location/LocationManager;)V

    .line 107
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mGpsStatusListener:Lcom/miui/compass/CompassDataManager$GpsStatusListener;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Lcom/miui/compass/CompassDataManager$GpsStatusListener;->unregister(Landroid/location/LocationManager;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/compass/CompassDataManager;->isPressureSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassDataManager;->mPressureSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 111
    :cond_0
    return-void
.end method
