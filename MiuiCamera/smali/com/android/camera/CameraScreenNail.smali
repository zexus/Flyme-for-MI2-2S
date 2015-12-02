.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/camera/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$Listener;
    }
.end annotation


# instance fields
.field private mAnimState:I

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mFirstFrameArrived:Z

.field private mListener:Lcom/android/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/CameraScreenNail$Listener;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;-><init>()V

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 59
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 60
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    .line 83
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraScreenNail;->copyTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    .line 267
    return-void
.end method

.method private copyTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "texture"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 271
    .local v5, "width":I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 272
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, p1, p2, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 279
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 280
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    .line 281
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 89
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .param p1, "animOrientation"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHoldAndSlide()V

    .line 134
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateHold(I)V
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHold()V

    .line 158
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 161
    :cond_0
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 171
    const-string v0, "CameraScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    .line 175
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 176
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCameraBefore()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 123
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 124
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 127
    :cond_0
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCopyTexture()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->clearAnimation()V

    .line 112
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 16
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 189
    monitor-exit v15

    .line 263
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v14

    .line 192
    .local v14, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_3

    :cond_2
    monitor-exit v15

    goto :goto_0

    .line 262
    .end local v14    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 194
    .restart local v14    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v4, :cond_4

    .line 195
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 196
    monitor-exit v15

    goto :goto_0

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 221
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    .line 224
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_6

    .line 225
    invoke-virtual {v14}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 227
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)I

    move-result v13

    .line 229
    .local v13, "milestone":I
    packed-switch v13, :pswitch_data_1

    .line 262
    .end local v13    # "milestone":I
    :cond_7
    :goto_1
    monitor-exit v15

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 203
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 210
    :pswitch_2
    invoke-virtual {v14}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    .line 213
    monitor-exit v15

    goto/16 :goto_0

    .line 215
    :pswitch_3
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 216
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    .line 218
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 219
    monitor-exit v15

    goto/16 :goto_0

    .line 231
    .restart local v13    # "milestone":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->animateSwitchCameraAfter()V

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    goto :goto_1

    .line 235
    :pswitch_5
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 238
    :pswitch_6
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 243
    :pswitch_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onSwitchAnimationDone()V

    .line 245
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 248
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    goto/16 :goto_1

    .line 251
    .end local v13    # "milestone":I
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .line 253
    .local v12, "drawn":Z
    if-eqz v12, :cond_9

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    goto/16 :goto_1

    .line 258
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 259
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 229
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isModuleSwitching()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    return v0
.end method

.method public notifySwitchCameraDone()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->notifySwitchCameraDone()V

    .line 352
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v0, :cond_1

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 321
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 322
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_3

    .line 323
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->canResume()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 326
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 332
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseBitmapIfNeeded()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->isKeptBitmapTexture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 295
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderBitmapToCanvas(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 285
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 286
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 287
    return-void
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceWidth:I

    .line 343
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-nez v0, :cond_1

    .end local p2    # "height":I
    :goto_1
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceHeight:I

    .line 345
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->notifySwitchCameraDone()V

    .line 347
    monitor-exit v1

    .line 348
    return-void

    .line 341
    .restart local p2    # "height":I
    :cond_0
    const/16 v0, 0x2d0

    goto :goto_0

    .line 343
    :cond_1
    mul-int/lit16 v0, p2, 0x2d0

    div-int p2, v0, p1

    goto :goto_1

    .line 347
    .end local p2    # "height":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSwitchCameraGestureInfo(ZZ)V
    .locals 1
    .param p1, "fromGesture"    # Z
    .param p2, "uptodown"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SwitchAnimManager;->setGestureInfo(ZZ)V

    .line 116
    return-void
.end method

.method public startPreviewDone()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 152
    return-void
.end method

.method public switchModule()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    .line 142
    return-void
.end method
