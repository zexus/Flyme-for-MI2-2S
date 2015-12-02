.class final Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 954
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 37
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v3, v4, v5}, Lcom/android/camera/module/CameraModule;->access$4202(Lcom/android/camera/module/CameraModule;J)J

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$3900(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_7

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$4200(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J
    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$3900(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 977
    :goto_1
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v5, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-lt v3, v4, :cond_0

    if-eqz p1, :cond_0

    .line 988
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_3

    .line 989
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x1

    # invokes: Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;Z)V

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v3

    if-nez v3, :cond_3

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->animateSlide()V
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$3000(Lcom/android/camera/module/CameraModule;)V

    .line 998
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v36

    .line 999
    .local v36, "s":Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v15

    .line 1001
    .local v15, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mJpegRotation:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    add-int/2addr v3, v15

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_9

    .line 1002
    move-object/from16 v0, v36

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1003
    .local v6, "width":I
    move-object/from16 v0, v36

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1008
    .local v7, "height":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->access$4402(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v11

    .line 1010
    .local v11, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1011
    .local v2, "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 1014
    :cond_4
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .end local v2    # "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    if-le v6, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2300(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_3
    if-le v7, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2300(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v8

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_c

    const/4 v10, 0x0

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mShootOrientation:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4600(Lcom/android/camera/module/CameraModule;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mShootRotation:F
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4700(Lcom/android/camera/module/CameraModule;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v3, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->isFrontMirror()Z

    move-result v3

    if-nez v3, :cond_d

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v17}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>([BIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZ)V

    .line 1033
    .restart local v2    # "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_7
    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_10

    .line 1036
    if-eqz v2, :cond_f

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4800(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x1

    # setter for: Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z
    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->access$4902(Lcom/android/camera/module/CameraModule;Z)Z

    .line 1053
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 1078
    :cond_6
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 1079
    .local v34, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$4200(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    sub-long v4, v34, v4

    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    .line 1080
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v5, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v4, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long v4, v34, v4

    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1082
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v5, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 970
    .end local v2    # "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v11    # "title":Ljava/lang/String;
    .end local v15    # "orientation":I
    .end local v34    # "now":J
    .end local v36    # "s":Landroid/hardware/Camera$Size;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_8

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$4200(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J
    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 974
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$4200(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$3600(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 1005
    .restart local v15    # "orientation":I
    .restart local v36    # "s":Landroid/hardware/Camera$Size;
    :cond_9
    move-object/from16 v0, v36

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1006
    .restart local v6    # "width":I
    move-object/from16 v0, v36

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v7    # "height":I
    goto/16 :goto_2

    .line 1014
    .restart local v11    # "title":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2300(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2300(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_4

    :cond_c
    new-instance v10, Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-direct {v10, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto/16 :goto_5

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 1033
    .restart local v2    # "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1040
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v18, p1

    move-object/from16 v19, v11

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v27, v15

    invoke-virtual/range {v17 .. v30}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    goto/16 :goto_8

    .line 1055
    :cond_10
    if-eqz v2, :cond_11

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4800(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    # setter for: Lcom/android/camera/module/CameraModule;->mJpegImageData:[B
    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->access$5002(Lcom/android/camera/module/CameraModule;[B)[B

    .line 1061
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    if-nez v3, :cond_12

    .line 1062
    int-to-double v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    int-to-double v8, v3

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v33, v0

    .line 1063
    .local v33, "ratio":I
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v32

    .line 1064
    .local v32, "inSampleSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mJpegImageData:[B
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$5000(Lcom/android/camera/module/CameraModule;)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v4

    rsub-int v4, v4, 0x168

    add-int/2addr v4, v15

    const/4 v5, 0x0

    move/from16 v0, v32

    invoke-static {v3, v4, v5, v0}, Lcom/android/camera/Thumbnail;->createBitmap([BIZI)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 1068
    .local v31, "cover":Landroid/graphics/Bitmap;
    if-eqz v31, :cond_6

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$5100(Lcom/android/camera/module/CameraModule;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x1

    # setter for: Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z
    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->access$5202(Lcom/android/camera/module/CameraModule;Z)Z

    goto/16 :goto_9

    .line 1059
    .end local v31    # "cover":Landroid/graphics/Bitmap;
    .end local v32    # "inSampleSize":I
    .end local v33    # "ratio":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p1

    # setter for: Lcom/android/camera/module/CameraModule;->mJpegImageData:[B
    invoke-static {v3, v0}, Lcom/android/camera/module/CameraModule;->access$5002(Lcom/android/camera/module/CameraModule;[B)[B

    goto :goto_a

    .line 1074
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->doAttach()V
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$5300(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_9
.end method
