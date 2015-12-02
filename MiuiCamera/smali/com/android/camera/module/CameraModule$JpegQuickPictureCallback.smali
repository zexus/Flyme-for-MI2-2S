.class final Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;
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
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field mPressDownTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    .line 1097
    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1100
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$5400(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    .line 1103
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x0

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$4402(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1105
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1107
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$4402(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1108
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$4402(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1112
    .end local v0    # "currentTime":J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_UBIFOCUS_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_BURST"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 15
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    if-nez v0, :cond_2

    .line 1127
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 1129
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$5400(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$4900(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1131
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$4800(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1139
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v3, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    .line 1143
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->stopMultiSnap()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$5500(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0

    .line 1133
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1140
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 1148
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1149
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 1152
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1153
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-gt v0, v1, :cond_a

    const/4 v12, 0x1

    .line 1155
    .local v12, "isHide":Z
    :goto_3
    if-eqz v12, :cond_b

    const/4 v11, 0x0

    .line 1157
    .local v11, "orientation":I
    :goto_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mJpegRotation:I
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)I

    move-result v0

    add-int/2addr v0, v11

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_c

    .line 1158
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1159
    .local v8, "width":I
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1165
    .local v9, "height":I
    :goto_5
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v13, 0x1

    .line 1168
    .local v13, "isMap":Z
    :goto_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-eq v0, v1, :cond_8

    .line 1169
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    check-cast v6, Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v14}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 1182
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    if-eqz v0, :cond_12

    .line 1183
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v1, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1184
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1185
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x1

    # invokes: Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;Z)V

    .line 1186
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 1190
    :goto_7
    iget-object v5, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    :goto_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v7, 0x1

    :goto_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_11

    const/4 v10, 0x1

    :goto_a
    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    .line 1192
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Burst shooting finished. Total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pictures, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cost consuming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v4, v2, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1154
    .end local v3    # "title":Ljava/lang/String;
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v11    # "orientation":I
    .end local v12    # "isHide":Z
    .end local v13    # "isMap":Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1155
    .restart local v12    # "isHide":Z
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v11

    goto/16 :goto_4

    .line 1161
    .restart local v11    # "orientation":I
    :cond_c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1162
    .restart local v8    # "width":I
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v9    # "height":I
    goto/16 :goto_5

    .line 1166
    .restart local v3    # "title":Ljava/lang/String;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 1188
    .restart local v13    # "isMap":Z
    :cond_e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->stopMultiSnap()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$5500(Lcom/android/camera/module/CameraModule;)V

    goto :goto_7

    .line 1190
    :cond_f
    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    const/4 v7, 0x0

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    goto :goto_a

    .line 1202
    :cond_12
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v13, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->isProduceFocusInfoSuccess([B)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1203
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const v1, 0x7f0e0182

    const/4 v2, 0x0

    # invokes: Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->access$2800(Lcom/android/camera/module/CameraModule;IZ)V

    goto/16 :goto_0

    .line 1206
    :cond_13
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$5600(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;

    move-result-object v0

    # invokes: Lcom/android/camera/module/CameraModule$BurstSpeedController;->onPictureTaken()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->access$5700(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    goto/16 :goto_0
.end method
