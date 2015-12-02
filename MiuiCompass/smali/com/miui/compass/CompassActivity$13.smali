.class Lcom/miui/compass/CompassActivity$13;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->registerShakeSensorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$13;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 689
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$13;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$800(Lcom/miui/compass/CompassActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/compass/CompassActivity$13;->this$0:Lcom/miui/compass/CompassActivity;

    # invokes: Lcom/miui/compass/CompassActivity;->checkShake(Landroid/hardware/SensorEvent;)Z
    invoke-static {v0, p1}, Lcom/miui/compass/CompassActivity;->access$2400(Lcom/miui/compass/CompassActivity;Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/compass/CompassActivity$13;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mLastCalibrateSucessTime:J
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$2500(Lcom/miui/compass/CompassActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 682
    # getter for: Lcom/miui/compass/CompassActivity;->SensorManager_calibrateSensor:Lmiui/reflect/Method;
    invoke-static {}, Lcom/miui/compass/CompassActivity;->access$2800()Lmiui/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity$13;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$2600(Lcom/miui/compass/CompassActivity;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/compass/CompassActivity$13;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$2700(Lcom/miui/compass/CompassActivity;)Landroid/hardware/Sensor;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$13;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$2900(Lcom/miui/compass/CompassActivity;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 685
    :cond_0
    return-void
.end method
