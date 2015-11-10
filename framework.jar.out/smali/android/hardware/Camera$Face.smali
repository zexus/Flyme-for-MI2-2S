.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1826
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 1835
    iput-object v2, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 1844
    iput-object v2, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 1853
    iput-object v2, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 1885
    iput v1, p0, Landroid/hardware/Camera$Face;->smileDegree:I

    .line 1889
    iput v1, p0, Landroid/hardware/Camera$Face;->smileScore:I

    .line 1893
    iput v1, p0, Landroid/hardware/Camera$Face;->blinkDetected:I

    .line 1897
    iput v1, p0, Landroid/hardware/Camera$Face;->faceRecognised:I

    .line 1902
    iput v1, p0, Landroid/hardware/Camera$Face;->faceType:I

    .line 1906
    iput v1, p0, Landroid/hardware/Camera$Face;->t2tStop:I

    .line 1767
    return-void
.end method
