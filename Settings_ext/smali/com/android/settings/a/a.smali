.class public Lcom/android/settings/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private final Yc:F

.field private final Yd:I

.field private final Ye:I

.field private Yf:Landroid/graphics/Path;

.field private Yg:Landroid/graphics/Rect;

.field private Yh:Landroid/graphics/RectF;

.field private Yi:Landroid/graphics/RectF;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mHighlightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mScale:F

.field private final mSize:I

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFIFI)V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 77
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 78
    iput p2, p0, Lcom/android/settings/a/a;->mSize:I

    .line 79
    iput p6, p0, Lcom/android/settings/a/a;->Yc:F

    .line 80
    iput p3, p0, Lcom/android/settings/a/a;->Yd:I

    .line 81
    iput p5, p0, Lcom/android/settings/a/a;->Ye:I

    .line 82
    iput p4, p0, Lcom/android/settings/a/a;->mStrokeWidth:F

    .line 83
    iput p7, p0, Lcom/android/settings/a/a;->mHighlightColor:I

    .line 85
    iget v0, p0, Lcom/android/settings/a/a;->mSize:I

    iget v1, p0, Lcom/android/settings/a/a;->mSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/a/a;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/a/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 90
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 92
    new-instance v4, Landroid/graphics/Rect;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v4, v1, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    iget v2, p0, Lcom/android/settings/a/a;->mStrokeWidth:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/android/settings/a/a;->mStrokeWidth:F

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 95
    iget v2, p0, Lcom/android/settings/a/a;->Yc:F

    iget v3, p0, Lcom/android/settings/a/a;->Yc:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 97
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 98
    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual {v2, v1, v6, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 100
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v3, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v3, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v3, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v3, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 111
    iget-object v2, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/a/a;->mScale:F

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settings/a/a;->mSize:I

    iget v2, p0, Lcom/android/settings/a/a;->mSize:I

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/a/a;->Yg:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/settings/a/a;->Yh:Landroid/graphics/RectF;

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/a/a;->Yh:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/settings/a/a;->Yi:Landroid/graphics/RectF;

    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/a/a;->Yf:Landroid/graphics/Path;

    .line 122
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/a/a;
    .locals 8

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 61
    const v2, 0x7f0d003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 62
    const v2, 0x7f0d003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 63
    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 64
    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 65
    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 67
    new-instance v0, Lcom/android/settings/a/a;

    float-to-int v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/a/a;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    .line 70
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 126
    iget v0, p0, Lcom/android/settings/a/a;->mScale:F

    iget v1, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 127
    iget v1, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    div-float/2addr v0, v4

    .line 129
    iget-object v1, p0, Lcom/android/settings/a/a;->Yh:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/settings/a/a;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/a/a;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/a/a;->Yg:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/a/a;->Yh:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/a/a;->Yi:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/a/a;->Yh:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/a/a;->Yi:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/a/a;->mStrokeWidth:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/android/settings/a/a;->mStrokeWidth:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/a/a;->Yi:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/a/a;->Yc:F

    iget v2, p0, Lcom/android/settings/a/a;->Yc:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/a/a;->Yf:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/a/a;->Yf:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/a/a;->Yi:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {v0, v1, v5, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/a/a;->mPressed:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x54

    iget v2, p0, Lcom/android/settings/a/a;->mHighlightColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/a/a;->mHighlightColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/settings/a/a;->mHighlightColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/a/a;->Yf:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/a/a;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/settings/a/a;->mPressed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/a/a;->mHighlightColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/a/a;->Yc:F

    iget v2, p0, Lcom/android/settings/a/a;->Ye:I

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/a/a;->Yf:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/a/a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/android/settings/a/a;->Yd:I

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/settings/a/a;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/settings/a/a;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
