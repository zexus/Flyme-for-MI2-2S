.class public abstract Lcom/android/camera/effect/renders/RegionEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "RegionEffectRender.java"


# instance fields
.field private mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field protected mUniformEffectParameterH:I

.field protected mUniformEffectRectH:I

.field protected mUniformInvertRectH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 23
    return-void
.end method

.method private getChangeMatrix()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, -0x41000000    # -0.5f

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 142
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 143
    iget v1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mOrientation:I

    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mJpegOrientation:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 144
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 145
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 146
    return-object v0
.end method

.method private getEffectArray(Z)[F
    .locals 10
    .param p1, "isSnapShot"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->getChangeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 77
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-array v1, v8, [F

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v1, v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v1, v7

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v1, v5

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v1, v9

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v4, v4, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    aput v4, v1, v3

    .local v1, "points":[F
    move-object v3, v1

    move v4, v2

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 89
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "points":[F
    :goto_0
    return-object v1

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v3

    iget v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mId:I

    if-ne v3, v4, :cond_1

    .line 83
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v6

    .line 85
    .local v6, "attribute":Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    new-array v1, v8, [F

    iget-object v3, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v1, v2

    iget-object v2, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v1, v7

    iget-object v2, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v1, v5

    iget-object v2, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v1, v9

    const/4 v2, 0x4

    iget v3, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    aput v3, v1, v2

    goto :goto_0

    .line 89
    .end local v6    # "attribute":Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    :cond_1
    new-array v1, v8, [F

    fill-array-data v1, :array_0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setEffectRectF(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v3

    .line 49
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v4

    .line 50
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v5

    .line 51
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v1, v0, v3

    .line 54
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v1, v0, v4

    .line 55
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v2, v0, v5

    .line 56
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getEffectRect(Z)[F
    .locals 11
    .param p1, "isSnapShot"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-boolean v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mMirror:Z

    if-eqz v2, :cond_1

    .line 99
    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 100
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v8

    sub-float v2, v7, v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v9

    sub-float v4, v7, v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v5, v5, v10

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 120
    .restart local v1    # "rectF":Landroid/graphics/RectF;
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->getChangeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 121
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 123
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    aput v3, v2, v8

    .line 124
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    .line 125
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    aput v3, v2, v9

    .line 126
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    aput v3, v2, v10

    .line 127
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    .line 136
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    return-object v2

    .line 106
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v6

    sub-float v3, v7, v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v5, v5, v10

    sub-float v5, v7, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v1    # "rectF":Landroid/graphics/RectF;
    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v5, v5, v10

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v1    # "rectF":Landroid/graphics/RectF;
    goto :goto_0

    .line 129
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :cond_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEffectRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 131
    .restart local v1    # "rectF":Landroid/graphics/RectF;
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v2

    iget v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mId:I

    if-ne v2, v3, :cond_3

    .line 132
    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    .line 136
    :goto_2
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    goto :goto_1

    .line 134
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    goto :goto_2
.end method

.method protected getInvertFlag(Z)I
    .locals 1
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result v0

    goto :goto_0
.end method

.method protected initEffectRect(Z)V
    .locals 4
    .param p1, "isSnapShot"    # Z

    .prologue
    const/4 v3, 0x0

    .line 69
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getEffectRect(Z)[F

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 70
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getInvertFlag(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 71
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectParameterH:I

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getEffectArray(Z)[F

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 72
    return-void
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    .line 29
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string v1, "uEffectRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    .line 30
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    .line 31
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string v1, "uEffectArray"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectParameterH:I

    .line 32
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 0
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->initEffectRect(Z)V

    .line 38
    return-void
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 1
    .param p1, "attribute"    # Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 43
    iget-object v0, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    .line 44
    return-void
.end method
