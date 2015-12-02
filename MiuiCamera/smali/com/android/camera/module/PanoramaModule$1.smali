.class Lcom/android/camera/module/PanoramaModule$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 224
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-boolean v0, v0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mCameraState:I
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$100(Lcom/android/camera/module/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$200(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->dropPreviewFrame()V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$200(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 237
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$400(Lcom/android/camera/module/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$200(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$200(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->alignFrame()V

    .line 243
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$200(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->isFramesUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$1;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
