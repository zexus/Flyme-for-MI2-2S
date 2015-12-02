.class public Lcom/android/camera/hardware/MTKCamera$MTKParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "MTKCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/MTKCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MTKParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/MTKCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/MTKCamera;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->this$0:Lcom/android/camera/hardware/MTKCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getPictureFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCaptureMode()Ljava/util/List;
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
    .line 185
    const-string v1, "cap-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
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
    .line 194
    const-string v1, "flash-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 201
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "off,on,auto,red-eye,torch"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
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
    .line 129
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
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
    .line 135
    const-string v1, "iso-speed-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getVideoHighFrameRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "video-hfr"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFrontMirror()Z
    .locals 2

    .prologue
    .line 190
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set3dnrMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "3dnr-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setAutoExposure(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, "exposure-meter"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setBurstShotNum(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 169
    const-string v0, "burst-num"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;I)V

    .line 170
    return-void
.end method

.method public setCameraMode(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 165
    const-string v0, "mtk-cam-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method public setCaptureMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "cap-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 1
    .param p1, "contrast"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "contrast"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setEnlargeEye(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "fb-enlarge-eye"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->remove(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "fb-enlarge-eye"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtremeBeauty(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string v0, "fb-extreme-beauty"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setFaceBeauty(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "face-beauty"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public setFacePosition(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v0, "fb-face-pos"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "iso-speed"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setPictureFlip(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setSaturation(Ljava/lang/String;)V
    .locals 1
    .param p1, "saturation"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "saturation"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharpness"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "edge"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setSkinColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "fb-skin-color"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->remove(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v0, "fb-skin-color"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlimFace(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "fb-slim-face"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->remove(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "fb-slim-face"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlowMotion(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string v0, "slow-motion"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setSmoothLevel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v0, "fb-smooth-level"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setVideoHighFrameRate(Ljava/lang/String;)V
    .locals 1
    .param p1, "frameRate"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "video-hfr"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setZSLMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "zsl"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "zsd-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
