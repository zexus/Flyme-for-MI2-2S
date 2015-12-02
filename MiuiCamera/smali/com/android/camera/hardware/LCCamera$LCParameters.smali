.class public Lcom/android/camera/hardware/LCCamera$LCParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "LCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/LCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LCParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/LCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/LCCamera;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/hardware/LCCamera$LCParameters;->this$0:Lcom/android/camera/hardware/LCCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getPictureFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIsoValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-string v1, "iso-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getZslSupported()Z
    .locals 2

    .prologue
    .line 75
    const-string v0, "true"

    const-string v1, "zsl-supported"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFrontMirror()Z
    .locals 2

    .prologue
    .line 107
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoExposure(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "metering"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setBurstShotNum(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 91
    const-string v0, "zsl-num"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 1
    .param p1, "contrast"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "contrast"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setPictureFlip(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setSaturation(Ljava/lang/String;)V
    .locals 1
    .param p1, "saturation"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "saturation"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharpness"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "sharpness"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setZSLMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "zsl"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "zsl"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
