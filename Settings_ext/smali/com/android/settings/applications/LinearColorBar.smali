.class public Lcom/android/settings_ext/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# instance fields
.field private GH:F

.field private GI:F

.field private GJ:F

.field private GK:I

.field private GL:I

.field private GM:I

.field private GN:Z

.field private GO:Z

.field private GP:Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;

.field private GQ:I

.field GR:I

.field GS:I

.field GT:I

.field GU:I

.field GV:I

.field GW:I

.field final GX:Landroid/graphics/Path;

.field final GY:Landroid/graphics/Path;

.field final GZ:Landroid/graphics/Paint;

.field final Ha:Landroid/graphics/Paint;

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const v0, -0xff6978

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GK:I

    .line 30
    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GL:I

    .line 31
    const v0, -0x312825

    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GM:I

    .line 33
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GN:Z

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GQ:I

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GZ:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->Ha:Landroid/graphics/Paint;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/LinearColorBar;->setWillNotDraw(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GZ:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GZ:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->Ha:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GT:I

    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->Ha:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GT:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->Ha:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    return-void

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method private h(II)I
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GW:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 178
    const/4 p1, -0x1

    .line 183
    :cond_0
    :goto_0
    return p1

    .line 180
    :cond_1
    iget v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GQ:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 181
    const p1, -0xaaaaab

    goto :goto_0
.end method

.method private jn()V
    .locals 10

    .prologue
    const v3, 0xffffff

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 119
    if-gez v0, :cond_2

    const/4 v0, 0x0

    move v8, v0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GN:Z

    if-nez v0, :cond_0

    .line 134
    :goto_1
    return-void

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GO:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v9, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GZ:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GM:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GM:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ext/applications/LinearColorBar;->Ha:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 129
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GZ:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GL:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GL:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_2
    move v8, v0

    goto :goto_0
.end method


# virtual methods
.method public a(FFF)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GH:F

    .line 90
    iput p2, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GI:F

    .line 91
    iput p3, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GJ:F

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->invalidate()V

    .line 93
    return-void
.end method

.method public a(III)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GK:I

    .line 97
    iput p2, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GL:I

    .line 98
    iput p3, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GM:I

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->jn()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->invalidate()V

    .line 101
    return-void
.end method

.method public a(Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GP:Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GP:Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;

    .line 79
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/LinearColorBar;->setClickable(Z)V

    .line 81
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aB(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GQ:I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->invalidate()V

    .line 86
    return-void
.end method

.method public ag(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GN:Z

    .line 105
    invoke-direct {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->jn()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->invalidate()V

    .line 107
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->invalidate()V

    .line 165
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 188
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/LinearColorBar;->getWidth()I

    move-result v13

    .line 192
    const/4 v12, 0x0

    .line 194
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GH:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v11, v12, v1

    .line 195
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GI:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v9, v11, v1

    .line 196
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GJ:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v9

    .line 199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GO:Z

    if-eqz v2, :cond_5

    move v8, v1

    move v10, v9

    .line 207
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GR:I

    if-ne v1, v10, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GS:I

    if-eq v1, v8, :cond_2

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 210
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GN:Z

    if-eqz v1, :cond_1

    if-ge v10, v8, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    int-to-float v2, v10

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    int-to-float v5, v14

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v14

    int-to-float v4, v8

    const/4 v5, 0x0

    int-to-float v6, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 223
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GT:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v15, v1, v2

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v15

    int-to-float v3, v14

    int-to-float v4, v10

    add-float/2addr v4, v15

    const/4 v5, 0x0

    int-to-float v6, v10

    add-float/2addr v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v15

    int-to-float v3, v14

    int-to-float v4, v8

    sub-float/2addr v4, v15

    const/4 v5, 0x0

    int-to-float v6, v8

    sub-float/2addr v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GR:I

    .line 234
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GS:I

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GY:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->Ha:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GX:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GZ:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 242
    :cond_3
    if-ge v12, v11, :cond_7

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v11, v1, Landroid/graphics/Rect;->right:I

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GK:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings_ext/applications/LinearColorBar;->h(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 247
    sub-int v1, v11, v12

    sub-int v1, v13, v1

    move v2, v1

    move v1, v11

    .line 251
    :goto_1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GU:I

    .line 252
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GV:I

    .line 256
    if-ge v1, v9, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GL:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings_ext/applications/LinearColorBar;->h(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    sub-int v1, v9, v1

    sub-int/2addr v2, v1

    .line 266
    :goto_2
    add-int v1, v9, v2

    .line 267
    if-ge v9, v1, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->GM:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings_ext/applications/LinearColorBar;->h(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 273
    :cond_4
    return-void

    :cond_5
    move v8, v9

    move v10, v11

    .line 204
    goto/16 :goto_0

    :cond_6
    move v9, v1

    goto :goto_2

    :cond_7
    move v1, v12

    move v2, v13

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->jn()V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GP:Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 147
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 148
    iget v1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GU:I

    if-ge v0, v1, :cond_1

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GW:I

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/LinearColorBar;->invalidate()V

    goto :goto_0

    .line 150
    :cond_1
    iget v1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GV:I

    if-ge v0, v1, :cond_2

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GW:I

    goto :goto_1

    .line 153
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GW:I

    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GP:Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GW:I

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GP:Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;

    iget v1, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GW:I

    invoke-interface {v0, v1}, Lcom/android/settings_ext/applications/LinearColorBar$OnRegionTappedListener;->aC(I)V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/applications/LinearColorBar;->GW:I

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method
