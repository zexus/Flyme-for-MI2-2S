.class Lcom/miui/compass/CompassDataManager$1;
.super Ljava/lang/Object;
.source "CompassDataManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassDataManager;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassDataManager;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 245
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;

    move-result-object v0

    const/high16 v1, -0x3c360000    # -404.0f

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mPressure:F
    invoke-static {v0, v1}, Lcom/miui/compass/CompassDataManager$CompassData;->access$1002(Lcom/miui/compass/CompassDataManager$CompassData;F)F

    .line 248
    iget-object v0, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->notifyCompassDataChanged()V
    invoke-static {v0}, Lcom/miui/compass/CompassDataManager;->access$1600(Lcom/miui/compass/CompassDataManager;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 228
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 229
    .local v0, "pressure":F
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;

    move-result-object v1

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mPressure:F
    invoke-static {v1, v0}, Lcom/miui/compass/CompassDataManager$CompassData;->access$1002(Lcom/miui/compass/CompassDataManager$CompassData;F)F

    .line 230
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->isSLPAccurate()Z
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$1100(Lcom/miui/compass/CompassDataManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;

    move-result-object v1

    sget-object v2, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->RELIABLE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mAltitudeAccuracy:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
    invoke-static {v1, v2}, Lcom/miui/compass/CompassDataManager$CompassData;->access$1202(Lcom/miui/compass/CompassDataManager$CompassData;Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mSeaLevelPressure:F
    invoke-static {v2}, Lcom/miui/compass/CompassDataManager;->access$1500(Lcom/miui/compass/CompassDataManager;)F

    move-result v2

    invoke-static {v2, v0}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v2

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mAltitude:F
    invoke-static {v1, v2}, Lcom/miui/compass/CompassDataManager$CompassData;->access$1402(Lcom/miui/compass/CompassDataManager$CompassData;F)F

    .line 240
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # invokes: Lcom/miui/compass/CompassDataManager;->notifyCompassDataChanged()V
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$1600(Lcom/miui/compass/CompassDataManager;)V

    .line 241
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$1300(Lcom/miui/compass/CompassDataManager;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/compass/Utils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;

    move-result-object v1

    sget-object v2, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->IMPRECISE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mAltitudeAccuracy:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
    invoke-static {v1, v2}, Lcom/miui/compass/CompassDataManager$CompassData;->access$1202(Lcom/miui/compass/CompassDataManager$CompassData;Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    goto :goto_0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/miui/compass/CompassDataManager$1;->this$0:Lcom/miui/compass/CompassDataManager;

    # getter for: Lcom/miui/compass/CompassDataManager;->mCompassData:Lcom/miui/compass/CompassDataManager$CompassData;
    invoke-static {v1}, Lcom/miui/compass/CompassDataManager;->access$900(Lcom/miui/compass/CompassDataManager;)Lcom/miui/compass/CompassDataManager$CompassData;

    move-result-object v1

    sget-object v2, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->REFERENTIAL:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    # setter for: Lcom/miui/compass/CompassDataManager$CompassData;->mAltitudeAccuracy:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;
    invoke-static {v1, v2}, Lcom/miui/compass/CompassDataManager$CompassData;->access$1202(Lcom/miui/compass/CompassDataManager$CompassData;Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    goto :goto_0
.end method
