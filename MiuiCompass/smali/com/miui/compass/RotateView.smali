.class public Lcom/miui/compass/RotateView;
.super Landroid/view/View;
.source "RotateView.java"


# instance fields
.field private final ANGLE_BALL_FIRST_LOCATION:I

.field private final BIG_CIRCLE_COLOR:I

.field private final CIRCLE_RADIUS:F

.field private final DIMEN_BIG_CIRCLE_STROKE_WIDTH:I

.field private final DIMEN_SPACE_OF_CIRCLES:I

.field private final FIRST_DELAY_UPDATE_TIME:I

.field private final FOOT_PRINT_COLOR:I

.field private final INDICATOR_BALL_COLOR:I

.field private final INDICATOR_CIRCLE_RADIUS:I

.field private final LARGE_CIRCLE_RADIUS:F

.field private final LEAST_TILT_ANGLE:I

.field private final LIMITED_ANGULAR_DIFF_ANGLE_UPDATE:I

.field private final LIMITED_TIME_INTERVAL_ANGLE_UPDATE:I

.field private final OVAL:Landroid/graphics/RectF;

.field private mBigCirclePaint:Landroid/graphics/Paint;

.field private mCircleX:F

.field private mCircleY:F

.field private mFirstUpdateTime:J

.field private mFootprintPaint:Landroid/graphics/Paint;

.field private mIndicatorBallPaint:Landroid/graphics/Paint;

.field private mLastAddAngleTime:J

.field private mLastSituatedAngle:I

