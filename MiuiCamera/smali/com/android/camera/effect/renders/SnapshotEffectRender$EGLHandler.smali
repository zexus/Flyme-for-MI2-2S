.class Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;
.super Landroid/os/Handler;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# instance fields
.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 387
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 388
    return-void
.end method

.method private applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 18
    .param p1, "jpeg"    # Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .param p2, "downScale"    # I
    .param p3, "applyToThumb"    # Z
    .param p4, "targetSize"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
    .param p5, "originSize"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    .prologue
    .line 497
    if-eqz p3, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v9

    .line 498
    .local v9, "data":[B
    :goto_0
    if-nez v9, :cond_2

    .line 499
    const-string v3, "SnapshotEffectProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_1

    const-string v2, "thumb!"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v12, 0x0

    .line 554
    :goto_2
    return-object v12

    .line 497
    .end local v9    # "data":[B
    :cond_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    goto :goto_0

    .line 499
    .restart local v9    # "data":[B
    :cond_1
    const-string v2, "jpeg!"

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 504
    .local v10, "lastime":J
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 505
    .local v16, "texId":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 506
    const/4 v2, 0x0

    aget v2, v16, v2

    move/from16 v0, p2

    invoke-static {v9, v2, v0}, Lcom/android/camera/effect/ShaderNativeUtil;->initTexture([BII)[I

    move-result-object v17

    .line 507
    .local v17, "textureSize":[I
    const-string v2, "SnapshotEffectProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-eqz p3, :cond_5

    const/4 v2, 0x0

    aget v6, v17, v2

    .line 510
    .local v6, "width":I
    :goto_3
    if-eqz p3, :cond_6

    const/4 v2, 0x1

    aget v7, v17, v2

    .line 511
    .local v7, "height":I
    :goto_4
    if-eqz p3, :cond_7

    const/4 v2, 0x0

    aget v14, v17, v2

    .line 512
    .local v14, "previewWidth":I
    :goto_5
    if-eqz p3, :cond_8

    const/4 v2, 0x1

    aget v13, v17, v2

    .line 513
    .local v13, "previewHeight":I
    :goto_6
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 514
    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    .line 515
    move-object/from16 v0, p4

    iput v7, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    .line 516
    const-string v2, "SnapshotEffectProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumbSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v15

    .line 520
    .local v15, "render":Lcom/android/camera/effect/renders/Render;
    invoke-virtual {v15, v14, v13}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 521
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v15, v2}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 522
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v15, v2}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    .line 523
    if-eqz p3, :cond_9

    .line 524
    invoke-virtual {v15, v6, v7}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 528
    :goto_7
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v15, v2}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 529
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v15, v2}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 530
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v15, v2}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 532
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->checkFrameBuffer(II)V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/SnapshotCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 536
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    const/4 v3, 0x0

    aget v3, v16, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIII)V

    invoke-virtual {v15, v2}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 539
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(IIIII)V

    .line 541
    const-string v2, "SnapshotEffectProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v2, 0xd05

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    invoke-static {v6, v7, v2}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(III)[B

    move-result-object v12

    .line 547
    .local v12, "outData":[B
    const-string v2, "SnapshotEffectProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v2, 0x0

    aget v2, v16, v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 550
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 552
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/camera/effect/SnapshotCanvas;->endBindFrameBuffer()V

    goto/16 :goto_2

    .line 509
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v12    # "outData":[B
    .end local v13    # "previewHeight":I
    .end local v14    # "previewWidth":I
    .end local v15    # "render":Lcom/android/camera/effect/renders/Render;
    :cond_5
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    goto/16 :goto_3

    .line 510
    .restart local v6    # "width":I
    :cond_6
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    goto/16 :goto_4

    .line 511
    .restart local v7    # "height":I
    :cond_7
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    goto/16 :goto_5

    .line 512
    .restart local v14    # "previewWidth":I
    :cond_8
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    goto/16 :goto_6

    .line 526
    .restart local v13    # "previewHeight":I
    .restart local v15    # "render":Lcom/android/camera/effect/renders/Render;
    :cond_9
    move-object/from16 v0, p5

    iget v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    move-object/from16 v0, p5

    iget v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v15, v2, v3}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto/16 :goto_7
.end method

.method private checkFrameBuffer(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 683
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 684
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 686
    :cond_1
    return-void
.end method

.method private drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 29
    .param p1, "jpeg"    # Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .param p2, "save"    # Z

    .prologue
    .line 566
    const/4 v4, 0x1

    .line 567
    .local v4, "downScale":I
    new-instance v7, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-direct {v7, v2, v3, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)V

    .line 568
    .local v7, "originSize":Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    sget v3, Lcom/android/gallery3d/ui/GLCanvasImpl;->sMaxTextureSize:I

    if-gt v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    sget v3, Lcom/android/gallery3d/ui/GLCanvasImpl;->sMaxTextureSize:I

    if-le v2, v3, :cond_1

    .line 570
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 571
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 572
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 575
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->needDownScale(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 576
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v25, v0

    .line 577
    .local v25, "effectDownScale":I
    move/from16 v0, v25

    if-le v0, v4, :cond_2

    move/from16 v4, v25

    .line 580
    .end local v25    # "effectDownScale":I
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v23

    .line 581
    .local v23, "data":[B
    const-string v3, "SnapshotEffectProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainLen="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v23, :cond_5

    const-string v2, "null"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz v23, :cond_3

    .line 583
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 584
    const/16 v23, 0x0

    .line 587
    :cond_3
    if-eqz p2, :cond_e

    .line 590
    const/16 v28, 0x0

    .line 591
    .local v28, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    monitor-enter v3

    .line 592
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v28, v0

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    if-nez v28, :cond_6

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :goto_2
    if-nez v28, :cond_7

    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    if-nez v28, :cond_8

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    move/from16 v22, v0

    :goto_4
    invoke-virtual/range {v8 .. v22}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 646
    .end local v28    # "title":Ljava/lang/String;
    :cond_4
    :goto_5
    const/4 v2, 0x1

    return v2

    .line 581
    :cond_5
    move-object/from16 v0, v23

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1

    .line 594
    .restart local v28    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_6
    move-object/from16 v10, v28

    .line 596
    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/16 v22, 0x0

    goto :goto_4

    .line 610
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_b

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v8

    if-nez v28, :cond_a

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v8 .. v17}, Lcom/android/camera/storage/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    goto :goto_5

    :cond_a
    move-object/from16 v9, v28

    goto :goto_6

    .line 621
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-nez v28, :cond_c

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    move/from16 v16, v0

    if-nez v28, :cond_d

    const/16 v17, 0x0

    :goto_8
    invoke-static/range {v8 .. v17}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    goto/16 :goto_5

    :cond_c
    move-object/from16 v12, v28

    goto :goto_7

    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_8

    .line 633
    .end local v28    # "title":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-eqz v2, :cond_4

    .line 634
    new-instance v27, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 636
    .local v27, "s":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 637
    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    .line 638
    .local v26, "outData":[B
    if-eqz v26, :cond_f

    .line 639
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 641
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 642
    .end local v26    # "outData":[B
    :catch_0
    move-exception v24

    .line 643
    .local v24, "e":Ljava/io/IOException;
    const-string v2, "SnapshotEffectProcessor"

    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5
.end method

.method private drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 19
    .param p1, "jpeg"    # Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .param p2, "save"    # Z

    .prologue
    .line 650
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-nez v2, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v2, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;[B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 654
    :cond_0
    new-instance v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {v6, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V

    .line 655
    .local v6, "size":Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v18

    .line 656
    .local v18, "data":[B
    const-string v3, "SnapshotEffectProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawThumbJepg: thumbLen="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v18, :cond_3

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-eqz v18, :cond_1

    .line 658
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    .line 659
    const/16 v18, 0x0

    .line 662
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v14

    iget v15, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v8 .. v17}, Lcom/android/camera/storage/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    .line 672
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    .line 676
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 656
    :cond_3
    move-object/from16 v0, v18

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method private drawWaterMark(IIIII)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 474
    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "waterMarkText":Ljava/lang/String;
    const/high16 v2, 0x43100000    # 144.0f

    const v3, -0x40008

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v11

    .line 480
    .local v11, "waterTexture":Lcom/android/gallery3d/ui/StringTexture;
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v3}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 481
    new-instance v2, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v10, 0x0

    move-object v4, v1

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;IIIIILcom/android/camera/effect/renders/SnapshotEffectRender$1;)V

    .line 482
    .local v2, "waterMark":Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
    if-eqz p5, :cond_2

    .line 483
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v3}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterX()I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v4

    int-to-float v4, v4

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterY()I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 484
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v3}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    move/from16 v0, p5

    neg-int v4, v0

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    .line 485
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v3}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterX()I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterY()I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 487
    :cond_2
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v3}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object v9

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getLeft()I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v5

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getTop()I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v6

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v7

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I

    move-result v8

    move-object v4, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-virtual {v9, v3}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 492
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v3}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto/16 :goto_0
.end method

