.class public Lcom/android/camera/camera_adapter/VideoMTK;
.super Lcom/android/camera/module/VideoModule;
.source "VideoMTK.java"


# instance fields
.field private CAMCORDER_CLASS_PATH:Ljava/lang/String;

.field private MEDIARECORDEREX_CLASS_PATH:Ljava/lang/String;

.field private MEDIARECORDER_CLASS_PATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    .line 16
    const-string v0, "com.mediatek.camcorder.CamcorderProfileEx"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->CAMCORDER_CLASS_PATH:Ljava/lang/String;

    .line 17
    const-string v0, "com.mediatek.media.MediaRecorderEx"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->MEDIARECORDEREX_CLASS_PATH:Ljava/lang/String;

    .line 18
    const-string v0, "android.media.MediaRecorder"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->MEDIARECORDER_CLASS_PATH:Ljava/lang/String;

    return-void
.end method

.method private setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 6
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoMTK;->MEDIARECORDER_CLASS_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setParametersExtra"

    const-string v4, "(Ljava/lang/String;)V"

    invoke-static {v0, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 108
    .local v2, "pauseMethod":Lmiui/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v0, p1, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "pauseMethod":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "VideoMTK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/VideoMTK;->MEDIARECORDER_CLASS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "VideoMTK"

    const-string v4, "no method setParametersExtra"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 113
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "VideoMTK"

    const-string v4, "Illegal argument"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 8
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    const/4 v4, 0x0

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoMTK;->CAMCORDER_CLASS_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getProfile"

    const-string v5, "(II)Landroid/media/CamcorderProfile;"

    invoke-static {v0, v3, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 48
    .local v2, "method":Lmiui/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v3, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Lmiui/reflect/Method;
    :goto_0
    return-object v3

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "VideoMTK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/VideoMTK;->CAMCORDER_CLASS_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v3, v4

    .line 57
    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "VideoMTK"

    const-string v5, "no method getProfile"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 53
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "VideoMTK"

    const-string v5, "Illegal argument"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected getHFRQuality(II)I
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 77
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x5

    if-ne v0, p2, :cond_0

    .line 79
    const/16 p2, 0x8c1

    .line 88
    .end local p2    # "quality":I
    :goto_0
    return p2

    .line 80
    .restart local p2    # "quality":I
    :cond_0
    const/4 v0, 0x4

    if-ne v0, p2, :cond_1

    .line 81
    const/16 p2, 0x8b8

    goto :goto_0

    .line 83
    :cond_1
    const-string v0, "VideoMTK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected HFR video quality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    const-string v0, "VideoMTK"

    const-string v1, "HFR is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getNormalVideoFrameRate()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x1e

    return v0
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 6
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoMTK;->MEDIARECORDEREX_CLASS_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "pause"

    const-string v4, "(Landroid/media/MediaRecorder;)V"

    invoke-static {v0, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 65
    .local v2, "pauseMethod":Lmiui/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "pauseMethod":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "VideoMTK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/VideoMTK;->MEDIARECORDEREX_CLASS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "VideoMTK"

    const-string v4, "no method pause"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "VideoMTK"

    const-string v4, "Illegal argument"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "speed"    # I

    .prologue
    .line 98
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media-param-slowmotion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/VideoMTK;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 102
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 28
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    .line 29
    .local v0, "params":Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setCameraMode(I)V

    .line 30
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "slow"

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mHfr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setSlowMotion(Ljava/lang/String;)V

    .line 33
    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set3dnrMode(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setVideoHighFrameRate(Ljava/lang/String;)V

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setPreviewFrameRate(I)V

    .line 41
    :cond_0
    return-void

    .line 36
    :cond_1
    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setSlowMotion(Ljava/lang/String;)V

    .line 37
    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set3dnrMode(Ljava/lang/String;)V

    goto :goto_0
.end method
