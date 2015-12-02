.class public Lcom/android/camera/hardware/CameraHardware;
.super Lcom/android/camera/hardware/CameraBase;
.source "CameraHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardware$HardwareParameters;,
        Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;,
        Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;,
        Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraBase;-><init>(I)V

    .line 31
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/CameraHardware;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/android/camera/hardware/QcomCamera;->open(I)Lcom/android/camera/hardware/QcomCamera;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {p0}, Lcom/android/camera/hardware/MTKCamera;->open(I)Lcom/android/camera/hardware/MTKCamera;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {p0}, Lcom/android/camera/hardware/LCCamera;->open(I)Lcom/android/camera/hardware/LCCamera;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {p0}, Lcom/android/camera/hardware/NvidiaCamera;->open(I)Lcom/android/camera/hardware/NvidiaCamera;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_3
    new-instance v0, Lcom/android/camera/hardware/CameraHardware;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentFocusPosition()I
    .locals 1

    .prologue
    .line 375
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/camera/hardware/CameraHardware;->getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    .line 87
    .local v0, "p":Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/CameraHardware;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 89
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->unflatten(Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 359
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 362
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "getWbCCT"

    const-string v5, "()I"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 363
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 364
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, p0, v5}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 371
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v3

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CameraHardware"

    const-string v5, "getWBCurrentCCT IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFocusSuccessful()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 108
    const-string v6, "camera_focus_success_flag"

    invoke-static {v6, v5}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 109
    .local v3, "successFlag":I
    if-eqz v3, :cond_0

    .line 111
    const/4 v6, 0x1

    :try_start_0
    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v2, v6

    .line 112
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v6, "getFocusState"

    const-string v7, "()I"

    invoke-static {v2, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 113
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 114
    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, p0, v7}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v3, v6, :cond_1

    .line 120
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    move v4, v5

    .line 114
    goto :goto_0

    .line 116
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "CameraHardware"

    const-string v6, "isFocusSuccessful IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isNeedFlashOn()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 125
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v5

    .line 126
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const-string v3, "needFlash"

    const-string v5, "()Z"

    invoke-static {v2, v3, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 128
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_2

    .line 129
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, p0, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    .line 141
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v3

    .line 132
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    const-string v5, "getFlashOn"

    const-string v6, "()I"

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 133
    .restart local v1    # "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_2

    .line 134
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, p0, v6}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eq v5, v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 137
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CameraHardware"

    const-string v5, "isNeedFlashOn IllegalArgumentException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    move v3, v4

    .line 141
    goto :goto_0
.end method

.method public isPreviewEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 184
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 185
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "previewEnabled"

    const-string v5, "()Z"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 186
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 187
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, p0, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 193
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CameraHardware"

    const-string v5, "isPreviewEnabled IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBurstShotSpeed(I)V
    .locals 7
    .param p1, "speed"    # I

    .prologue
    .line 159
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    :try_start_0
    const-string v3, "CameraHardware"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBurstShotSpeed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 163
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "setContinuousShotSpeed"

    const-string v4, "(I)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 164
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 165
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p0, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CameraHardware"

    const-string v4, "setBurstShotSpeed IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    .prologue
    .line 180
    return-void
.end method

.method public setLongshotMode(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 97
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 98
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "setLongshot"

    const-string v4, "(Z)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 99
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 100
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p0, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CameraHardware"

    const-string v4, "setLongshotMode IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMetadataCb(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    .prologue
    .line 152
    return-void
.end method

.method public startObjectTrack(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 379
    const-string v3, "CameraHardware"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startObjectTrack left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 382
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "startTrack"

    const-string v4, "(IIII)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 383
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 384
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p0, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CameraHardware"

    const-string v4, "startObjectTrack IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopObjectTrack()V
    .locals 5

    .prologue
    .line 392
    const-string v3, "CameraHardware"

    const-string v4, "stopObjectTrack"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 395
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "stopTrack"

    const-string v4, "()V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 396
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 397
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, p0, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CameraHardware"

    const-string v4, "stopObjectTrack IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
