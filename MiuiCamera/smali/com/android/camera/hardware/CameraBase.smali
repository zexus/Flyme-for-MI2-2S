.class public Lcom/android/camera/hardware/CameraBase;
.super Landroid/hardware/Camera;
.source "CameraBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraBase$ParametersBase;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/hardware/Camera;-><init>(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public cancelContinuousMode()V
    .locals 5

    .prologue
    .line 31
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "cancelContinuousShot"

    const-string v4, "()V"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 32
    .local v1, "method":Lmiui/reflect/Method;
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "method":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CameraBase"

    const-string v3, "cancelContinuousMode IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 23
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 26
    :cond_0
    return-void
.end method
