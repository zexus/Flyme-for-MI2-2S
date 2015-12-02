.class public Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "NvidiaCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/NvidiaCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvidiaParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/NvidiaCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/NvidiaCamera;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->this$0:Lcom/android/camera/hardware/NvidiaCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getAohdrEnable()Z
    .locals 2

    .prologue
    .line 162
    const-string v1, "nv-aohdr-enable"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoRotation()Z
    .locals 2

    .prologue
    .line 76
    const-string v1, "nv-auto-rotation"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getISOValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "nv-picture-iso"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNSLNumBuffers()I
    .locals 1

    .prologue
    .line 189
    const-string v0, "nv-nsl-num-buffers"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNvExposureTime()I
    .locals 1

    .prologue
    .line 324
    const-string v0, "nv-exposure-time"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewPauseDisabled()Z
    .locals 2

    .prologue
    .line 253
    const-string v1, "nv-disable-preview-pause"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
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
    .line 340
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 342
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    const-string v1, "manual"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    const-string v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    const-string v1, "lock"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    const-string v1, "lock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1
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
    .line 358
    const-string v1, "nv-picture-iso-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isFrontMirror()Z
    .locals 2

    .prologue
    .line 354
    const-string v0, "horizontal"

    const-string v1, "nv-flip-still"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAohdrEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-aohdr-enable"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-auto-rotation"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setBurstCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setColorTemperature(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "awbRangeValue":Ljava/lang/String;
    const-string v1, "nv-awb-cct-range"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "nv-contrast"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public setEdgeEnhancement(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-edge-enhancement"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public setExposureTime(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-exposure-time"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setFlipStill(Ljava/lang/String;)V
    .locals 1
    .param p1, "flip"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "nv-flip-still"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const-string p1, "auto"

    .line 331
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setFocusPosition(I)V

    .line 335
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setFocusMode(Ljava/lang/String;)V

    .line 336
    return-void

    .line 332
    :cond_1
    const-string v0, "lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string p1, "auto"

    goto :goto_0
.end method

.method public setFocusPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-focus-position"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setHandNight(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "v":Ljava/lang/String;
    const-string v1, "hand-night"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "nv-picture-iso"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setMorphoHDR(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-still-hdr-morpho"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setNSLBurstCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setNSLNumBuffers(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-nsl-num-buffers"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public setNVShotMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "retVal":Z
    if-eqz p1, :cond_0

    .line 267
    const-string v1, "shot2shot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    const-string v1, "nv-capture-mode"

    const-string v2, "shot2shot"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    const-string v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "nv-capture-mode"

    const-string v2, "normal"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPreviewPauseDisabled(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 245
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-disable-preview-pause"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public setRawDumpFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-raw-dump-flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setSaturation(I)V
    .locals 2
    .param p1, "saturation"    # I

    .prologue
    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-saturation"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/NvidiaCamera$NvidiaParameters;->setColorTemperature(I)V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 119
    return-void
.end method
