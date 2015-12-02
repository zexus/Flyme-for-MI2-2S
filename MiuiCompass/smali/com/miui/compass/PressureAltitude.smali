.class public Lcom/miui/compass/PressureAltitude;
.super Landroid/widget/ImageView;
.source "PressureAltitude.java"


# static fields
.field private static final ANGLE_ALL:I


# instance fields
.field private final VIEW_HEIGHT:I

.field private final VIEW_WIDTH:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mDrawingValue:F

.field private mFgPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mIsPressure:Z

.field private mUpdater:Ljava/lang/Runnable;

.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, -0x96

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/miui/compass/PressureAltitude;->ANGLE_ALL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/PressureAltitude;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/compass/PressureAltitude;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/compass/PressureAltitude;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v1, Lcom/miui/compass/PressureAltitude$1;

    invoke-direct {v1, p0}, Lcom/miui/compass/PressureAltitude$1;-><init>(Lcom/miui/compass/PressureAltitude;)V

    iput-object v1, p0, Lcom/miui/compass/PressureAltitude;->mUpdater:Ljava/lang/Runnable;

    .line 78
    invoke-virtual {p0}, Lcom/miui/compass/PressureAltitude;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v0, "scale":F
    const v1, 0x4311b333    # 145.7f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/compass/PressureAltitude;->VIEW_WIDTH:I

    .line 80
    const v1, 0x4391b333    # 291.4f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/compass/PressureAltitude;->VIEW_HEIGHT:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/compass/PressureAltitude;->mValue:F

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/compass/PressureAltitude;->mFgPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v2, p0, Lcom/miui/compass/PressureAltitude;->mFgPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    if-eqz v1, :cond_0

    const v1, -0x74e0fe

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v1, p0, Lcom/miui/compass/PressureAltitude;->mFgPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v1, p0, Lcom/miui/compass/PressureAltitude;->mFgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/compass/PressureAltitude;->mBgPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/miui/compass/PressureAltitude;->mBgPaint:Landroid/graphics/Paint;

    const v2, -0xbcbcbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v1, p0, Lcom/miui/compass/PressureAltitude;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v1, p0, Lcom/miui/compass/PressureAltitude;->mBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    return-void

    .line 85
    :cond_0
    const v1, -0x7d7d7e

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/compass/PressureAltitude;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/PressureAltitude;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/compass/PressureAltitude;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/PressureAltitude;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/compass/PressureAltitude;->mValue:F

    return v0
.end method

