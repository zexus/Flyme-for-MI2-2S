.class public Lcom/android/camera/hardware/QcomCamera;
.super Lcom/android/camera/hardware/CameraHardware;
.source "QcomCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;,
        Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    .line 21
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/QcomCamera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/hardware/QcomCamera;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/QcomCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCurrentFocusPosition()I
    .locals 4

    .prologue
    .line 433
    new-instance v1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v1, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 434
    .local v1, "p":Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 437
    const/4 v0, -0x1

    .line 438
    .local v0, "focus_pos":I
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 439
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 441
    :cond_0
    return v0
.end method

.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 42
    .local v0, "p":Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 44
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 4

    .prologue
    .line 420
    new-instance v1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v1, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 421
    .local v1, "p":Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "cct":I
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 428
    :cond_0
    return v0
.end method

.method public setMetadataCb(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 449
    :try_start_0
    const-string v5, "android.hardware.Camera$CameraMetaDataCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 450
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    new-instance v7, Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;

    invoke-direct {v7, p0, p1}, Lcom/android/camera/hardware/QcomCamera$CameraMetaDataCallbackProxy;-><init>(Lcom/android/camera/hardware/QcomCamera;Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 453
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 454
    .local v4, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "setMetadataCb"

    const-string v6, "(Landroid/hardware/Camera$CameraMetaDataCallback;)V"

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 456
    .local v3, "method":Lmiui/reflect/Method;
    if-eqz v3, :cond_1

    .line 457
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v3, v5, p0, v6}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    .end local v3    # "method":Lmiui/reflect/Method;
    .end local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "QcomCamera"

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 461
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "QcomCamera"

    const-string v6, "ClassNotFoundException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
