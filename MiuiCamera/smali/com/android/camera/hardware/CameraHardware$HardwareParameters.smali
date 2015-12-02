.class public Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.super Lcom/android/camera/hardware/CameraBase$ParametersBase;
.source "CameraHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HardwareParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/CameraHardware;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/CameraHardware;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->this$0:Lcom/android/camera/hardware/CameraHardware;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraBase$ParametersBase;-><init>(Lcom/android/camera/hardware/CameraBase;)V

    return-void
.end method


# virtual methods
.method public getRotation()I
    .locals 2

    .prologue
    .line 349
    const-string v1, "rotation"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "rotation":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 351
    const/4 v1, -0x1

    .line 353
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getStillBeautify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/android/camera/CameraSettings;->XIAOMI_BEAUTY_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIsoValues()Ljava/util/List;
    .locals 1
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
    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/camera/hardware/CameraBase$ParametersBase;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 260
    .local v2, "listOld":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 261
    .local v1, "listNew":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v2, :cond_2

    .line 262
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 263
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    sget v5, Lcom/android/camera/Util;->sWindowHeight:I

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    if-gt v4, v5, :cond_0

    .line 264
    if-nez v1, :cond_1

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listNew":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .restart local v1    # "listNew":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    new-instance v4, Landroid/hardware/Camera$Size;

    iget-object v5, p0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->this$0:Lcom/android/camera/hardware/CameraHardware;

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6, v7}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    return-object v1
.end method

.method public getTimeWatermark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, "watermark"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-string v0, "off"

    return-object v0
.end method

.method public isFrontMirror()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public setMultiFaceBeautify(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public setStillBeautify(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v0, Lcom/android/camera/CameraSettings;->XIAOMI_BEAUTY_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setTimeWatermark(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v0, "watermark"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setTimeWatermarkValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "watermark_value"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 284
    :cond_0
    return-object v3

    .line 278
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 279
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
