.class Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationSensorEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 381
    const-string v0, "SensorStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v12, 0x43190000    # 153.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v11, 0x41d00000    # 26.0f

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 344
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v9

    if-nez v9, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    .line 347
    .local v3, "orientation":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v9, v8

    .line 348
    .local v4, "y":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v5, v9, v10

    .line 349
    .local v5, "z":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 350
    .local v0, "absY":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 352
    .local v1, "absZ":F
    cmpg-float v9, v0, v11

    if-lez v9, :cond_2

    cmpl-float v9, v0, v12

    if-ltz v9, :cond_7

    :cond_2
    cmpg-float v9, v1, v11

    if-lez v9, :cond_3

    cmpl-float v9, v1, v12

    if-ltz v9, :cond_7

    :cond_3
    move v2, v8

    .line 354
    .local v2, "isLying":Z
    :goto_1
    if-eqz v2, :cond_4

    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 355
    cmpl-float v9, v0, v1

    if-lez v9, :cond_9

    .line 356
    cmpg-float v9, v4, v6

    if-gez v9, :cond_8

    move v3, v6

    .line 363
    :cond_4
    :goto_2
    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    # getter for: Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I
    invoke-static {}, Lcom/android/camera/SensorStateManager;->access$900()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_c

    .line 364
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    cmpg-float v6, v5, v6

    if-gez v6, :cond_b

    move v6, v8

    :goto_3
    # invokes: Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V
    invoke-static {v7, v6}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;I)V

    .line 369
    :goto_4
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->access$1100(Lcom/android/camera/SensorStateManager;)Z

    move-result v6

    if-ne v2, v6, :cond_5

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v6

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    .line 370
    :cond_5
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # setter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v6, v2}, Lcom/android/camera/SensorStateManager;->access$1102(Lcom/android/camera/SensorStateManager;Z)Z

    .line 371
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->access$1100(Lcom/android/camera/SensorStateManager;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 372
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # setter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v6, v3}, Lcom/android/camera/SensorStateManager;->access$1202(Lcom/android/camera/SensorStateManager;F)F

    .line 373
    :cond_6
    const-string v6, "SensorStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SensorEventListenerImpl TYPE_ORIENTATION mOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsLying="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->access$1100(Lcom/android/camera/SensorStateManager;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->access$1100(Lcom/android/camera/SensorStateManager;)Z

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    goto/16 :goto_0

    .line 352
    .end local v2    # "isLying":Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 356
    .restart local v2    # "isLying":Z
    :cond_8
    const/high16 v3, 0x43340000    # 180.0f

    goto/16 :goto_2

    .line 357
    :cond_9
    cmpg-float v9, v0, v1

    if-gez v9, :cond_4

    .line 358
    cmpg-float v9, v5, v6

    if-gez v9, :cond_a

    move v3, v7

    :goto_5
    goto/16 :goto_2

    :cond_a
    const/high16 v3, 0x43870000    # 270.0f

    goto :goto_5

    .line 364
    :cond_b
    const/4 v6, 0x2

    goto/16 :goto_3

    .line 366
    :cond_c
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    const/4 v7, 0x0

    # invokes: Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V
    invoke-static {v6, v7}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;I)V

    goto/16 :goto_4
.end method
