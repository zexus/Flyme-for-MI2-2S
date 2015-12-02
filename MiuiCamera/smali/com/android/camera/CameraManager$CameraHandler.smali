.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 135
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    sparse-switch v6, :sswitch_data_0

    .line 338
    :cond_0
    :goto_0
    :sswitch_0
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 339
    :goto_1
    return-void

    .line 140
    :sswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->release()V

    .line 141
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v7, 0x0

    # setter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Lcom/android/camera/hardware/CameraHardware;)Lcom/android/camera/hardware/CameraHardware;

    .line 142
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v7, 0x0

    # setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/util/ConcurrentModificationException;
    const-string v6, "CameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConcurrentModificationException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/util/ConcurrentModificationException;
    :sswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v7, 0x0

    # setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    :try_start_3
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 149
    :catch_1
    move-exception v1

    .line 150
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v6, v1}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 324
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/RuntimeException;
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 327
    :try_start_5
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 331
    :goto_2
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # setter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6, v11}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Lcom/android/camera/hardware/CameraHardware;)Lcom/android/camera/hardware/CameraHardware;

    .line 332
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v6, v11}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 334
    :cond_1
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraError:Z
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 335
    throw v0

    .line 155
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :sswitch_3
    :try_start_6
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->unlock()V

    goto/16 :goto_0

    .line 159
    :sswitch_4
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->lock()V
    :try_end_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 164
    :sswitch_5
    :try_start_7
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 165
    :catch_3
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_6
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->startPreview()V

    goto/16 :goto_1

    .line 175
    :sswitch_7
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->stopPreview()V

    goto/16 :goto_0

    .line 179
    :sswitch_8
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 184
    :sswitch_9
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 188
    :sswitch_a
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 192
    :sswitch_b
    const-string v2, "cancelAutoFocus failed"
    :try_end_8
    .catch Ljava/util/ConcurrentModificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 194
    .local v2, "paramEmptyException":Ljava/lang/String;
    :try_start_9
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->cancelAutoFocus()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 195
    :catch_4
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 199
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "paramEmptyException":Ljava/lang/String;
    :sswitch_c
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    .line 211
    :sswitch_d
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardware;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 215
    :sswitch_e
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 220
    :sswitch_f
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 225
    :sswitch_10
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->startFaceDetection()V

    goto/16 :goto_0

    .line 229
    :sswitch_11
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->stopFaceDetection()V

    goto/16 :goto_0

    .line 233
    :sswitch_12
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->startPreview()V

    goto/16 :goto_0

    .line 237
    :sswitch_13
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 241
    :sswitch_14
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 244
    :sswitch_15
    const-string v2, "getParameters failed (empty parameters)"
    :try_end_a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 245
    .restart local v2    # "paramEmptyException":Ljava/lang/String;
    const/4 v4, 0x3

    .local v4, "retry_cnt":I
    move v5, v4

    .line 246
    .end local v4    # "retry_cnt":I
    .local v5, "retry_cnt":I
    :goto_3
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "retry_cnt":I
    .restart local v4    # "retry_cnt":I
    if-lez v5, :cond_0

    .line 248
    :try_start_b
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v7, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v7}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/hardware/CameraHardware;->getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    move-result-object v7

    # setter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$302(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 250
    :catch_5
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    move v5, v4

    .line 258
    .end local v4    # "retry_cnt":I
    .restart local v5    # "retry_cnt":I
    goto :goto_3

    .line 255
    .end local v5    # "retry_cnt":I
    .restart local v4    # "retry_cnt":I
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "paramEmptyException":Ljava/lang/String;
    .end local v4    # "retry_cnt":I
    :sswitch_16
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 266
    :sswitch_17
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->addRawImageCallbackBuffer([B)V

    goto/16 :goto_0

    .line 269
    :sswitch_18
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v7, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v7}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/hardware/CameraHardware;->isNeedFlashOn()Z

    move-result v7

    # setter for: Lcom/android/camera/CameraManager;->mFlashOn:Z
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 272
    :sswitch_19
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v7, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v7}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/hardware/CameraHardware;->isFocusSuccessful()Z

    move-result v7

    # setter for: Lcom/android/camera/CameraManager;->mFocusSuccessful:Z
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$502(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 275
    :sswitch_1a
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v7, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v7}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/hardware/CameraHardware;->getCurrentFocusPosition()I

    move-result v7

    # setter for: Lcom/android/camera/CameraManager;->mFocusPosition:I
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$602(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_0

    .line 281
    :sswitch_1b
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->cancelContinuousMode()V

    goto/16 :goto_0

    .line 284
    :sswitch_1c
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v7, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v7}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/hardware/CameraHardware;->getWBCurrentCCT()I

    move-result v7

    # setter for: Lcom/android/camera/CameraManager;->mWBCT:I
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$702(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_0

    .line 287
    :sswitch_1d
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setLongshotMode(Z)V

    goto/16 :goto_0

    .line 290
    :sswitch_1e
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_1

    .line 293
    :sswitch_1f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    .line 294
    .local v3, "rect":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/camera/hardware/CameraHardware;->startObjectTrack(IIII)V

    goto/16 :goto_0

    .line 297
    .end local v3    # "rect":Landroid/graphics/RectF;
    :sswitch_20
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/hardware/CameraHardware;->stopObjectTrack()V

    goto/16 :goto_0

    .line 300
    :sswitch_21
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setMetadataCb(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V

    goto/16 :goto_0

    .line 303
    :sswitch_22
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v7, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v7}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/hardware/CameraHardware;->isPreviewEnabled()Z

    move-result v7

    # setter for: Lcom/android/camera/CameraManager;->mPreviewEnable:Z
    invoke-static {v6, v7}, Lcom/android/camera/CameraManager;->access$802(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 306
    :sswitch_23
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardware;->setBurstShotSpeed(I)V
    :try_end_c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    .line 310
    :sswitch_24
    :try_start_d
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/SurfaceHolder;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_0

    .line 311
    :catch_6
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    :try_start_e
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 316
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_25
    iget-object v6, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v6}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    invoke-virtual {v7, v6}, Lcom/android/camera/hardware/CameraHardware;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V
    :try_end_e
    .catch Ljava/util/ConcurrentModificationException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    .line 328
    .local v0, "e":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v1

    .line 329
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "CameraManager"

    const-string v7, "Fail to release the camera."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_1e
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_12
        0x64 -> :sswitch_18
        0x65 -> :sswitch_1a
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1b
        0x69 -> :sswitch_1d
        0x6a -> :sswitch_1f
        0x6b -> :sswitch_20
        0x6c -> :sswitch_21
        0x6d -> :sswitch_19
        0x6e -> :sswitch_22
        0x6f -> :sswitch_23
        0x70 -> :sswitch_24
        0x71 -> :sswitch_25
    .end sparse-switch
.end method
