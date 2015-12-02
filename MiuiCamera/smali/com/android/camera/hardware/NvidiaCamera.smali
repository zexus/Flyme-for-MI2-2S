.class public Lcom/android/camera/hardware/NvidiaCamera;
.super Lcom/android/camera/hardware/CameraHardware;
.source "NvidiaCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    .line 12
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/NvidiaCamera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/hardware/NvidiaCamera;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/NvidiaCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/hardware/NvidiaCamera;->getParameters()Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/hardware/NvidiaCamera;->getParameters()Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;-><init>(Lcom/android/camera/hardware/NvidiaCamera;)V

    .line 33
    .local v0, "p":Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/NvidiaCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 35
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->unflatten(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method
