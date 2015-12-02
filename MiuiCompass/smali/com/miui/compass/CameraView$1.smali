.class Lcom/miui/compass/CameraView$1;
.super Landroid/os/AsyncTask;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CameraView;->openCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CameraView;


# direct methods
.method constructor <init>(Lcom/miui/compass/CameraView;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 43
    iget-object v3, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    monitor-enter v3

    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, "cameraAvailable":Z
    :try_start_0
    iget-object v2, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    # getter for: Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/miui/compass/CameraView;->access$000(Lcom/miui/compass/CameraView;)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 47
    :try_start_1
    iget-object v2, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v4

    # setter for: Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v4}, Lcom/miui/compass/CameraView;->access$002(Lcom/miui/compass/CameraView;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 48
    iget-object v2, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    # getter for: Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/miui/compass/CameraView;->access$000(Lcom/miui/compass/CameraView;)Landroid/hardware/Camera;

    move-result-object v2

    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    iget-object v2, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    # getter for: Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/miui/compass/CameraView;->access$000(Lcom/miui/compass/CameraView;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    # getter for: Lcom/miui/compass/CameraView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v4}, Lcom/miui/compass/CameraView;->access$100(Lcom/miui/compass/CameraView;)Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "Compass:CameraView"

    const-string v4, "set preview display failed."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "Compass:CameraView"

    const-string v4, "Could not open camera"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/miui/compass/CameraView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "cameraAvailable"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    # getter for: Lcom/miui/compass/CameraView;->mIsRunningPreview:Z
    invoke-static {v0}, Lcom/miui/compass/CameraView;->access$200(Lcom/miui/compass/CameraView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    iget-object v1, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    invoke-virtual {v1}, Lcom/miui/compass/CameraView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    invoke-virtual {v2}, Lcom/miui/compass/CameraView;->getHeight()I

    move-result v2

    # invokes: Lcom/miui/compass/CameraView;->startPreview(II)V
    invoke-static {v0, v1, v2}, Lcom/miui/compass/CameraView;->access$300(Lcom/miui/compass/CameraView;II)V

    .line 68
    iget-object v0, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    invoke-virtual {v0}, Lcom/miui/compass/CameraView;->requestLayout()V

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/miui/compass/CameraView$1;->this$0:Lcom/miui/compass/CameraView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/compass/CameraView;->shouldShowCameraUnavailableDialog(Z)V

    .line 74
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/miui/compass/CameraView$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
