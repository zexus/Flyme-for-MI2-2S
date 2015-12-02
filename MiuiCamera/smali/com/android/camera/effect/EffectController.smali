.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$1;,
        Lcom/android/camera/effect/EffectController$EffectRectAttribute;,
        Lcom/android/camera/effect/EffectController$SurfacePosition;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT:I

.field public static final SHOW_COUNT:I

.field private static sInstance:Lcom/android/camera/effect/EffectController;


# instance fields
.field private mBlur:Z

.field private mBlurStep:I

.field private mDeviceRotation:F

.field public volatile mDisplayEndIndex:I

.field public volatile mDisplayShow:Z

.field public volatile mDisplayStartIndex:I

.field private mDrawPeaking:Z

.field private mEffectEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectIndex:I

.field private mEffectKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public volatile mFillAnimationCache:Z

.field private mIsDrawMainFrame:Z

.field private mNeedRectSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedScaleDownSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOverrideEffectIndex:I

.field public mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 43
    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    .line 44
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    .line 45
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    return-void

    .line 44
    :cond_0
    const/16 v0, 0xc

    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 62
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 66
    new-instance v0, Lcom/android/camera/effect/EffectController$SurfacePosition;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController$SurfacePosition;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    .line 69
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mFillAnimationCache:Z

    .line 71
    iput v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 72
    sget v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 79
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$1;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    .line 83
    return-void
.end method

.method private addEntryItem(II)V
    .locals 2
    .param p1, "strId"    # I
    .param p2, "id"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method public static getInstance()Lcom/android/camera/effect/EffectController;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "strId"    # I

    .prologue
    .line 335
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initEffectWeight()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method


# virtual methods
.method public clearEffectAttribute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput v1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    .line 282
    return-void
.end method

.method public copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$1;)V

    return-object v0
.end method

.method public getAnalyticsKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getBlurAnimationValue()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/16 v3, 0x8

    .line 178
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_1

    .line 179
    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 180
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_0

    .line 181
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 183
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_1

    .line 184
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    mul-int/lit16 v0, v0, 0xd4

    div-int/lit8 v1, v0, 0x8

    .line 187
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 179
    goto :goto_0
.end method

.method public getDeviceRotation()F
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return v0
.end method

.method public getDisplayEndIndex()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    return v0
.end method

.method public getDisplayStartIndex()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    return v0
.end method

.method public getEffect(Z)I
    .locals 2
    .param p1, "includeOverride"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 192
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 194
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    goto :goto_0
.end method

