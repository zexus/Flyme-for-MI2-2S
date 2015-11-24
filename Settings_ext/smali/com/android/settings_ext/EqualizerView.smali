.class public Lcom/android/settings_ext/EqualizerView;
.super Landroid/view/View;
.source "EqualizerView.java"


# static fields
.field public static kL:I

.field public static kM:I

.field public static kN:I

.field public static kO:I


# instance fields
.field private final kP:I

.field private final kQ:I

.field private final kR:F

.field private final kS:[F

.field private final kT:Landroid/graphics/Paint;

.field private kU:I

.field private kV:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x14

    sput v0, Lcom/android/settings_ext/EqualizerView;->kL:I

    .line 17
    const/16 v0, 0x4e20

    sput v0, Lcom/android/settings_ext/EqualizerView;->kM:I

    .line 18
    const v0, 0xac44

    sput v0, Lcom/android/settings_ext/EqualizerView;->kN:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ext/EqualizerView;->kO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const v1, 0xffae00

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    .line 34
    iput v2, p0, Lcom/android/settings_ext/EqualizerView;->kU:I

    .line 35
    iput v2, p0, Lcom/android/settings_ext/EqualizerView;->kV:I

    .line 41
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/EqualizerView;->setWillNotDraw(Z)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    sget-object v0, Lcom/android/settings_ext/fz;->uF:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/EqualizerView;->kP:I

    .line 46
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/EqualizerView;->kQ:I

    .line 47
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/EqualizerView;->kR:F

    .line 54
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings_ext/EqualizerView;->kP:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    return-void

    .line 49
    :cond_0
    iput v1, p0, Lcom/android/settings_ext/EqualizerView;->kP:I

    .line 50
    iput v2, p0, Lcom/android/settings_ext/EqualizerView;->kQ:I

    .line 51
    iput v3, p0, Lcom/android/settings_ext/EqualizerView;->kR:F

    goto :goto_0
.end method

.method private a(F)V
    .locals 4

    .prologue
    const v1, 0x3d4ccccd    # 0.05f

    const v0, 0x3c23d70a    # 0.01f

    const/4 v3, 0x0

    .line 172
    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    move p1, v0

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget v0, p0, Lcom/android/settings_ext/EqualizerView;->kQ:I

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings_ext/EqualizerView;->kR:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->kQ:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 181
    :cond_1
    return-void

    .line 174
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move p1, v1

    .line 175
    goto :goto_0
.end method

.method private b(F)F
    .locals 6

    .prologue
    .line 184
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 185
    sget v2, Lcom/android/settings_ext/EqualizerView;->kL:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 186
    sget v4, Lcom/android/settings_ext/EqualizerView;->kM:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 187
    sub-double/2addr v0, v2

    sub-double v2, v4, v2

    div-double/2addr v0, v2

    .line 188
    double-to-float v0, v0

    return v0
.end method

.method private c(F)F
    .locals 3

    .prologue
    .line 192
    iget v0, p0, Lcom/android/settings_ext/EqualizerView;->kV:I

    iget v1, p0, Lcom/android/settings_ext/EqualizerView;->kU:I

    sub-int/2addr v0, v1

    .line 193
    if-gtz v0, :cond_0

    .line 194
    const-string v0, "EqualizerView"

    const-string v1, "rank is unint"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/settings_ext/EqualizerView;->kU:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/settings_ext/EqualizerView;->kV:I

    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->kU:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 199
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method private d(F)F
    .locals 4

    .prologue
    .line 203
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d3a0000    # -99.0f

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/android/settings_ext/EqualizerView;->kU:I

    .line 63
    iput p2, p0, Lcom/android/settings_ext/EqualizerView;->kV:I

    .line 64
    return-void
.end method

.method public a([F)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ext/EqualizerView;->a([FI)V

    .line 90
    return-void
.end method

.method public a([FI)V
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    add-int v2, p2, v0

    aget v2, p1, v2

    sget v3, Lcom/android/settings_ext/EqualizerView;->kO:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/EqualizerView;->postInvalidate()V

    .line 97
    return-void
.end method

.method public getMaxLevel()I
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/android/settings_ext/EqualizerView;->kV:I

    sget v1, Lcom/android/settings_ext/EqualizerView;->kO:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMinLevel()I
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lcom/android/settings_ext/EqualizerView;->kU:I

    sget v1, Lcom/android/settings_ext/EqualizerView;->kO:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 102
    const/4 v0, 0x6

    new-array v9, v0, [Lcom/android/settings_ext/co;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/settings_ext/co;

    invoke-direct {v1}, Lcom/android/settings_ext/co;-><init>()V

    aput-object v1, v9, v0

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settings_ext/co;

    invoke-direct {v1}, Lcom/android/settings_ext/co;-><init>()V

    aput-object v1, v9, v0

    const/4 v0, 0x2

    new-instance v1, Lcom/android/settings_ext/co;

    invoke-direct {v1}, Lcom/android/settings_ext/co;-><init>()V

    aput-object v1, v9, v0

    const/4 v0, 0x3

    new-instance v1, Lcom/android/settings_ext/co;

    invoke-direct {v1}, Lcom/android/settings_ext/co;-><init>()V

    aput-object v1, v9, v0

    const/4 v0, 0x4

    new-instance v1, Lcom/android/settings_ext/co;

    invoke-direct {v1}, Lcom/android/settings_ext/co;-><init>()V

    aput-object v1, v9, v0

    const/4 v0, 0x5

    new-instance v1, Lcom/android/settings_ext/co;

    invoke-direct {v1}, Lcom/android/settings_ext/co;-><init>()V

    aput-object v1, v9, v0

    .line 115
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iget-object v2, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 116
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const/high16 v1, 0x42960000    # 75.0f

    sget v2, Lcom/android/settings_ext/EqualizerView;->kN:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ext/co;->a(FFFF)V

    .line 117
    const/4 v0, 0x1

    aget-object v0, v9, v0

    const/high16 v1, 0x432f0000    # 175.0f

    sget v2, Lcom/android/settings_ext/EqualizerView;->kN:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ext/co;->a(FFFF)V

    .line 118
    const/4 v0, 0x2

    aget-object v0, v9, v0

    const/high16 v1, 0x43af0000    # 350.0f

    sget v2, Lcom/android/settings_ext/EqualizerView;->kN:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ext/co;->a(FFFF)V

    .line 119
    const/4 v0, 0x3

    aget-object v0, v9, v0

    const/high16 v1, 0x44610000    # 900.0f

    sget v2, Lcom/android/settings_ext/EqualizerView;->kN:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ext/co;->a(FFFF)V

    .line 120
    const/4 v0, 0x4

    aget-object v0, v9, v0

    const v1, 0x44dac000    # 1750.0f

    sget v2, Lcom/android/settings_ext/EqualizerView;->kN:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ext/co;->a(FFFF)V

    .line 121
    const/4 v0, 0x5

    aget-object v0, v9, v0

    const v1, 0x455ac000    # 3500.0f

    sget v2, Lcom/android/settings_ext/EqualizerView;->kN:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings_ext/EqualizerView;->kS:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ext/co;->a(FFFF)V

    .line 125
    const/high16 v2, -0x40800000    # -1.0f

    .line 126
    const/4 v1, 0x0

    .line 127
    sget v0, Lcom/android/settings_ext/EqualizerView;->kL:I

    int-to-float v0, v0

    const v3, 0x3f933333    # 1.15f

    div-float/2addr v0, v3

    move v6, v0

    move v0, v1

    move v1, v2

    :goto_0
    sget v2, Lcom/android/settings_ext/EqualizerView;->kM:I

    int-to-float v2, v2

    const v3, 0x3f933333    # 1.15f

    mul-float/2addr v2, v3

    cmpg-float v2, v6, v2

    if-gez v2, :cond_4

    .line 128
    sget v2, Lcom/android/settings_ext/EqualizerView;->kN:I

    int-to-float v2, v2

    div-float v2, v6, v2

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 129
    new-instance v3, Lcom/android/settings_ext/cp;

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v2, v12

    invoke-direct {v3, v4, v2}, Lcom/android/settings_ext/cp;-><init>(FF)V

    .line 132
    invoke-virtual {v3, v10}, Lcom/android/settings_ext/cp;->e(F)Lcom/android/settings_ext/cp;

    move-result-object v2

    .line 133
    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v4, v3}, Lcom/android/settings_ext/co;->a(Lcom/android/settings_ext/cp;)Lcom/android/settings_ext/cp;

    move-result-object v4

    .line 134
    const/4 v5, 0x1

    aget-object v5, v9, v5

    invoke-virtual {v5, v3}, Lcom/android/settings_ext/co;->a(Lcom/android/settings_ext/cp;)Lcom/android/settings_ext/cp;

    move-result-object v5

    .line 135
    const/4 v7, 0x2

    aget-object v7, v9, v7

    invoke-virtual {v7, v3}, Lcom/android/settings_ext/co;->a(Lcom/android/settings_ext/cp;)Lcom/android/settings_ext/cp;

    move-result-object v7

    .line 136
    const/4 v8, 0x3

    aget-object v8, v9, v8

    invoke-virtual {v8, v3}, Lcom/android/settings_ext/co;->a(Lcom/android/settings_ext/cp;)Lcom/android/settings_ext/cp;

    move-result-object v8

    .line 137
    const/4 v11, 0x4

    aget-object v11, v9, v11

    invoke-virtual {v11, v3}, Lcom/android/settings_ext/co;->a(Lcom/android/settings_ext/cp;)Lcom/android/settings_ext/cp;

    move-result-object v11

    .line 138
    const/4 v12, 0x5

    aget-object v12, v9, v12

    invoke-virtual {v12, v3}, Lcom/android/settings_ext/co;->a(Lcom/android/settings_ext/cp;)Lcom/android/settings_ext/cp;

    move-result-object v3

    .line 141
    invoke-virtual {v2}, Lcom/android/settings_ext/cp;->dp()F

    move-result v2

    invoke-virtual {v4}, Lcom/android/settings_ext/cp;->dp()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v5}, Lcom/android/settings_ext/cp;->dp()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v7}, Lcom/android/settings_ext/cp;->dp()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v8}, Lcom/android/settings_ext/cp;->dp()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v11}, Lcom/android/settings_ext/cp;->dp()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v3}, Lcom/android/settings_ext/cp;->dp()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/settings_ext/EqualizerView;->d(F)F

    move-result v2

    .line 142
    invoke-direct {p0, v2}, Lcom/android/settings_ext/EqualizerView;->c(F)F

    move-result v2

    iget v3, p0, Lcom/android/settings_ext/EqualizerView;->mHeight:I

    int-to-float v3, v3

    mul-float v7, v2, v3

    .line 143
    invoke-direct {p0, v6}, Lcom/android/settings_ext/EqualizerView;->b(F)F

    move-result v2

    iget v3, p0, Lcom/android/settings_ext/EqualizerView;->mWidth:I

    int-to-float v3, v3

    mul-float v8, v2, v3

    .line 144
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 145
    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->mWidth:I

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    .line 146
    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    .line 147
    div-float v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/EqualizerView;->a(F)V

    .line 160
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingTop:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingLeft:I

    int-to-float v0, v0

    add-float v3, v0, v8

    iget v0, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingTop:I

    int-to-float v0, v0

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    :cond_1
    const v0, 0x3f933333    # 1.15f

    mul-float/2addr v0, v6

    move v6, v0

    move v1, v8

    move v0, v7

    goto/16 :goto_0

    .line 149
    :cond_2
    iget v3, p0, Lcom/android/settings_ext/EqualizerView;->mWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 150
    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    .line 151
    div-float v2, v3, v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/EqualizerView;->a(F)V

    goto :goto_1

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->kQ:I

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/settings_ext/EqualizerView;->kT:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ext/EqualizerView;->kR:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v11, p0, Lcom/android/settings_ext/EqualizerView;->kQ:I

    invoke-virtual {v2, v3, v4, v5, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 169
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 79
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingLeft:I

    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingRight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ext/EqualizerView;->mWidth:I

    .line 80
    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingTop:I

    iget v2, p0, Lcom/android/settings_ext/EqualizerView;->mPaddingBottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ext/EqualizerView;->mHeight:I

    .line 81
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ext/EqualizerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    return-void
.end method
