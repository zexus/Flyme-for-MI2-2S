.class Lcom/android/camera/module/PanoramaModule$2;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->onCreate(Lcom/android/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x43200000    # 160.0f

    const/4 v2, 0x0

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$600(Lcom/android/camera/module/PanoramaModule;)V

    .line 270
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/android/camera/module/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/camera/module/PanoramaModule;->access$700(Lcom/android/camera/module/PanoramaModule;Landroid/graphics/Bitmap;)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/module/PanoramaModule;->saveHighResMosaic()V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$600(Lcom/android/camera/module/PanoramaModule;)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-boolean v0, v0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView()V

    .line 281
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$800(Lcom/android/camera/module/PanoramaModule;)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$900(Lcom/android/camera/module/PanoramaModule;)V

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$600(Lcom/android/camera/module/PanoramaModule;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-boolean v0, v0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$800(Lcom/android/camera/module/PanoramaModule;)V

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$900(Lcom/android/camera/module/PanoramaModule;)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/module/PanoramaModule;->access$1000(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/PanoramaModule;->access$1100(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/module/PanoramaModule;->access$1200(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/module/PanoramaModule$2$1;

    invoke-direct {v4, p0}, Lcom/android/camera/module/PanoramaModule$2$1;-><init>(Lcom/android/camera/module/PanoramaModule$2;)V

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 303
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$600(Lcom/android/camera/module/PanoramaModule;)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$800(Lcom/android/camera/module/PanoramaModule;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$900(Lcom/android/camera/module/PanoramaModule;)V

    goto/16 :goto_0

    .line 308
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/module/PanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 312
    :pswitch_5
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mCaptureState:I
    invoke-static {v1}, Lcom/android/camera/module/PanoramaModule;->access$400(Lcom/android/camera/module/PanoramaModule;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/camera/module/PanoramaModule$ProgressData;

    .line 314
    .local v11, "pd":Lcom/android/camera/module/PanoramaModule$ProgressData;
    iget v0, v11, Lcom/android/camera/module/PanoramaModule$ProgressData;->progressX:F

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/module/PanoramaModule;->access$1300(Lcom/android/camera/module/PanoramaModule;)F

    move-result v1

    mul-float v7, v0, v1

    .line 315
    .local v7, "accumulatedHorizontalAngle":F
    iget v0, v11, Lcom/android/camera/module/PanoramaModule$ProgressData;->progressY:F

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/module/PanoramaModule;->access$1400(Lcom/android/camera/module/PanoramaModule;)F

    move-result v1

    mul-float v8, v0, v1

    .line 316
    .local v8, "accumulatedVerticalAngle":F
    iget-boolean v0, v11, Lcom/android/camera/module/PanoramaModule$ProgressData;->isFinished:Z

    if-nez v0, :cond_3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->stopCapture(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/module/PanoramaModule;->access$1500(Lcom/android/camera/module/PanoramaModule;Z)V

    goto/16 :goto_0

    .line 321
    :cond_4
    iget v0, v11, Lcom/android/camera/module/PanoramaModule$ProgressData;->panningRateX:F

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/module/PanoramaModule;->access$1300(Lcom/android/camera/module/PanoramaModule;)F

    move-result v1

    mul-float v9, v0, v1

    .line 322
    .local v9, "panningRateXInDegree":F
    iget v0, v11, Lcom/android/camera/module/PanoramaModule$ProgressData;->panningRateY:F

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/module/PanoramaModule;->access$1400(Lcom/android/camera/module/PanoramaModule;)F

    move-result v1

    mul-float v10, v0, v1

    .line 323
    .local v10, "panningRateYInDegree":F
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->updateProgress(FFFF)V
    invoke-static {v0, v9, v10, v7, v8}, Lcom/android/camera/module/PanoramaModule;->access$1600(Lcom/android/camera/module/PanoramaModule;FFFF)V

    goto/16 :goto_0

    .line 329
    .end local v7    # "accumulatedHorizontalAngle":F
    .end local v8    # "accumulatedVerticalAngle":F
    .end local v9    # "panningRateXInDegree":F
    .end local v10    # "panningRateYInDegree":F
    .end local v11    # "pd":Lcom/android/camera/module/PanoramaModule$ProgressData;
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    goto/16 :goto_0

    .line 332
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/module/PanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$2;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/PanoramaModule;->ignoreTouchEvent(Z)V

    goto/16 :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
