.class Lcom/miui/compass/CompassActivity$5;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassActivity;
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
    .line 354
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mViewAttached:Z
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$400(Lcom/miui/compass/CompassActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # invokes: Lcom/miui/compass/CompassActivity;->checkCompassAccuracy(I)V
    invoke-static {v0, p2}, Lcom/miui/compass/CompassActivity;->access$1000(Lcom/miui/compass/CompassActivity;I)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 358
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mViewAttached:Z
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$400(Lcom/miui/compass/CompassActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    mul-float v1, v5, v6

    .line 363
    .local v1, "direction":F
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v1}, Lcom/miui/compass/Utils;->normalizeDegree(F)F

    move-result v6

    # setter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v5, v6}, Lcom/miui/compass/CompassActivity;->access$502(Lcom/miui/compass/CompassActivity;F)F

    .line 364
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v5, v7

    .line 365
    .local v3, "y":F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v4, v5, v6

    .line 366
    .local v4, "z":F
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$600(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v6}, Lcom/miui/compass/CompassActivity;->access$500(Lcom/miui/compass/CompassActivity;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/compass/CompassScreen;->setCompassDirection(F)V

    .line 367
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mGradienterScreen:Lcom/miui/compass/GradienterScreen;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$700(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/GradienterScreen;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/miui/compass/GradienterScreen;->setGradienterDirection(FF)V

    .line 368
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$800(Lcom/miui/compass/CompassActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mTiltRotateView:Lcom/miui/compass/RotateView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$900(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/RotateView;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/miui/compass/RotateView;->update(FF)V

    .line 372
    :cond_2
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    iget v6, p1, Landroid/hardware/SensorEvent;->accuracy:I

    # invokes: Lcom/miui/compass/CompassActivity;->checkCompassAccuracy(I)V
    invoke-static {v5, v6}, Lcom/miui/compass/CompassActivity;->access$1000(Lcom/miui/compass/CompassActivity;I)V

    .line 374
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 375
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$800(Lcom/miui/compass/CompassActivity;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 376
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$600(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/miui/compass/CompassScreen;->setFaceDirection(F)V

    .line 378
    :cond_3
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mGradienterScreen:Lcom/miui/compass/GradienterScreen;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$700(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/GradienterScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/miui/compass/GradienterScreen;->setFaceDirection(F)V

    .line 379
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    .line 380
    .local v2, "visibility":I
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 382
    .local v0, "anim":Landroid/view/animation/Animation;
    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    const/high16 v5, 0x43070000    # 135.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_7

    .line 383
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraView:Lcom/miui/compass/CameraView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$1100(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CameraView;

    move-result-object v5

    const v6, 0x7f020018

    invoke-virtual {v5, v6}, Lcom/miui/compass/CameraView;->setBackgroundResource(I)V

    .line 384
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    :cond_4
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$800(Lcom/miui/compass/CompassActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mScreen:Lmiui/widget/ScreenView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$1200(Lcom/miui/compass/CompassActivity;)Lmiui/widget/ScreenView;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/widget/ScreenView;->getCurrentScreenIndex()I

    move-result v5

    if-ne v5, v7, :cond_6

    :cond_5
    if-nez v2, :cond_6

    .line 387
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMaskOut:Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/miui/compass/CompassActivity;->access$1300(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 388
    :cond_6
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mScreen:Lmiui/widget/ScreenView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$1200(Lcom/miui/compass/CompassActivity;)Lmiui/widget/ScreenView;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/widget/ScreenView;->getCurrentScreenIndex()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$800(Lcom/miui/compass/CompassActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v2, v8, :cond_0

    .line 390
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMaskIn:Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/miui/compass/CompassActivity;->access$1400(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 394
    :cond_7
    if-ne v2, v8, :cond_0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 395
    :cond_8
    iget-object v5, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/compass/CompassActivity$5;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMaskIn:Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/miui/compass/CompassActivity;->access$1400(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