.method public getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object v0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 10
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "renderGroup"    # Lcom/android/camera/effect/renders/RenderGroup;
    .param p3, "wholeRender"    # Z
    .param p4, "isSnapShotRender"    # Z
    .param p5, "index"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 345
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v5

    .line 636
    :goto_0
    return-object v3

    .line 349
    :cond_0
    if-nez p1, :cond_1e

    move v0, v6

    .line 350
    .local v0, "addEntry":Z
    :goto_1
    const/4 v1, -0x1

    .line 351
    .local v1, "id":I
    const/4 v2, 0x0

    .line 352
    .local v2, "initOne":Z
    if-nez p1, :cond_1f

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    .line 356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    .line 358
    const/4 v0, 0x1

    .line 369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 370
    if-eqz v0, :cond_21

    .line 371
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    const v3, 0x7f0e0089

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 373
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_gray_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 385
    if-eqz v0, :cond_24

    .line 386
    const v3, 0x7f0e008a

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 387
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_vivid_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 396
    if-eqz v0, :cond_27

    .line 397
    const v3, 0x7f0e008b

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 398
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_yesteryear_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFishEyeMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    if-eqz v0, :cond_2a

    .line 409
    const v3, 0x7f0e008d

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 410
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_sketch_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_5
    :goto_5
    const-string v3, "is_camera_replace_higher_cost_effect"

    invoke-static {v3, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 431
    add-int/lit8 v1, v1, 0x1

    .line 432
    if-eqz v0, :cond_33

    .line 433
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const v3, 0x7f0e0096

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 435
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_gaussian_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_6
    :goto_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFishEyeMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 455
    add-int/lit8 v1, v1, 0x1

    .line 456
    if-eqz v0, :cond_3c

    .line 457
    const v3, 0x7f0e008f

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 458
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_fisheye_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_7
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 468
    if-eqz v0, :cond_3f

    .line 469
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    const v3, 0x7f0e0092

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 471
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_mosaic_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_8
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 480
    if-eqz v0, :cond_42

    .line 481
    const v3, 0x7f0e008c

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 482
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_brannan_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_9
    :goto_9
    const-string v3, "is_camera_replace_higher_cost_effect"

    invoke-static {v3, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 491
    add-int/lit8 v1, v1, 0x1

    .line 492
    if-eqz v0, :cond_45

    .line 493
    const v3, 0x7f0e008e

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 494
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_seventy_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_a
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 504
    if-eqz v0, :cond_48

    .line 505
    const v3, 0x7f0e0090

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 506
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_jstyle_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_b
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 523
    if-eqz v0, :cond_4b

    .line 524
    const v3, 0x7f0e0093

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 525
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_earlybird_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_c
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 534
    if-eqz v0, :cond_4e

    .line 535
    const v3, 0x7f0e0094

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 536
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_nashvile_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_d
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 546
    if-eqz v0, :cond_51

    .line 547
    const v3, 0x7f0e0088

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 548
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_e
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 557
    if-eqz v0, :cond_53

    .line 558
    const v3, 0x7f0e0095

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 559
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v4, "effect_mirror_picture_taken_key"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_f
    :goto_f
    add-int/lit8 v1, v1, 0x1

    .line 568
    if-nez v0, :cond_13

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_13

    if-nez p3, :cond_10

    if-eq p5, v1, :cond_10

    if-gez p5, :cond_13

    if-nez v2, :cond_13

    .line 570
    :cond_10
    if-nez p3, :cond_11

    if-eq p5, v1, :cond_11

    invoke-virtual {p2, v9}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 571
    :cond_11
    new-instance v5, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    :goto_10
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    if-eqz v4, :cond_57

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_11
    invoke-direct {v5, p1, v3, v4, v6}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 575
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 581
    :cond_12
    :goto_12
    const/4 v2, 0x1

    .line 585
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 586
    if-nez v0, :cond_16

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_16

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz p4, :cond_16

    :cond_14
    if-nez p3, :cond_15

    if-eq p5, v1, :cond_15

    if-gez p5, :cond_16

    if-nez v2, :cond_16

    .line 588
    :cond_15
    if-eqz p4, :cond_5a

    new-instance v3, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :goto_13
    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 591
    const/4 v2, 0x1

    .line 595
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 596
    if-eqz v0, :cond_5b

    .line 597
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_17
    :goto_14
    add-int/lit8 v1, v1, 0x1

    .line 621
    if-nez v0, :cond_1a

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_1a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_18

    if-eqz p4, :cond_1a

    :cond_18
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFishEyeMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez p3, :cond_19

    if-eq p5, v1, :cond_19

    if-gez p5, :cond_1a

    if-nez v2, :cond_1a

    .line 624
    :cond_19
    new-instance v3, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 625
    const/4 v2, 0x1

    .line 629
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 630
    if-nez v0, :cond_1d

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_1d

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz p4, :cond_1d

    :cond_1b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez p4, :cond_1d

    if-nez p3, :cond_1c

    if-eq p5, v1, :cond_1c

    if-gez p5, :cond_1d

    if-nez v2, :cond_1d

    .line 633
    :cond_1c
    new-instance v3, Lcom/android/camera/effect/renders/FocusPeakingRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 634
    const/4 v2, 0x1

    :cond_1d
    move-object v3, p2

    .line 636
    goto/16 :goto_0

    .end local v0    # "addEntry":Z
    .end local v1    # "id":I
    .end local v2    # "initOne":Z
    :cond_1e
    move v0, v7

    .line 349
    goto/16 :goto_1

    .line 360
    .restart local v0    # "addEntry":Z
    .restart local v1    # "id":I
    .restart local v2    # "initOne":Z
    :cond_1f
    if-nez p2, :cond_20

    .line 361
    new-instance p2, Lcom/android/camera/effect/renders/RenderGroup;

    .end local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    const/16 v3, 0x11

    invoke-direct {p2, p1, v3}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 362
    .restart local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    if-nez p3, :cond_1

    if-gez p5, :cond_1

    move-object v3, p2

    goto/16 :goto_0

    .line 363
    :cond_20
    invoke-virtual {p2, p5}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, p2

    .line 364
    goto/16 :goto_0

    .line 374
    :cond_21
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_22

    if-eqz p4, :cond_2

    :cond_22
    if-nez p3, :cond_23

    if-eqz p5, :cond_23

    if-gez p5, :cond_2

    if-nez v2, :cond_2

    .line 379
    :cond_23
    new-instance v3, Lcom/android/camera/effect/renders/GrayEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/GrayEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 388
    :cond_24
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_25

    if-eqz p4, :cond_3

    :cond_25
    if-nez p3, :cond_26

    if-eq p5, v1, :cond_26

    if-gez p5, :cond_3

    if-nez v2, :cond_3

    .line 390
    :cond_26
    new-instance v3, Lcom/android/camera/effect/renders/VividEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/VividEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 391
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 399
    :cond_27
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_28

    if-eqz p4, :cond_4

    :cond_28
    if-nez p3, :cond_29

    if-eq p5, v1, :cond_29

    if-gez p5, :cond_4

    if-nez v2, :cond_4

    .line 401
    :cond_29
    new-instance v3, Lcom/android/camera/effect/renders/YesteryearEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/YesteryearEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 402
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 411
    :cond_2a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_2b

    if-eqz p4, :cond_5

    :cond_2b
    if-nez p3, :cond_2c

    if-eq p5, v1, :cond_2c

    if-gez p5, :cond_5

    if-nez v2, :cond_5

    .line 413
    :cond_2c
    if-nez p3, :cond_2d

    if-eq p5, v1, :cond_2d

    invoke-virtual {p2, v9}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 414
    :cond_2d
    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    :goto_15
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_16
    invoke-direct {v8, p1, v3, v4, v7}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v8, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 418
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 424
    :cond_2e
    :goto_17
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 414
    :cond_2f
    new-instance v3, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_15

    :cond_30
    new-instance v4, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v4, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_16

    .line 419
    :cond_31
    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_32

    .line 420
    new-instance v3, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_17

    .line 421
    :cond_32
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 422
    new-instance v3, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_17

    .line 436
    :cond_33
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_34

    if-eqz p4, :cond_6

    :cond_34
    if-nez p3, :cond_35

    if-eq p5, v1, :cond_35

    if-gez p5, :cond_6

    if-nez v2, :cond_6

    .line 438
    :cond_35
    if-nez p3, :cond_36

    if-eq p5, v1, :cond_36

    invoke-virtual {p2, v9}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 439
    :cond_36
    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    :goto_18
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_19
    invoke-direct {v8, p1, v3, v4, v7}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v8, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 443
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 449
    :cond_37
    :goto_1a
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 439
    :cond_38
    new-instance v3, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_18

    :cond_39
    new-instance v4, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v4, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_19

    .line 444
    :cond_3a
    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 445
    new-instance v3, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1a

    .line 446
    :cond_3b
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_37

    .line 447
    new-instance v3, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1a

    .line 459
    :cond_3c
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_3d

    if-eqz p4, :cond_7

    :cond_3d
    if-nez p3, :cond_3e

    if-eq p5, v1, :cond_3e

    if-gez p5, :cond_7

    if-nez v2, :cond_7

    .line 461
    :cond_3e
    new-instance v3, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 462
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 472
    :cond_3f
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_40

    if-eqz p4, :cond_8

    :cond_40
    if-nez p3, :cond_41

    if-eq p5, v1, :cond_41

    if-gez p5, :cond_8

    if-nez v2, :cond_8

    .line 474
    :cond_41
    new-instance v3, Lcom/android/camera/effect/renders/MosaicEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/MosaicEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 475
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 483
    :cond_42
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_43

    if-eqz p4, :cond_9

    :cond_43
    if-nez p3, :cond_44

    if-eq p5, v1, :cond_44

    if-gez p5, :cond_9

    if-nez v2, :cond_9

    .line 485
    :cond_44
    new-instance v3, Lcom/android/camera/effect/renders/BrannanEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/BrannanEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 495
    :cond_45
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_46

    if-eqz p4, :cond_a

    :cond_46
    if-nez p3, :cond_47

    if-eq p5, v1, :cond_47

    if-gez p5, :cond_a

    if-nez v2, :cond_a

    .line 497
    :cond_47
    new-instance v3, Lcom/android/camera/effect/renders/SeventyEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/SeventyEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 498
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 507
    :cond_48
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_49

    if-eqz p4, :cond_b

    :cond_49
    if-nez p3, :cond_4a

    if-eq p5, v1, :cond_4a

    if-gez p5, :cond_b

    if-nez v2, :cond_b

    .line 509
    :cond_4a
    new-instance v3, Lcom/android/camera/effect/renders/JStyleEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/JStyleEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 510
    const/4 v2, 0x1

    goto/16 :goto_b

    .line 526
    :cond_4b
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_4c

    if-eqz p4, :cond_c

    :cond_4c
    if-nez p3, :cond_4d

    if-eq p5, v1, :cond_4d

    if-gez p5, :cond_c

    if-nez v2, :cond_c

    .line 528
    :cond_4d
    new-instance v3, Lcom/android/camera/effect/renders/EarlyBirdEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/EarlyBirdEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 529
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 537
    :cond_4e
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_4f

    if-eqz p4, :cond_d

    :cond_4f
    if-nez p3, :cond_50

    if-eq p5, v1, :cond_50

    if-gez p5, :cond_d

    if-nez v2, :cond_d

    .line 539
    :cond_50
    new-instance v3, Lcom/android/camera/effect/renders/NashvileEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/NashvileEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 540
    const/4 v2, 0x1

    goto/16 :goto_d

    .line 549
    :cond_51
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_e

    if-nez p3, :cond_52

    if-eq p5, v1, :cond_52

    if-gez p5, :cond_e

    if-nez v2, :cond_e

    .line 551
    :cond_52
    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    goto/16 :goto_e

    .line 560
    :cond_53
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_54

    if-eqz p4, :cond_f

    :cond_54
    if-nez p3, :cond_55

    if-eq p5, v1, :cond_55

    if-gez p5, :cond_f

    if-nez v2, :cond_f

    .line 562
    :cond_55
    new-instance v3, Lcom/android/camera/effect/renders/MirrorEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/MirrorEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 563
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 571
    :cond_56
    new-instance v3, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto/16 :goto_10

    :cond_57
    new-instance v4, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v4, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto/16 :goto_11

    .line 576
    :cond_58
    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_59

    .line 577
    new-instance v3, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_12

    .line 578
    :cond_59
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_12

    .line 579
    new-instance v3, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_12

    .line 588
    :cond_5a
    new-instance v3, Lcom/android/camera/effect/renders/GradienterEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto/16 :goto_13

    .line 598
    :cond_5b
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez p3, :cond_5c

    if-eq p5, v1, :cond_5c

    if-gez p5, :cond_17

    if-nez v2, :cond_17

    .line 601
    :cond_5c
    if-eqz p4, :cond_63

    .line 602
    if-nez p3, :cond_5d

    if-eq p5, v1, :cond_5d

    invoke-virtual {p2, v9}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 603
    :cond_5d
    new-instance v5, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    :goto_1b
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    if-eqz v4, :cond_60

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_1c
    invoke-direct {v5, p1, v3, v4, v7}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 607
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 616
    :cond_5e
    :goto_1d
    const/4 v2, 0x1

    goto/16 :goto_14

    .line 603
    :cond_5f
    new-instance v3, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_1b

    :cond_60
    new-instance v4, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v4, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_1c

    .line 608
    :cond_61
    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_62

    .line 609
    new-instance v3, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1d

    .line 610
    :cond_62
    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_5e

    .line 611
    new-instance v3, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1d

    .line 614
    :cond_63
    new-instance v3, Lcom/android/camera/effect/renders/TiltShiftPreviewEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/TiltShiftPreviewEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v3, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    goto :goto_1d
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 215
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 216
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 221
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 222
    return-object v0
.end method

.method public getInvertFlag()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public getSurfacePosition()Lcom/android/camera/effect/EffectController$SurfacePosition;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    return-object v0
.end method

.method public hasEffect()Z
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initEffectWeight()V

    .line 90
    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    .line 91
    return-void
.end method

.method public isBackGroundBlur()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 640
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayShow()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    return v0
.end method

.method public isEffectPageSelected()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFishEye()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 674
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFishEyeMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 675
    iget v2, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 675
    goto :goto_0

    .line 677
    :cond_2
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    if-le v2, v3, :cond_3

    const v2, 0x7f0e008f

    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isMainFrameDisplay()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    return v0
.end method

.method public isNeedDrawPeaking()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return v0
.end method

.method public isNeedRect(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 309
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 311
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 312
    const/4 v2, 0x1

    .line 316
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needDownScale(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 324
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 326
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 327
    const/4 v2, 0x1

    .line 331
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBlurEffect(Z)V
    .locals 2
    .param p1, "blured"    # Z

    .prologue
    const/16 v0, 0x8

    .line 167
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eq p1, v1, :cond_4

    .line 168
    if-nez p1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 169
    :cond_0
    iget v1, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ge v0, v1, :cond_3

    .line 170
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 172
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 174
    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    .line 175
    return-void
.end method

.method public setDeviceRotation(ZF)V
    .locals 0
    .param p1, "isLying"    # Z
    .param p2, "rotation"    # F

    .prologue
    .line 644
    if-eqz p1, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    .end local p2    # "rotation":F
    :cond_0
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    .line 645
    return-void
.end method

.method public setDisplayEndIndex(I)V
    .locals 0
    .param p1, "end"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 248
    return-void
.end method

.method public setDisplayShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 252
    return-void
.end method

.method public setDisplayStartIndex(I)V
    .locals 0
    .param p1, "start"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 244
    return-void
.end method

.method public setDrawPeaking(Z)V
    .locals 0
    .param p1, "drawPeaking"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    .line 199
    return-void
.end method

.method public setEffect(I)V
    .locals 0
    .param p1, "effect"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 164
    return-void
.end method

.method public setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "point1"    # Landroid/graphics/PointF;
    .param p3, "point2"    # Landroid/graphics/PointF;
    .param p4, "range"    # F

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p4, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    .line 271
    return-void
.end method

.method public setInvertFlag(I)V
    .locals 1
    .param p1, "invert"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    .line 294
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    .line 302
    return-void
.end method

.method public setSurfacePosition(IIIIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "columnCount"    # I
    .param p4, "honSpace"    # I
    .param p5, "verSpace"    # I
    .param p6, "width"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    iput p1, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mStartX:I

    .line 149
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    iput p2, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mStartY:I

    .line 150
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    iput p3, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mColumnCount:I

    .line 151
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    iput p4, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mHonSpace:I

    .line 152
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    iput p5, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mVerSpace:I

    .line 153
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    iput p6, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mWidth:I

    .line 154
    return-void
.end method
