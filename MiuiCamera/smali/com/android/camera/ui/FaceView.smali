.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# static fields
.field private static configuration:Landroid/content/res/Configuration;


# instance fields
.field private final LOGV:Z

.field private mAgeRangeAlias:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaceInfoFormat:Ljava/lang/String;

.field private mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

.field private mGenderFemale:Ljava/lang/String;

.field private mGenderMale:Ljava/lang/String;

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mShowAgeandAge:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 56
    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 65
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mGenderMale:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mGenderFemale:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoFormat:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    .line 88
    return-void
.end method

.method private getAgeIndex(F)I
    .locals 1
    .param p1, "age"    # F

    .prologue
    .line 271
    const/high16 v0, 0x40e00000    # 7.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    .line 273
    :cond_0
    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 276
    const/4 v0, 0x2

    goto :goto_0

    .line 277
    :cond_2
    const/high16 v0, 0x42300000    # 44.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    .line 278
    const/4 v0, 0x3

    goto :goto_0

    .line 279
    :cond_3
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    .line 280
    const/4 v0, 0x4

    goto :goto_0

    .line 282
    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getShowInfo(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Ljava/lang/String;
    .locals 7
    .param p1, "face"    # Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .prologue
    const v5, 0x3ecccccd    # 0.4f

    .line 287
    const-string v3, "on"

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mGenderMale:Ljava/lang/String;

    .line 289
    .local v1, "gender":Ljava/lang/String;
    iget v3, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->ageMale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "age":Ljava/lang/String;
    iget v3, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mGenderFemale:Ljava/lang/String;

    .line 292
    iget v3, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->ageFemale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_0
    sget-object v3, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .end local v0    # "age":Ljava/lang/String;
    .end local v1    # "gender":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 296
    :cond_1
    iget v3, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->ageMale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v2

    .line 297
    .local v2, "index":I
    iget v3, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 298
    iget v3, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->ageFemale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v3

    add-int/lit8 v2, v3, 0x6

    .line 300
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    aget-object v3, v3, v2

    goto :goto_0

    .line 303
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showFaceInfo()Z
    .locals 2

    .prologue
    .line 267
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLatestFaces()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 106
    iput v4, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 123
    :goto_1
    return-void

    .line 108
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v2, v4

    .line 115
    .local v0, "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v2, v1

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aput-object v0, v2, v3

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 243
    return-void
.end method

.method public clearPreviousFaces()V
    .locals 3

    .prologue
    .line 251
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFaces()[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    return-object v0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 9

    .prologue
    .line 126
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 127
    .local v7, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    .line 128
    .local v8, "screenNail":Lcom/android/camera/CameraScreenNail;
    if-eqz v8, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 139
    .end local v7    # "rect":Landroid/graphics/RectF;
    :goto_0
    return-object v7

    .restart local v7    # "rect":Landroid/graphics/RectF;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public isFaceStable()Z
    .locals 13

    .prologue
    .line 144
    const/4 v5, 0x0

    .line 145
    .local v5, "emptyFacesCount":I
    const/4 v4, 0x0

    .local v4, "averageWidth":I
    const/4 v1, 0x0

    .local v1, "averageHeight":I
    const/4 v2, 0x0

    .local v2, "averageLeft":I
    const/4 v3, 0x0

    .local v3, "averageTop":I
    const/4 v7, 0x0

    .line 146
    .local v7, "faceCount":I
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .local v0, "arr$":[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    array-length v10, v0

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v6, v0, v9

    .line 148
    .local v6, "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    if-nez v6, :cond_0

    .line 149
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x3

    if-lt v5, v11, :cond_1

    .line 150
    const/4 v11, 0x0

    .line 180
    .end local v6    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :goto_1
    return v11

    .line 155
    .restart local v6    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_0
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 156
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v1, v11

    .line 157
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v11

    .line 158
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v11

    .line 146
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 160
    .end local v6    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_2
    iget-object v11, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v11, v11

    sub-int v7, v11, v5

    .line 161
    div-int/2addr v4, v7

    .line 162
    div-int/2addr v1, v7

    .line 163
    div-int/2addr v2, v7

    .line 164
    div-int/2addr v3, v7

    .line 165
    div-int/lit8 v11, v4, 0x3

    const/16 v12, 0x5a

    if-le v11, v12, :cond_4

    div-int/lit8 v8, v4, 0x3

    .line 168
    .local v8, "faceWidthRestrict":I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v10, v0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v6, v0, v9

    .line 169
    .restart local v6    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    if-nez v6, :cond_5

    .line 168
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 165
    .end local v6    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .end local v8    # "faceWidthRestrict":I
    :cond_4
    const/16 v8, 0x5a

    goto :goto_2

    .line 172
    .restart local v6    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .restart local v8    # "faceWidthRestrict":I
    :cond_5
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v8, :cond_6

    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-gt v11, v12, :cond_6

    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_3

    .line 175
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 179
    .end local v6    # "face":Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_7
    const/16 v11, 0x29e

    if-gt v4, v11, :cond_8

    const/16 v11, 0x29e

    if-le v1, v11, :cond_9

    :cond_8
    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/android/camera/ui/FaceView;->mIsBigEnoughRect:Z

    .line 180
    const/4 v11, 0x1

    goto :goto_1

    .line 179
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v9

    .line 310
    .local v9, "screenNail":Lcom/android/camera/CameraScreenNail;
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v0, v0

    if-lez v0, :cond_3

    if-eqz v9, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v9}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v9}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 317
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 318
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v0, v0

    if-ge v7, v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showFaceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->prob:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->gender:F

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->gender:F

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 318
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getShowInfo(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "info":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 340
    .end local v8    # "info":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    .end local v7    # "i":I
    :cond_3
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    .line 248
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 260
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 185
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public setFaces([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Z
    .locals 5
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    const-string v2, "FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num of faces="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v2, :cond_0

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    :cond_1
    move v0, v1

    .line 94
    .local v0, "isFacesChanged":Z
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 95
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    .line 96
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    :cond_3
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 3
    .param p1, "mirror"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 196
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 190
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 192
    return-void
.end method

.method public setShowGenderAndAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public showFail()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 234
    return-void
.end method

.method public showStart()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 224
    return-void
.end method

.method public showSuccess()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 229
    return-void
.end method
