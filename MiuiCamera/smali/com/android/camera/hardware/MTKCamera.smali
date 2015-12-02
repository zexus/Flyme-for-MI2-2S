.class public Lcom/android/camera/hardware/MTKCamera;
.super Lcom/android/camera/hardware/CameraHardware;
.source "MTKCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;,
        Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    .line 22
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/MTKCamera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/hardware/MTKCamera;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/MTKCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera;->getParameters()Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera;->getParameters()Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;-><init>(Lcom/android/camera/hardware/MTKCamera;)V

    .line 43
    .local v0, "p":Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 45
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->unflatten(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V
    .locals 12
    .param p1, "callback"    # Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;

    .prologue
    .line 53
    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackClass()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackSetter()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "setter":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v7, :cond_1

    .line 56
    :cond_0
    const-string v9, "MTKCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Insufficient continuous shot callback info[class:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setter:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v2, "ContinuousShotCallback"

    .line 59
    const-string v7, "setContinuousShotCallback"

    .line 62
    :cond_1
    const/4 v1, 0x0

    .line 63
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p1, :cond_2

    .line 64
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.hardware.Camera$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "fullClassName":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    new-instance v11, Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;

    invoke-direct {v11, p0, p1}, Lcom/android/camera/hardware/MTKCamera$ContinuousShotCallbackProxy;-><init>(Lcom/android/camera/hardware/MTKCamera;Lcom/android/camera/hardware/CameraHardware$ContinuousShotCallback;)V

    invoke-static {v9, v10, v11}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    .end local v4    # "fullClassName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v6, v9

    .line 70
    .local v6, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Landroid/hardware/Camera$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";)V"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 74
    .local v8, "signature":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v9}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v5

    .line 75
    .local v5, "method":Lmiui/reflect/Method;
    if-eqz v5, :cond_3

    .line 76
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v5, v9, p0, v10}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v5    # "method":Lmiui/reflect/Method;
    .end local v6    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "signature":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "MTKCamera"

    const-string v10, "IllegalArgumentException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v9, "MTKCamera"

    const-string v10, "ClassNotFoundException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
