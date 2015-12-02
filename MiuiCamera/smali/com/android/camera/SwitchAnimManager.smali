.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SwitchAnimManager$1;,
        Lcom/android/camera/SwitchAnimManager$AnimateFraction;
    }
.end annotation


# instance fields
.field private mAnimStartTime:J

.field private mAnimateFraction:Lcom/android/camera/SwitchAnimManager$AnimateFraction;

.field private mCanResume:Z

.field private mFromGesture:Z

.field private mPreviewFrameLayoutWidth:I

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I

.field private mSwitchState:I

.field private mUptoDown:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    .line 67
    new-instance v0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;-><init>(Lcom/android/camera/SwitchAnimManager;Lcom/android/camera/SwitchAnimManager$1;)V

    iput-object v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimateFraction:Lcom/android/camera/SwitchAnimManager$AnimateFraction;

    .line 70
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/SwitchAnimManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SwitchAnimManager;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    return v0
.end method


# virtual methods
.method public canResume()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mCanResume:Z

    return v0
.end method

.method public clearAnimation()V
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 98
    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)I
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "review"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 247
    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 268
    :goto_0
    return v0

    .line 249
    :pswitch_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/camera/SwitchAnimManager;->drawAnimationFirst(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 252
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-virtual/range {p0 .. p7}, Lcom/android/camera/SwitchAnimManager;->drawAnimationNext(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-virtual/range {p0 .. p7}, Lcom/android/camera/SwitchAnimManager;->resumeNormalPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iput v1, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 264
    const/4 v0, 0x4

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawAnimationFirst(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 22
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "review"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 110
    const/16 v19, 0x1

    .line 111
    .local v19, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v20, v2, v4

    .line 112
    .local v20, "timeDiff":J
    move-wide/from16 v0, v20

    long-to-float v2, v0

    const/high16 v3, 0x43af0000    # 350.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 113
    const/16 v19, 0x0

    .line 114
    const-wide/16 v20, 0x15e

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SwitchAnimManager;->mAnimateFraction:Lcom/android/camera/SwitchAnimManager$AnimateFraction;

    move-wide/from16 v0, v20

    # invokes: Lcom/android/camera/SwitchAnimManager$AnimateFraction;->getFraction(J)F
    invoke-static {v2, v0, v1}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->access$100(Lcom/android/camera/SwitchAnimManager$AnimateFraction;J)F

    move-result v13

    .line 117
    .local v13, "fraction":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SwitchAnimManager;->mAnimateFraction:Lcom/android/camera/SwitchAnimManager$AnimateFraction;

    move-wide/from16 v0, v20

    # invokes: Lcom/android/camera/SwitchAnimManager$AnimateFraction;->getAlphaFraction(J)F
    invoke-static {v2, v0, v1}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->access$200(Lcom/android/camera/SwitchAnimManager$AnimateFraction;J)F

    move-result v10

    .line 120
    .local v10, "alphaFraction":F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v11, v2, v3

    .line 121
    .local v11, "centerX":F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v12, v2, v3

    .line 123
    .local v12, "centerY":F
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v13

    sub-float v14, v2, v3

    .line 124
    .local v14, "previewAnimScale":F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v16, v2, v14

    .line 125
    .local v16, "previewWidth":F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v15, v2, v14

    .line 126
    .local v15, "previewHeight":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 127
    .local v17, "previewX":I
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    sub-float v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 129
    .local v18, "previewY":I
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-float v3, v11

    invoke-virtual {v2, v3, v12}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/SwitchAnimManager;->mFromGesture:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/SwitchAnimManager;->mUptoDown:Z

    if-nez v2, :cond_1

    .line 131
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v3, v13

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000    # 1500.0f

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    .line 135
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-float v3, v12

    invoke-virtual {v2, v11, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 136
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f547ae1    # 0.83f

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 137
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 140
    return v19

    .line 133
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-float v3, v13

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000    # 1500.0f

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    goto :goto_0
.end method

.method public drawAnimationNext(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 22
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "reviewNext"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 145
    const/16 v19, 0x1

    .line 146
    .local v19, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v20, v2, v4

    .line 147
    .local v20, "timeDiff":J
    move-wide/from16 v0, v20

    long-to-float v2, v0

    const/high16 v3, 0x43af0000    # 350.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 148
    const/16 v19, 0x0

    .line 149
    const-wide/16 v20, 0x15e

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SwitchAnimManager;->mAnimateFraction:Lcom/android/camera/SwitchAnimManager$AnimateFraction;

    move-wide/from16 v0, v20

    # invokes: Lcom/android/camera/SwitchAnimManager$AnimateFraction;->getFraction(J)F
    invoke-static {v2, v0, v1}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->access$100(Lcom/android/camera/SwitchAnimManager$AnimateFraction;J)F

    move-result v13

    .line 152
    .local v13, "fraction":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SwitchAnimManager;->mAnimateFraction:Lcom/android/camera/SwitchAnimManager$AnimateFraction;

    move-wide/from16 v0, v20

    # invokes: Lcom/android/camera/SwitchAnimManager$AnimateFraction;->getAlphaFraction(J)F
    invoke-static {v2, v0, v1}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->access$200(Lcom/android/camera/SwitchAnimManager$AnimateFraction;J)F

    move-result v10

    .line 155
    .local v10, "alphaFraction":F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v11, v2, v3

    .line 156
    .local v11, "centerX":F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v12, v2, v3

    .line 158
    .local v12, "centerY":F
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v13

    mul-float/2addr v3, v4

    sub-float v14, v2, v3

    .line 159
    .local v14, "previewAnimScale":F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v16, v2, v14

    .line 160
    .local v16, "previewWidth":F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v15, v2, v14

    .line 162
    .local v15, "previewHeight":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 163
    .local v17, "previewX":I
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    sub-float v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 165
    .local v18, "previewY":I
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-float v3, v11

    invoke-virtual {v2, v3, v12}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 166
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/SwitchAnimManager;->mFromGesture:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/SwitchAnimManager;->mUptoDown:Z

    if-nez v2, :cond_1

    .line 167
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v3, v13

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000    # 1500.0f

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    .line 171
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-float v3, v12

    invoke-virtual {v2, v11, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 172
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 175
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->drawBlur(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 180
    :goto_1
    return v19

    .line 169
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v3, v13

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v3, v4

    neg-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000    # 1500.0f

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v10

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 178
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1
.end method

.method public drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 13
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "review"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 195
    int-to-float v1, p2

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v8, v1, v2

    .line 196
    .local v8, "centerX":F
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v9, v1, v2

    .line 197
    .local v9, "centerY":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 198
    .local v12, "scaleRatio":F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v1, :cond_0

    .line 199
    move/from16 v0, p4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 203
    :goto_0
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v1, v1

    mul-float v11, v1, v12

    .line 204
    .local v11, "reviewWidth":F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    mul-float v10, v1, v12

    .line 205
    .local v10, "reviewHeight":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 206
    .local v3, "reviewX":I
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 209
    .local v4, "reviewY":I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v7

    .line 210
    .local v7, "alpha":F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 212
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 213
    const/4 v1, 0x1

    return v1

    .line 201
    .end local v3    # "reviewX":I
    .end local v4    # "reviewY":I
    .end local v7    # "alpha":F
    .end local v10    # "reviewHeight":F
    .end local v11    # "reviewWidth":F
    :cond_0
    const-string v1, "SwitchAnimManager"

    const-string v2, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifySwitchCameraDone()V
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mCanResume:Z

    .line 273
    :cond_0
    return-void
.end method

.method public resumeNormalPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 8
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "reviewNext"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v2, v4, v6

    .line 186
    .local v2, "timeDiff":J
    long-to-float v1, v2

    const/high16 v4, 0x43c80000    # 400.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SwitchAnimManager;->mAnimateFraction:Lcom/android/camera/SwitchAnimManager$AnimateFraction;

    # invokes: Lcom/android/camera/SwitchAnimManager$AnimateFraction;->getAlphaFraction(J)F
    invoke-static {v1, v2, v3}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->access$200(Lcom/android/camera/SwitchAnimManager$AnimateFraction;J)F

    move-result v0

    .line 188
    .local v0, "alphaFraction":F
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const v4, 0x3e2e147c    # 0.17000002f

    const v5, 0x3f547ae1    # 0.83f

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 189
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setGestureInfo(ZZ)V
    .locals 1
    .param p1, "fromGesture"    # Z
    .param p2, "uptodown"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/SwitchAnimManager;->mFromGesture:Z

    .line 93
    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mFromGesture:Z

    if-eqz v0, :cond_0

    .end local p2    # "uptodown":Z
    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/SwitchAnimManager;->mUptoDown:Z

    .line 94
    return-void

    .line 93
    .restart local p2    # "uptodown":Z
    :cond_0
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 82
    return-void
.end method

.method public setReviewDrawingSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 74
    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 75
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mCanResume:Z

    .line 89
    return-void
.end method

.method public startResume()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 102
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    .line 103
    return-void
.end method
