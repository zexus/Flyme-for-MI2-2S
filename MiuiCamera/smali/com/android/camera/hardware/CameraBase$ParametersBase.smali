.class public Lcom/android/camera/hardware/CameraBase$ParametersBase;
.super Landroid/hardware/Camera$Parameters;
.source "CameraBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParametersBase"
.end annotation


# instance fields
.field private mHalCoordinate:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/hardware/CameraBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/CameraBase;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 39
    iput-object p1, p0, Lcom/android/camera/hardware/CameraBase$ParametersBase;->this$0:Lcom/android/camera/hardware/CameraBase;

    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/hardware/CameraBase$ParametersBase;->mHalCoordinate:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public setFocusAreas(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 47
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraBase$ParametersBase;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFocusAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 55
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-super {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 61
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraBase$ParametersBase;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMeteringAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 69
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-super {p0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method