.method private getEffectRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v1}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    .line 559
    .local v0, "group":Lcom/android/camera/effect/renders/RenderGroup;
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/effect/SnapshotCanvas;->prepareEffectRenders(ZI)V

    .line 562
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    return-object v1
.end method

.method private initEGL()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 437
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v4, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$402(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 438
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v4

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$502(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 439
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v3, v4, :cond_0

    .line 440
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "eglGetDisplay failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    :cond_0
    new-array v2, v10, [I

    .line 443
    .local v2, "version":[I
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 444
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "eglInitialize failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 446
    :cond_1
    const-string v3, "SnapshotEffectProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EGL version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-array v0, v11, [I

    fill-array-data v0, :array_0

    .line 449
    .local v0, "attribList":[I
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v5

    # invokes: Lcom/android/camera/effect/renders/SnapshotEffectRender;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v4, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$602(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 450
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 453
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v3, v4, :cond_3

    .line 454
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "failed to createContext"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 457
    :cond_3
    const/4 v3, 0x5

    new-array v1, v3, [I

    const/16 v3, 0x3057

    aput v3, v1, v8

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    aput v3, v1, v9

    const/16 v3, 0x3056

    aput v3, v1, v10

    sget v3, Lcom/android/camera/Util;->sWindowHeight:I

    aput v3, v1, v11

    const/4 v3, 0x4

    const/16 v4, 0x3038

    aput v4, v1, v3

    .line 462
    .local v1, "attribListPbuffer":[I
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    invoke-interface {v4, v5, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 464
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_5

    .line 465
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "failed to createWindowSurface"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_5
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 469
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "failed to eglMakeCurrent"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 471
    :cond_6
    return-void

    .line 448
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x1

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z
    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z

    .line 690
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z
    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z

    .line 691
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 692
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 693
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 695
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 696
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 697
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 698
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$502(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 699
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # setter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v0, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/ActivityBase;)Lcom/android/camera/ActivityBase;

    .line 700
    iput-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 701
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 702
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->recycledResources()V

    .line 703
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 704
    iput-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    .line 705
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 392
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->initEGL()V

    .line 395
    new-instance v2, Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {v2}, Lcom/android/camera/effect/SnapshotCanvas;-><init>()V

    iput-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    .line 396
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/effect/SnapshotCanvas;->setSize(II)V

    .line 398
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, v2, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 402
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/camera/effect/SnapshotCanvas;->recycledResources()V

    .line 403
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # operator-- for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$310(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .line 411
    .local v1, "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_2

    .line 412
    .local v0, "isExifNeeded":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 413
    invoke-direct {p0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 415
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 416
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/camera/effect/SnapshotCanvas;->recycledResources()V

    .line 417
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .end local v0    # "isExifNeeded":Z
    :cond_2
    move v0, v2

    .line 411
    goto :goto_1

    .line 420
    .end local v1    # "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, v2, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    goto/16 :goto_0

    .line 423
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, v2, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 424
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_0

    .line 427
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    goto/16 :goto_0

    .line 430
    :pswitch_6
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/effect/SnapshotCanvas;->prepareEffectRenders(ZI)V

    goto/16 :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendEmptyMessage(I)Z

    .line 711
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    # getter for: Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 712
    return-void
.end method
