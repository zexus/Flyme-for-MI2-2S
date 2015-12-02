.class Lcom/miui/compass/CompassDataManager$CompassLocationListener;
.super Ljava/lang/Object;
.source "CompassDataManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompassLocationListener"
.end annotation


# static fields
.field private static mCompassDataManager:Lcom/miui/compass/CompassDataManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/compass/CompassDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/compass/CompassDataManager$1;

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/miui/compass/CompassDataManager$CompassLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 290
    sget-object v0, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/miui/compass/CompassDataManager;->access$800(Lcom/miui/compass/CompassDataManager;Landroid/location/Location;)V

    .line 293
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 286
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 282
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 268
    sget-object v0, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    if-eqz v0, :cond_0

    .line 269
    if-eqz p2, :cond_1

    .line 270
    sget-object v0, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    sget-object v1, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->getGpsLocation()Landroid/location/Location;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$1700(Lcom/miui/compass/CompassDataManager;)Landroid/location/Location;

    move-result-object v1

    # invokes: Lcom/miui/compass/CompassDataManager;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/miui/compass/CompassDataManager;->access$800(Lcom/miui/compass/CompassDataManager;Landroid/location/Location;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mLastLogTime:J
    invoke-static {v2}, Lcom/miui/compass/CompassDataManager;->access$1800(Lcom/miui/compass/CompassDataManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 273
    const-string v0, "Compass:CompassDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-object v0, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/miui/compass/CompassDataManager;->mLastLogTime:J
    invoke-static {v0, v2, v3}, Lcom/miui/compass/CompassDataManager;->access$1802(Lcom/miui/compass/CompassDataManager;J)J

    goto :goto_0
.end method

.method public register(Landroid/location/LocationManager;Lcom/miui/compass/CompassDataManager;)V
    .locals 6
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "compassDataManager"    # Lcom/miui/compass/CompassDataManager;

    .prologue
    .line 257
    sput-object p2, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    .line 258
    const-string v1, "gps"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    move-object v0, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 259
    return-void
.end method

.method public unregister(Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 262
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 263
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/compass/CompassDataManager$CompassLocationListener;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    .line 264
    return-void
.end method