.method static synthetic access$200(Lcom/miui/compass/PressureAltitude;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/PressureAltitude;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/compass/PressureAltitude;->mDrawingValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/compass/PressureAltitude;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/PressureAltitude;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/compass/PressureAltitude;->mDrawingValue:F

    return p1
.end method

.method static synthetic access$216(Lcom/miui/compass/PressureAltitude;F)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/PressureAltitude;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/compass/PressureAltitude;->mDrawingValue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/compass/PressureAltitude;->mDrawingValue:F

    return v0
.end method

.method static synthetic access$300(Lcom/miui/compass/PressureAltitude;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/PressureAltitude;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/compass/PressureAltitude;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/compass/PressureAltitude;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/PressureAltitude;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/compass/PressureAltitude;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getViewSize(II)I
    .locals 2
    .param p1, "measureSpec"    # I
    .param p2, "size"    # I

    .prologue
    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 102
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 103
    .local v0, "result":I
    sparse-switch v1, :sswitch_data_0

    .line 111
    :goto_0
    return v0

    .line 106
    :sswitch_0
    move v0, p2

    .line 107
    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/miui/compass/PressureAltitude;->getHeight()I

    move-result v10

    .line 130
    .local v10, "h":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/compass/PressureAltitude;->getWidth()I

    move-result v15

    .line 131
    .local v15, "w":I
    int-to-float v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    .line 132
    .local v9, "centerY":F
    const/4 v8, 0x0

    .line 133
    .local v8, "centerX":F
    add-int/lit8 v2, v15, -0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v13, v2

    .line 135
    .local v13, "radius":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    if-eqz v2, :cond_3

    const/high16 v12, 0x43960000    # 300.0f

    .line 136
    .local v12, "minV":F
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    if-eqz v2, :cond_4

    const v11, 0x44898000    # 1100.0f

    .line 138
    .local v11, "maxV":F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    if-eqz v2, :cond_0

    .line 140
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    div-int/lit8 v6, v15, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-int/lit8 v7, v10, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/compass/PressureAltitude;->mDrawingValue:F

    sub-float/2addr v2, v12

    sget v3, Lcom/miui/compass/PressureAltitude;->ANGLE_ALL:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v3, v11, v12

    div-float v5, v2, v3

    .line 144
    .local v5, "sweep":F
    sget v2, Lcom/miui/compass/PressureAltitude;->ANGLE_ALL:I

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_1

    .line 145
    sget v2, Lcom/miui/compass/PressureAltitude;->ANGLE_ALL:I

    int-to-float v5, v2

    .line 147
    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, v5, v2

    if-gez v2, :cond_5

    .line 148
    const/4 v5, 0x0

    move v14, v5

    .line 151
    .end local v5    # "sweep":F
    .local v14, "sweep":F
    :goto_2
    float-to-double v2, v14

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v2, v6

    if-lez v2, :cond_2

    .line 152
    new-instance v3, Landroid/graphics/RectF;

    sub-float v2, v8, v13

    sub-float v6, v9, v13

    add-float v7, v8, v13

    add-float v16, v9, v13

    move/from16 v0, v16

    invoke-direct {v3, v2, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x42880000    # 68.0f

    neg-float v5, v14

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/compass/PressureAltitude;->mFgPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 155
    :cond_2
    const/high16 v2, 0x42880000    # 68.0f

    sub-float/2addr v2, v14

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v4, v2, v3

    .line 156
    .local v4, "sA":F
    const/high16 v2, -0x3d5c0000    # -82.0f

    sub-float v5, v2, v4

    .line 157
    .end local v14    # "sweep":F
    .restart local v5    # "sweep":F
    new-instance v3, Landroid/graphics/RectF;

    sub-float v2, v8, v13

    sub-float v6, v9, v13

    add-float v7, v8, v13

    add-float v16, v9, v13

    move/from16 v0, v16

    invoke-direct {v3, v2, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/compass/PressureAltitude;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    return-void

    .line 135
    .end local v4    # "sA":F
    .end local v5    # "sweep":F
    .end local v11    # "maxV":F
    .end local v12    # "minV":F
    :cond_3
    const/high16 v12, -0x3c060000    # -500.0f

    goto/16 :goto_0

    .line 136
    .restart local v12    # "minV":F
    :cond_4
    const v11, 0x459c4000    # 5000.0f

    goto/16 :goto_1

    .restart local v5    # "sweep":F
    .restart local v11    # "maxV":F
    :cond_5
    move v14, v5

    .end local v5    # "sweep":F
    .restart local v14    # "sweep":F
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 97
    iget v0, p0, Lcom/miui/compass/PressureAltitude;->VIEW_WIDTH:I

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/PressureAltitude;->getViewSize(II)I

    move-result v0

    iget v1, p0, Lcom/miui/compass/PressureAltitude;->VIEW_HEIGHT:I

    invoke-direct {p0, p2, v1}, Lcom/miui/compass/PressureAltitude;->getViewSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/compass/PressureAltitude;->setMeasuredDimension(II)V

    .line 98
    return-void
.end method

.method public setIsPressure(Z)V
    .locals 2
    .param p1, "isPressure"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    .line 116
    if-eqz p1, :cond_0

    const/high16 v0, 0x43960000    # 300.0f

    :goto_0
    iput v0, p0, Lcom/miui/compass/PressureAltitude;->mDrawingValue:F

    .line 117
    iget-object v1, p0, Lcom/miui/compass/PressureAltitude;->mFgPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/miui/compass/PressureAltitude;->mIsPressure:Z

    if-eqz v0, :cond_1

    const v0, -0x74e0fe

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/high16 v0, -0x3c060000    # -500.0f

    goto :goto_0

    .line 117
    :cond_1
    const v0, -0x7d7d7e

    goto :goto_1
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/miui/compass/PressureAltitude;->mValue:F

    .line 122
    iget-object v0, p0, Lcom/miui/compass/PressureAltitude;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/compass/PressureAltitude;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
