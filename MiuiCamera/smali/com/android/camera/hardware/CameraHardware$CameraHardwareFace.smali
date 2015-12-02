.class public Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
.super Ljava/lang/Object;
.source "CameraHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraHardwareFace"
.end annotation


# instance fields
.field public ageFemale:F

.field public ageMale:F

.field public blinkDetected:I

.field public faceRecognised:I

.field public faceType:I

.field public gender:F

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public prob:F

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileDegree:I

.field public smileScore:I

.field public t2tStop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->id:I

    .line 202
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->leftEye:Landroid/graphics/Point;

    .line 203
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rightEye:Landroid/graphics/Point;

    .line 204
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->mouth:Landroid/graphics/Point;

    .line 209
    iput v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->smileDegree:I

    .line 210
    iput v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->smileScore:I

    .line 211
    iput v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->blinkDetected:I

    .line 212
    iput v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->faceRecognised:I

    .line 213
    iput v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->faceType:I

    .line 214
    iput v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->t2tStop:I

    .line 217
    return-void
.end method

.method public static convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .locals 4
    .param p0, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 220
    array-length v2, p0

    new-array v1, v2, [Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 221
    .local v1, "qcomFaces":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 222
    new-instance v2, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    invoke-direct {v2}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;-><init>()V

    aput-object v2, v1, v0

    .line 223
    aget-object v2, v1, v0

    aget-object v3, p0, v0

    invoke-static {v2, v3}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->copyFace(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;Landroid/hardware/Camera$Face;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-object v1
.end method

.method protected static copyFace(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;Landroid/hardware/Camera$Face;)V
    .locals 8
    .param p0, "cameraface"    # Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .param p1, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 231
    .local v2, "fs":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 233
    .local v1, "f":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 234
    .local v5, "localField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v5    # "localField":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 237
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 236
    :catch_1
    move-exception v6

    goto :goto_1

    .line 235
    :catch_2
    move-exception v6

    goto :goto_1
.end method
