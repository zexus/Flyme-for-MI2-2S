.class Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/PanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/module/PanoramaModule$1;

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1397
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 1401
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1404
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1408
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 1409
    const/4 v0, 0x0

    return-object v0

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1397
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/camera/module/PanoramaModule;->access$3302(Lcom/android/camera/module/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1415
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$3400(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1416
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 1417
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$3500(Lcom/android/camera/module/PanoramaModule;)V

    .line 1418
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->configMosaicPreview()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$3600(Lcom/android/camera/module/PanoramaModule;)V

    .line 1419
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    # invokes: Lcom/android/camera/module/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$800(Lcom/android/camera/module/PanoramaModule;)V

    .line 1420
    return-void
.end method
