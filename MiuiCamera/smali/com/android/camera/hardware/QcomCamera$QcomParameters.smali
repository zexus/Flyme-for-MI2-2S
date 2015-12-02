.class public Lcom/android/camera/hardware/QcomCamera$QcomParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "QcomCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/QcomCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QcomParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/QcomCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/QcomCamera;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->this$0:Lcom/android/camera/hardware/QcomCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getChromaFlash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "chroma-flash"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocusPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "current-focus-position"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPreviewSupported()Z
    .locals 2

    .prologue
    .line 406
    const-string v0, "true"

    const-string v1, "internal-restart"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMaxContrast()I
    .locals 1

    .prologue
    .line 309
    const-string v0, "max-contrast"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxExposureTimeValue()I
    .locals 6

    .prologue
    .line 249
    const-string v1, "max-exposure-time"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "maxValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 254
    :goto_0
    return v1

    .line 251
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 254
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getMaxSaturation()I
    .locals 1

    .prologue
    .line 297
    const-string v0, "max-saturation"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxSharpness()I
    .locals 1

    .prologue
    .line 321
    const-string v0, "max-sharpness"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinExposureTimeValue()I
    .locals 6

    .prologue
    .line 239
    const-string v1, "min-exposure-time"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "minValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 244
    :goto_0
    return v1

    .line 241
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 244
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPictureFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedDenoiseModes()Ljava/util/List;
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
    .line 279
    const-string v1, "denoise-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
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
    .line 288
    const-string v1, "iso-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedTouchAfAec()Ljava/util/List;
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
    .line 333
    const-string v1, "touch-af-aec-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoHighFrameRateModes()Ljava/util/List;
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
    .line 383
    const-string v1, "video-hfr-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
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
    .line 191
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "measure"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    const-string v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "manual-cct"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUbiFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-string v0, "af-bracket"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const-string v0, "video-hfr"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWBCurrentCCT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "wb-current-cct"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "wb-manual-cct"

    goto :goto_0
.end method

.method public isFrontMirror()Z
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "pictureFlip":Ljava/lang/String;
    const-string v1, "flip-h"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flip-v"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 359
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x0

    .line 362
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->isVideoStabilizationSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public isZSLHDRSupported()Z
    .locals 2

    .prologue
    .line 410
    const-string v1, "zsl-hdr-supported"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const/4 v1, 0x1

    .line 414
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAoHDR(Ljava/lang/String;)V
    .locals 1
    .param p1, "aoHdrValue"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "snapshot-hdr"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 119
    :cond_1
    const-string v0, "sensor-hdr"

    goto :goto_0
.end method

.method public setAutoExposure(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "auto-exposure"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public setCameraMode(I)V
    .locals 1
    .param p1, "cameraMode"    # I

    .prologue
    .line 402
    const-string v0, "camera-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;I)V

    .line 403
    return-void
.end method

.method public setChromaFlash(Ljava/lang/String;)V
    .locals 1
    .param p1, "chromaFlash"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string v0, "chroma-flash"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public setContrast(I)V
    .locals 3
    .param p1, "contrast"    # I

    .prologue
    .line 313
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxContrast()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Contrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_1
    const-string v0, "contrast"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setDenoise(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string v0, "denoise"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public setExposureTime(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 259
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "exposure-time"

    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "exposure-time"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFaceDetectionMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v0, "face-detection"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(I)V

    .line 175
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setFocusMode(Ljava/lang/String;)V

    .line 176
    return-void

    .line 172
    :cond_1
    const-string v0, "lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string p1, "auto"

    goto :goto_0
.end method

.method public setFocusPosition(I)V
    .locals 2
    .param p1, "postion"    # I

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(II)V

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x2

    rsub-int v1, p1, 0x3e8

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(II)V

    goto :goto_0
.end method

.method public setFocusPosition(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "pos"    # I

    .prologue
    .line 230
    const-string v0, "manual-focus-pos-type"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "manual-focus-position"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setHandNight(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "v":Ljava/lang/String;
    const-string v1, "morpho-hht"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setMorphoHDR(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "v":Ljava/lang/String;
    const-string v1, "morpho-hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setMultiFaceBeautify(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setPictureFlip(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setSaturation(I)V
    .locals 3
    .param p1, "saturation"    # I

    .prologue
    .line 301
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSaturation()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Saturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    const-string v0, "saturation"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setSharpness(I)V
    .locals 3
    .param p1, "sharpness"    # I

    .prologue
    .line 325
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSharpness()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Sharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    const-string v0, "sharpness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public setTouchAfAec(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "touch-af-aec"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setUbiFocus(Ljava/lang/String;)V
    .locals 1
    .param p1, "ubiFocusMode"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string v0, "af-bracket"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public setVideoHDR(Ljava/lang/String;)V
    .locals 1
    .param p1, "aoHdrValue"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "video-hdr"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setVideoHighFrameRate(Ljava/lang/String;)V
    .locals 1
    .param p1, "hfr"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string v0, "video-hfr"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public setWBManualCCT(I)V
    .locals 2
    .param p1, "cct"    # I

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    const-string v0, "wb-manual-cct"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string v0, "manual-wb-type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;I)V

    .line 211
    const-string v0, "manual-wb-value"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manual-cct"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setWBManualCCT(I)V

    .line 186
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 187
    return-void

    .line 183
    :cond_2
    const-string v0, "measure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string p1, "auto"

    goto :goto_0
.end method

.method public setZSLMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "zsl"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string v0, "zsl"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method
