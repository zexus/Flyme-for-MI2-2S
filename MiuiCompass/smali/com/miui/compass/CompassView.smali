.class public Lcom/miui/compass/CompassView;
.super Landroid/view/View;
.source "CompassView.java"


# instance fields
.field private final OUTER_CIRCLE_RADIUS:F

.field private final VIEW_HEIGHT:I

.field private final VIEW_WIDTH:I

.field private mCircleBgPaint:Landroid/graphics/Paint;

.field private mCircleFgPaint:Landroid/graphics/Paint;

.field private mCompassDrawable:Landroid/graphics/drawable/Drawable;

.field private mCompassPointer:Landroid/graphics/drawable/Drawable;

.field private mCompassPointerMask:Landroid/graphics/drawable/BitmapDrawable;

.field private mCurrentDirection:F

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mPainting:Landroid/graphics/Bitmap;

.field private mPaintingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/compass/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const v2, 0x4380599a    # 256.7f

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v0, "scale":F
    mul-float v1, v2, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/compass/CompassView;->VIEW_WIDTH:I

    .line 59
    mul-float v1, v2, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/compass/CompassView;->VIEW_HEIGHT:I

    .line 60
    const/high16 v1, 0x42df0000    # 111.5f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/compass/CompassView;->OUTER_CIRCLE_RADIUS:F

    .line 62
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 64
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 65
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 68
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/miui/compass/CompassView;->mCompassPointerMask:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassPointerMask:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 71
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassPointerMask:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/compass/CompassView;->mCircleBgPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleBgPaint:Landroid/graphics/Paint;

    const v2, -0x717171

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/compass/CompassView;->mCircleFgPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleFgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 81
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleFgPaint:Landroid/graphics/Paint;

    const v2, -0xdc00

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleFgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCircleFgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/compass/CompassView;->mMaskPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 87
    iget-object v1, p0, Lcom/miui/compass/CompassView;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    return-void
.end method

.method private getViewSize(II)I
    .locals 2
    .param p1, "measureSpec"    # I
    .param p2, "size"    # I

    .prologue
    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 98
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 99
    .local v0, "result":I
    sparse-switch v1, :sswitch_data_0

    .line 107
    :goto_0
    return v0

    .line 102
    :sswitch_0
    move v0, p2

    .line 103
    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getWidth()I

    move-result v12

    .line 113
    .local v12, "w":I
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getHeight()I

    move-result v8

    .line 114
    .local v8, "h":I
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mPainting:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassView;->mPainting:Landroid/graphics/Bitmap;

    .line 116
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/compass/CompassView;->mPainting:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/compass/CompassView;->mPaintingCanvas:Landroid/graphics/Canvas;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mPainting:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 120
    int-to-float v0, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 121
    .local v6, "cX":F
    int-to-float v0, v8

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 122
    .local v7, "cY":F
    iget v10, p0, Lcom/miui/compass/CompassView;->OUTER_CIRCLE_RADIUS:F

    .line 123
    .local v10, "radius":F
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v12, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 124
    .local v9, "l":F
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 125
    .local v11, "t":F
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, v9

    float-to-int v2, v11

    iget-object v4, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget-object v5, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v11

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget v0, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    neg-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v3, v0, v1

    .line 129
    .local v3, "sweep":F
    :goto_0
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mPaintingCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, v6, v10

    sub-float v4, v7, v10

    add-float v5, v6, v10

    add-float v13, v7, v10

    invoke-direct {v1, v2, v4, v5, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/compass/CompassView;->mCircleBgPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 131
    iget v0, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v3, v0, v1

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mPaintingCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, v6, v10

    sub-float v4, v7, v10

    add-float v5, v6, v10

    add-float v13, v7, v10

    invoke-direct {v1, v2, v4, v5, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/compass/CompassView;->mCircleFgPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 134
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassPointerMask:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v9, v6, v0

    .line 135
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mPaintingCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/compass/CompassView;->mCompassPointerMask:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/compass/CompassView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v9, v6, v0

    .line 138
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    float-to-int v1, v9

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget-object v5, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassPointer:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/compass/CompassView;->mPaintingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget v0, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 145
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mPainting:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/miui/compass/CompassView;->mCompassDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    return-void

    .line 128
    .end local v3    # "sweep":F
    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v3, v0, v1

    goto/16 :goto_0

    .line 131
    .restart local v3    # "sweep":F
    :cond_2
    iget v0, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    neg-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v3, v0, v1

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 93
    iget v0, p0, Lcom/miui/compass/CompassView;->VIEW_WIDTH:I

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/CompassView;->getViewSize(II)I

    move-result v0

    iget v1, p0, Lcom/miui/compass/CompassView;->VIEW_HEIGHT:I

    invoke-direct {p0, p2, v1}, Lcom/miui/compass/CompassView;->getViewSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/compass/CompassView;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method public setTargetDirection(F)V
    .locals 2
    .param p1, "direction"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 157
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 158
    add-float/2addr p1, v1

    goto :goto_0

    .line 160
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 161
    sub-float/2addr p1, v1

    goto :goto_1

    .line 163
    :cond_1
    iput p1, p0, Lcom/miui/compass/CompassView;->mCurrentDirection:F

    .line 164
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->invalidate()V

    .line 165
    return-void
.end method