.field private mRolledAngles:[Z

.field private mRolledAnglesCount:I

.field private mVY:F

.field private mVZ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/compass/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-wide v2, 0x3ff0c152382d7365L    # 1.0471975511965976

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/miui/compass/RotateView;->FIRST_DELAY_UPDATE_TIME:I

    .line 22
    const/16 v0, 0x1e

    iput v0, p0, Lcom/miui/compass/RotateView;->DIMEN_SPACE_OF_CIRCLES:I

    .line 23
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/compass/RotateView;->DIMEN_BIG_CIRCLE_STROKE_WIDTH:I

    .line 25
    const/16 v0, 0x3c

    iput v0, p0, Lcom/miui/compass/RotateView;->ANGLE_BALL_FIRST_LOCATION:I

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/compass/RotateView;->LEAST_TILT_ANGLE:I

    .line 28
    const/16 v0, 0x46

    iput v0, p0, Lcom/miui/compass/RotateView;->LIMITED_TIME_INTERVAL_ANGLE_UPDATE:I

    .line 29
    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/compass/RotateView;->LIMITED_ANGULAR_DIFF_ANGLE_UPDATE:I

    .line 71
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/compass/RotateView;->BIG_CIRCLE_COLOR:I

    .line 72
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/compass/RotateView;->FOOT_PRINT_COLOR:I

    .line 73
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/compass/RotateView;->INDICATOR_BALL_COLOR:I

    .line 74
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/compass/RotateView;->INDICATOR_CIRCLE_RADIUS:I

    .line 75
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/compass/RotateView;->CIRCLE_RADIUS:F

    .line 76
    iget v0, p0, Lcom/miui/compass/RotateView;->CIRCLE_RADIUS:F

    iget v1, p0, Lcom/miui/compass/RotateView;->INDICATOR_CIRCLE_RADIUS:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/compass/RotateView;->LARGE_CIRCLE_RADIUS:F

    .line 78
    const/16 v0, 0x168

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/miui/compass/RotateView;->mRolledAngles:[Z

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/RotateView;->OVAL:Landroid/graphics/RectF;

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/compass/RotateView;->mVZ:F

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/compass/RotateView;->mVY:F

    .line 82
    invoke-direct {p0}, Lcom/miui/compass/RotateView;->initPaint()V

    .line 83
    invoke-direct {p0}, Lcom/miui/compass/RotateView;->clearRolledAngels()V

    .line 84
    return-void
.end method

.method private addToFootprintAngles(I)V
    .locals 10
    .param p1, "angle"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/miui/compass/RotateView;->saveAngle(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/miui/compass/RotateView;->mLastAddAngleTime:J

    sub-long v2, v6, v8

    .line 148
    .local v2, "diffTime":J
    iget v6, p0, Lcom/miui/compass/RotateView;->mLastSituatedAngle:I

    sub-int v1, p1, v6

    .line 149
    .local v1, "diffAngle":I
    const/4 v0, 0x0

    .line 150
    .local v0, "appendAngle":Z
    const-wide/16 v6, 0x46

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 151
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 152
    const/16 v6, 0x14

    if-ge v1, v6, :cond_0

    .line 153
    iget v6, p0, Lcom/miui/compass/RotateView;->mLastSituatedAngle:I

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 154
    .local v5, "tempBaseAngle":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 155
    add-int v6, v5, v4

    rem-int/lit16 v6, v6, 0x168

    invoke-direct {p0, v6}, Lcom/miui/compass/RotateView;->saveAngle(I)Z

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "i":I
    .end local v5    # "tempBaseAngle":I
    :cond_0
    const/16 v6, 0x154

    if-le v1, v6, :cond_1

    .line 158
    iget v6, p0, Lcom/miui/compass/RotateView;->mLastSituatedAngle:I

    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 159
    .restart local v5    # "tempBaseAngle":I
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    rsub-int v6, v1, 0x168

    if-ge v4, v6, :cond_2

    .line 160
    add-int v6, v5, v4

    rem-int/lit16 v6, v6, 0x168

    invoke-direct {p0, v6}, Lcom/miui/compass/RotateView;->saveAngle(I)Z

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v4    # "i":I
    .end local v5    # "tempBaseAngle":I
    :cond_1
    const/4 v0, 0x1

    .line 168
    :cond_2
    :goto_2
    if-eqz v0, :cond_4

    .line 169
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    const/4 v6, 0x5

    if-ge v4, v6, :cond_4

    .line 170
    add-int v6, p1, v4

    rem-int/lit16 v6, v6, 0x168

    invoke-direct {p0, v6}, Lcom/miui/compass/RotateView;->saveAngle(I)Z

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 166
    .end local v4    # "i":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 173
    :cond_4
    iput p1, p0, Lcom/miui/compass/RotateView;->mLastSituatedAngle:I

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/compass/RotateView;->mLastAddAngleTime:J

    .line 176
    .end local v0    # "appendAngle":Z
    .end local v1    # "diffAngle":I
    .end local v2    # "diffTime":J
    :cond_5
    return-void
.end method

.method private calculateAngle()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 180
    iget v1, p0, Lcom/miui/compass/RotateView;->mVZ:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_2

    .line 181
    iget v1, p0, Lcom/miui/compass/RotateView;->mVY:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    const/16 v0, 0x5a

    .line 190
    .local v0, "angle":I
    :cond_0
    :goto_0
    rem-int/lit16 v0, v0, 0x168

    .line 191
    return v0

    .line 181
    .end local v0    # "angle":I
    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    .line 183
    :cond_2
    iget v1, p0, Lcom/miui/compass/RotateView;->mVY:F

    iget v2, p0, Lcom/miui/compass/RotateView;->mVZ:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 184
    .restart local v0    # "angle":I
    iget v1, p0, Lcom/miui/compass/RotateView;->mVZ:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    .line 185
    add-int/lit16 v0, v0, 0xb4

    goto :goto_0

    .line 186
    :cond_3
    iget v1, p0, Lcom/miui/compass/RotateView;->mVY:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 187
    add-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method private clearRolledAngels()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x168

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/miui/compass/RotateView;->mRolledAngles:[Z

    aput-boolean v2, v1, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iput v2, p0, Lcom/miui/compass/RotateView;->mRolledAnglesCount:I

    .line 239
    return-void
.end method

.method private drawBigCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    iget v0, p0, Lcom/miui/compass/RotateView;->mCircleX:F

    iget v1, p0, Lcom/miui/compass/RotateView;->mCircleY:F

    iget v2, p0, Lcom/miui/compass/RotateView;->LARGE_CIRCLE_RADIUS:F

    iget-object v3, p0, Lcom/miui/compass/RotateView;->mBigCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method private drawFootprints(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v9, 0x168

    .line 133
    const/4 v7, -0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    .line 134
    :cond_0
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v9, :cond_1

    iget-object v0, p0, Lcom/miui/compass/RotateView;->mRolledAngles:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_0

    .line 135
    :cond_1
    if-ne v7, v9, :cond_3

    .line 143
    :cond_2
    return-void

    .line 138
    :cond_3
    move v8, v7

    .line 139
    .local v8, "startAngle":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v9, :cond_5

    iget-object v0, p0, Lcom/miui/compass/RotateView;->mRolledAngles:[Z

    aget-boolean v0, v0, v7

    if-nez v0, :cond_4

    .line 140
    :cond_5
    move v6, v7

    .line 141
    .local v6, "endAngle":I
    iget-object v1, p0, Lcom/miui/compass/RotateView;->OVAL:Landroid/graphics/RectF;

    int-to-float v2, v8

    sub-int v0, v6, v8

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/compass/RotateView;->mFootprintPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawIndicatorBall(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    iget v2, p0, Lcom/miui/compass/RotateView;->CIRCLE_RADIUS:F

    iget v3, p0, Lcom/miui/compass/RotateView;->mVZ:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/compass/RotateView;->mCircleX:F

    add-float v0, v2, v3

    .line 128
    .local v0, "cx":F
    iget v2, p0, Lcom/miui/compass/RotateView;->mVY:F

    iget v3, p0, Lcom/miui/compass/RotateView;->CIRCLE_RADIUS:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/compass/RotateView;->mCircleY:F

    add-float v1, v2, v3

    .line 129
    .local v1, "cy":F
    iget v2, p0, Lcom/miui/compass/RotateView;->INDICATOR_CIRCLE_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/compass/RotateView;->mIndicatorBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method private initPaint()V
    .locals 4

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/4 v2, 0x1

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/RotateView;->mBigCirclePaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mBigCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mBigCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/compass/RotateView;->BIG_CIRCLE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mBigCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mBigCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/RotateView;->mFootprintPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mFootprintPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mFootprintPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/compass/RotateView;->FOOT_PRINT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mFootprintPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mFootprintPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/RotateView;->mIndicatorBallPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mIndicatorBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mIndicatorBallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/compass/RotateView;->INDICATOR_BALL_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/compass/RotateView;->mIndicatorBallPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    return-void
.end method

.method private saveAngle(I)Z
    .locals 3
    .param p1, "angle"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "added":Z
    iget-object v1, p0, Lcom/miui/compass/RotateView;->mRolledAngles:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/miui/compass/RotateView;->mRolledAngles:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 198
    iget v1, p0, Lcom/miui/compass/RotateView;->mRolledAnglesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/compass/RotateView;->mRolledAnglesCount:I

    .line 199
    const/4 v0, 0x1

    .line 201
    :cond_0
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/miui/compass/RotateView;->drawBigCircle(Landroid/graphics/Canvas;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/miui/compass/RotateView;->drawIndicatorBall(Landroid/graphics/Canvas;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/compass/RotateView;->drawFootprints(Landroid/graphics/Canvas;)V

    .line 120
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/compass/RotateView;->mCircleX:F

    .line 109
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/compass/RotateView;->mCircleY:F

    .line 110
    iget-object v0, p0, Lcom/miui/compass/RotateView;->OVAL:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/compass/RotateView;->mCircleX:F

    iget v2, p0, Lcom/miui/compass/RotateView;->LARGE_CIRCLE_RADIUS:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/compass/RotateView;->mCircleY:F

    iget v3, p0, Lcom/miui/compass/RotateView;->LARGE_CIRCLE_RADIUS:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/compass/RotateView;->mCircleX:F

    iget v4, p0, Lcom/miui/compass/RotateView;->LARGE_CIRCLE_RADIUS:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/miui/compass/RotateView;->mCircleY:F

    iget v5, p0, Lcom/miui/compass/RotateView;->LARGE_CIRCLE_RADIUS:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    const-wide v2, 0x3ff0c152382d7365L    # 1.0471975511965976

    .line 242
    iput-wide v0, p0, Lcom/miui/compass/RotateView;->mFirstUpdateTime:J

    .line 243
    iput-wide v0, p0, Lcom/miui/compass/RotateView;->mLastAddAngleTime:J

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/compass/RotateView;->mVZ:F

    .line 245
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/compass/RotateView;->mVY:F

    .line 246
    invoke-direct {p0}, Lcom/miui/compass/RotateView;->clearRolledAngels()V

    .line 247
    return-void
.end method

.method public update(FF)V
    .locals 12
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 205
    iget-wide v8, p0, Lcom/miui/compass/RotateView;->mFirstUpdateTime:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/compass/RotateView;->mFirstUpdateTime:J

    .line 208
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/miui/compass/RotateView;->mFirstUpdateTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7d0

    cmp-long v3, v8, v10

    if-lez v3, :cond_3

    .line 209
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    neg-float p1, v3

    .line 210
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    neg-float p2, v3

    .line 211
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, p1, v3

    float-to-double v4, v3

    .line 212
    .local v4, "vY":D
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, p2, v3

    float-to-double v6, v3

    .line 213
    .local v6, "vZ":D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 214
    .local v0, "length2":D
    const-wide/16 v8, 0x0

    cmpl-double v3, v0, v8

    if-nez v3, :cond_4

    .line 215
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/compass/RotateView;->mVY:F

    .line 216
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/miui/compass/RotateView;->mVZ:F

    .line 221
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v3, v3, v8

    if-gez v3, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_2

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/miui/compass/RotateView;->calculateAngle()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/compass/RotateView;->addToFootprintAngles(I)V

    .line 225
    :cond_2
    iget v3, p0, Lcom/miui/compass/RotateView;->mRolledAnglesCount:I

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v2, v3, 0x168

    .line 226
    .local v2, "percent":I
    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v8, 0x7f08002d

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-direct {p0}, Lcom/miui/compass/RotateView;->clearRolledAngels()V

    .line 231
    .end local v0    # "length2":D
    .end local v2    # "percent":I
    .end local v4    # "vY":D
    .end local v6    # "vZ":D
    :cond_3
    invoke-virtual {p0}, Lcom/miui/compass/RotateView;->invalidate()V

    .line 232
    return-void

    .line 218
    .restart local v0    # "length2":D
    .restart local v4    # "vY":D
    .restart local v6    # "vZ":D
    :cond_4
    div-double v8, v4, v0

    double-to-float v3, v8

    iput v3, p0, Lcom/miui/compass/RotateView;->mVY:F

    .line 219
    div-double v8, v6, v0

    double-to-float v3, v8

    iput v3, p0, Lcom/miui/compass/RotateView;->mVZ:F

    goto :goto_0
.end method
