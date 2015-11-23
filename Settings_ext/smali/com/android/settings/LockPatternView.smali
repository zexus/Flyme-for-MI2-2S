.class public Lcom/android/settings_ext/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# instance fields
.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private nA:Z

.field private nB:Z

.field private nC:Z

.field private nD:Z

.field private nE:F

.field private nF:I

.field private nG:F

.field private nH:F

.field private nI:F

.field private nJ:Landroid/graphics/Bitmap;

.field private nK:Landroid/graphics/Bitmap;

.field private final nL:Landroid/graphics/Path;

.field private final nM:Landroid/graphics/Rect;

.field private nN:I

.field private nO:I

.field private nP:I

.field private final nQ:Landroid/graphics/Matrix;

.field private nq:Z

.field private nr:Landroid/graphics/Paint;

.field private ns:Landroid/graphics/Paint;

.field private nt:Lcom/android/settings_ext/cR;

.field private nu:Ljava/util/ArrayList;

.field private nv:[[Z

.field private nw:F

.field private nx:F

.field private ny:J

.field private nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 207
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v3, p0, Lcom/android/settings_ext/LockPatternView;->nq:Z

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    .line 75
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nv:[[Z

    .line 82
    iput v4, p0, Lcom/android/settings_ext/LockPatternView;->nw:F

    .line 83
    iput v4, p0, Lcom/android/settings_ext/LockPatternView;->nx:F

    .line 87
    sget-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 88
    iput-boolean v2, p0, Lcom/android/settings_ext/LockPatternView;->nA:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/settings_ext/LockPatternView;->nB:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/settings_ext/LockPatternView;->nC:Z

    .line 91
    iput-boolean v3, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    .line 93
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nE:F

    .line 94
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nF:I

    .line 95
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nG:F

    .line 103
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nL:Landroid/graphics/Path;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nM:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 111
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nQ:Landroid/graphics/Matrix;

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/LockPatternView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/LockPatternView;->setClickable(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->nF:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->nF:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 226
    return-void
.end method

.method private F(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 229
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private G(I)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 644
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/LockPatternView;->sendAccessibilityEvent(I)V

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 646
    return-void
.end method

.method private H(I)F
    .locals 3

    .prologue
    .line 688
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private I(I)F
    .locals 3

    .prologue
    .line 692
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nI:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->nI:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private a(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/LockPatternView;->b(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v5

    .line 461
    if-eqz v5, :cond_5

    .line 465
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 467
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 468
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    sub-int v6, v1, v4

    .line 469
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    sub-int v7, v1, v4

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    .line 474
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    if-lez v6, :cond_6

    move v1, v2

    :goto_0
    add-int/2addr v1, v8

    .line 478
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_7

    .line 479
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    if-lez v7, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    .line 482
    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 485
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nv:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 487
    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 489
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 490
    iget-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nC:Z

    if-eqz v0, :cond_4

    .line 491
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ext/LockPatternView;->performHapticFeedback(II)Z

    :cond_4
    move-object v0, v5

    .line 497
    :cond_5
    return-object v0

    :cond_6
    move v1, v3

    .line 475
    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 167
    sget-object v1, Lcom/android/settings_ext/fz;->LockPatternView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string v3, "square"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nP:I

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/settings_ext/LockPatternView;->nE:F

    .line 185
    const/4 v2, 0x4

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ext/LockPatternView;->nF:I

    .line 187
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/LockPatternView;->F(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nJ:Landroid/graphics/Bitmap;

    .line 188
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 189
    if-ne v4, v1, :cond_5

    .line 190
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nJ:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nK:Landroid/graphics/Bitmap;

    .line 196
    :goto_1
    new-array v1, v6, [Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nK:Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nJ:Landroid/graphics/Bitmap;

    aput-object v2, v1, v5

    .line 198
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 199
    if-eqz v3, :cond_0

    .line 200
    iget v4, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    .line 201
    iget v4, p0, Lcom/android/settings_ext/LockPatternView;->nO:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ext/LockPatternView;->nO:I

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 172
    :cond_1
    const-string v3, "lock_width"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iput v5, p0, Lcom/android/settings_ext/LockPatternView;->nP:I

    goto :goto_0

    .line 174
    :cond_2
    const-string v3, "lock_height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    iput v6, p0, Lcom/android/settings_ext/LockPatternView;->nP:I

    goto :goto_0

    .line 176
    :cond_3
    const-string v3, "fixed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    iput v7, p0, Lcom/android/settings_ext/LockPatternView;->nP:I

    goto/16 :goto_0

    .line 179
    :cond_4
    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nP:I

    goto/16 :goto_0

    .line 192
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings_ext/LockPatternView;->F(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nK:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 204
    :cond_6
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIZ)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 824
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nB:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_2

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nJ:Landroid/graphics/Bitmap;

    .line 841
    :goto_0
    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    .line 842
    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nO:I

    .line 844
    iget v3, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    .line 845
    iget v4, p0, Lcom/android/settings_ext/LockPatternView;->nI:F

    .line 847
    int-to-float v1, v1

    sub-float v1, v3, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 848
    int-to-float v2, v2

    sub-float v2, v4, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 851
    iget v3, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    iget v4, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 852
    iget v4, p0, Lcom/android/settings_ext/LockPatternView;->nI:F

    iget v5, p0, Lcom/android/settings_ext/LockPatternView;->nO:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 854
    iget-object v5, p0, Lcom/android/settings_ext/LockPatternView;->nQ:Landroid/graphics/Matrix;

    add-int/2addr v1, p2

    int-to-float v1, v1

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 855
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nQ:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/settings_ext/LockPatternView;->nO:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 856
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nQ:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 857
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nQ:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings_ext/LockPatternView;->nO:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 859
    if-eqz v0, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 862
    :cond_1
    return-void

    .line 827
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    if-eqz v0, :cond_3

    .line 829
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nJ:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 830
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_4

    .line 832
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nK:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 833
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_6

    .line 836
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nJ:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 838
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 621
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v2, v0, :cond_4

    .line 622
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v1, v0

    .line 623
    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    .line 624
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/LockPatternView;->a(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 625
    iget-object v5, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 626
    if-eqz v4, :cond_0

    if-ne v5, v7, :cond_0

    .line 627
    iput-boolean v7, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    .line 628
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ee()V

    .line 631
    :cond_0
    iget v4, p0, Lcom/android/settings_ext/LockPatternView;->nw:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 632
    iget v5, p0, Lcom/android/settings_ext/LockPatternView;->nx:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 634
    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 635
    iput v1, p0, Lcom/android/settings_ext/LockPatternView;->nw:F

    .line 636
    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nx:F

    .line 637
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->invalidate()V

    .line 621
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 622
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v1, v0

    goto :goto_1

    .line 623
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_2

    .line 640
    :cond_4
    return-void
.end method

.method private a(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nv:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 502
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ed()V

    .line 504
    return-void
.end method

.method private b(II)I
    .locals 2

    .prologue
    .line 400
    .line 401
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 402
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    .line 413
    :goto_0
    :sswitch_0
    return p2

    .line 407
    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-direct {p0, p2}, Lcom/android/settings_ext/LockPatternView;->g(F)I

    move-result v1

    .line 510
    if-gez v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-object v0

    .line 513
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ext/LockPatternView;->h(F)I

    move-result v2

    .line 514
    if-ltz v2, :cond_0

    .line 518
    iget-object v3, p0, Lcom/android/settings_ext/LockPatternView;->nv:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 521
    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    .line 652
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ef()V

    .line 653
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->invalidate()V

    .line 661
    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->eh()V

    .line 665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/LockPatternView;->a(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    .line 668
    if-eqz v2, :cond_0

    .line 669
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    .line 670
    sget-object v2, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 671
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ee()V

    .line 672
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->invalidate()V

    .line 677
    :goto_0
    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nw:F

    .line 678
    iput v1, p0, Lcom/android/settings_ext/LockPatternView;->nx:F

    .line 685
    return-void

    .line 674
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    .line 675
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->eg()V

    goto :goto_0
.end method

.method private ed()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/settings_ext/cR;->onPatternCellAdded(Ljava/util/List;)V

    .line 322
    :cond_0
    const v0, 0x11070086

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->G(I)V

    .line 323
    return-void
.end method

.method private ee()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    invoke-interface {v0}, Lcom/android/settings_ext/cR;->onPatternStart()V

    .line 329
    :cond_0
    const v0, 0x11070084

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->G(I)V

    .line 330
    return-void
.end method

.method private ef()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/settings_ext/cR;->onPatternDetected(Ljava/util/List;)V

    .line 336
    :cond_0
    const v0, 0x11070087

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->G(I)V

    .line 337
    return-void
.end method

.method private eg()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    invoke-interface {v0}, Lcom/android/settings_ext/cR;->onPatternCleared()V

    .line 343
    :cond_0
    const v0, 0x11070085

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->G(I)V

    .line 344
    return-void
.end method

.method private eh()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ei()V

    .line 359
    sget-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 360
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->invalidate()V

    .line 361
    return-void
.end method

.method private ei()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 367
    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 368
    :goto_1
    if-ge v0, v4, :cond_0

    .line 369
    iget-object v3, p0, Lcom/android/settings_ext/LockPatternView;->nv:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 372
    :cond_1
    return-void
.end method

.method private g(F)I
    .locals 6

    .prologue
    .line 531
    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->nI:F

    .line 532
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->nG:F

    mul-float v2, v1, v0

    .line 534
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 535
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 537
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 538
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 542
    :goto_1
    return v0

    .line 535
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private h(F)I
    .locals 6

    .prologue
    .line 551
    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    .line 552
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->nG:F

    mul-float v2, v1, v0

    .line 554
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 555
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 557
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 558
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 562
    :goto_1
    return v0

    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/LockPatternView$DisplayMode;)V
    .locals 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 304
    sget-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ext/LockPatternView;->ny:J

    .line 310
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 311
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/LockPatternView;->H(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/LockPatternView;->nw:F

    .line 312
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->I(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nx:F

    .line 313
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ei()V

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->invalidate()V

    .line 316
    return-void
.end method

.method public a(Lcom/android/settings_ext/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ei()V

    .line 289
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 290
    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nv:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/LockPatternView$DisplayMode;)V

    .line 294
    return-void
.end method

.method public a(Lcom/android/settings_ext/cR;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings_ext/LockPatternView;->nt:Lcom/android/settings_ext/cR;

    .line 277
    return-void
.end method

.method public clearPattern()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->eh()V

    .line 351
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nA:Z

    .line 380
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nA:Z

    .line 387
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->nN:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 697
    iget-object v4, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    .line 698
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 699
    iget-object v6, p0, Lcom/android/settings_ext/LockPatternView;->nv:[[Z

    .line 701
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    .line 706
    add-int/lit8 v0, v5, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/settings_ext/LockPatternView;->ny:J

    sub-long/2addr v2, v8

    long-to-int v1, v2

    rem-int v2, v1, v0

    .line 709
    div-int/lit16 v3, v2, 0x2bc

    .line 711
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->ei()V

    .line 712
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 713
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 714
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    aget-object v7, v6, v7

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v8, 0x1

    aput-boolean v8, v7, v0

    .line 712
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 719
    :cond_0
    if-lez v3, :cond_3

    if-ge v3, v5, :cond_3

    const/4 v0, 0x1

    .line 722
    :goto_1
    if-eqz v0, :cond_1

    .line 723
    rem-int/lit16 v0, v2, 0x2bc

    int-to-float v0, v0

    const/high16 v1, 0x442f0000    # 700.0f

    div-float v1, v0, v1

    .line 727
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 728
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/LockPatternView;->H(I)F

    move-result v2

    .line 729
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->I(I)F

    move-result v7

    .line 731
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 732
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/LockPatternView;->H(I)F

    move-result v3

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    .line 734
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->I(I)F

    move-result v0

    sub-float/2addr v0, v7

    mul-float/2addr v0, v1

    .line 736
    add-float v1, v2, v3

    iput v1, p0, Lcom/android/settings_ext/LockPatternView;->nw:F

    .line 737
    add-float/2addr v0, v7

    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nx:F

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->invalidate()V

    .line 743
    :cond_2
    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    .line 744
    iget v3, p0, Lcom/android/settings_ext/LockPatternView;->nI:F

    .line 746
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->nE:F

    mul-float/2addr v0, v2

    .line 747
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 748
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 750
    iget-object v7, p0, Lcom/android/settings_ext/LockPatternView;->nL:Landroid/graphics/Path;

    .line 751
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 754
    iget v8, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingTop:I

    .line 755
    iget v9, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingLeft:I

    .line 757
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x3

    if-ge v1, v0, :cond_5

    .line 758
    int-to-float v0, v8

    int-to-float v10, v1

    mul-float/2addr v10, v3

    add-float/2addr v10, v0

    .line 760
    const/4 v0, 0x0

    :goto_3
    const/4 v11, 0x3

    if-ge v0, v11, :cond_4

    .line 761
    int-to-float v11, v9

    int-to-float v12, v0

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    .line 762
    float-to-int v11, v11

    float-to-int v12, v10

    aget-object v13, v6, v1

    aget-boolean v13, v13, v0

    invoke-direct {p0, p1, v11, v12, v13}, Lcom/android/settings_ext/LockPatternView;->a(Landroid/graphics/Canvas;IIZ)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 719
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 757
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 770
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nB:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_b

    :cond_6
    const/4 v0, 0x1

    .line 774
    :goto_4
    iget-object v1, p0, Lcom/android/settings_ext/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 775
    :goto_5
    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 777
    if-eqz v0, :cond_a

    .line 778
    const/4 v2, 0x0

    .line 779
    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_6
    if-ge v2, v5, :cond_7

    .line 780
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 785
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    aget-object v8, v6, v8

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v9

    aget-boolean v8, v8, v9

    if-nez v8, :cond_d

    .line 800
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-ne v0, v2, :cond_9

    :cond_8
    if-eqz v3, :cond_9

    .line 802
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->nw:F

    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nx:F

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 804
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    if-eq v0, v2, :cond_f

    .line 805
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nr:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 812
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 813
    return-void

    .line 770
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 774
    :cond_c
    const/4 v1, 0x0

    goto :goto_5

    .line 788
    :cond_d
    const/4 v3, 0x1

    .line 790
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings_ext/LockPatternView;->H(I)F

    move-result v8

    .line 791
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->I(I)F

    move-result v0

    .line 792
    if-nez v2, :cond_e

    .line 793
    invoke-virtual {v7, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 779
    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 795
    :cond_e
    invoke-virtual {v7, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    .line 807
    :cond_f
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->ns:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings_ext/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 569
    packed-switch v0, :pswitch_data_0

    .line 580
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 583
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 571
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 574
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 577
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 431
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 432
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/LockPatternView;->b(II)I

    move-result v1

    .line 433
    invoke-direct {p0, p2, v2}, Lcom/android/settings_ext/LockPatternView;->b(II)I

    move-result v0

    .line 435
    iget v2, p0, Lcom/android/settings_ext/LockPatternView;->nP:I

    packed-switch v2, :pswitch_data_0

    .line 449
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/LockPatternView;->setMeasuredDimension(II)V

    .line 450
    return-void

    .line 437
    :pswitch_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 438
    goto :goto_0

    .line 440
    :pswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 443
    :pswitch_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 446
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 875
    check-cast p1, Lcom/android/settings_ext/LockPatternView$SavedState;

    .line 876
    invoke-virtual {p1}, Lcom/android/settings_ext/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 877
    sget-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {p1}, Lcom/android/settings_ext/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 880
    invoke-static {}, Lcom/android/settings_ext/LockPatternView$DisplayMode;->values()[Lcom/android/settings_ext/LockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings_ext/LockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 881
    invoke-virtual {p1}, Lcom/android/settings_ext/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nA:Z

    .line 882
    invoke-virtual {p1}, Lcom/android/settings_ext/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nB:Z

    .line 883
    invoke-virtual {p1}, Lcom/android/settings_ext/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/LockPatternView;->nC:Z

    .line 885
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/LockPatternView;->b(Landroid/view/MotionEvent;)V

    .line 886
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 866
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 867
    new-instance v0, Lcom/android/settings_ext/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/settings_ext/LockPatternView;->nu:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/LockPatternView;->nz:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/settings_ext/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/settings_ext/LockPatternView;->nA:Z

    iget-boolean v5, p0, Lcom/android/settings_ext/LockPatternView;->nB:Z

    iget-boolean v6, p0, Lcom/android/settings_ext/LockPatternView;->nC:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/settings_ext/cQ;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 391
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 392
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nH:F

    .line 394
    iget v0, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/settings_ext/LockPatternView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 395
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings_ext/LockPatternView;->nI:F

    .line 396
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 588
    iget-boolean v2, p0, Lcom/android/settings_ext/LockPatternView;->nA:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ext/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 614
    :goto_0
    return v0

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 614
    goto :goto_0

    .line 594
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings_ext/LockPatternView;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 597
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings_ext/LockPatternView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 600
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings_ext/LockPatternView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 603
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->eh()V

    .line 604
    iput-boolean v1, p0, Lcom/android/settings_ext/LockPatternView;->nD:Z

    .line 605
    invoke-direct {p0}, Lcom/android/settings_ext/LockPatternView;->eg()V

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/android/settings_ext/LockPatternView;->nB:Z

    .line 258
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/settings_ext/LockPatternView;->nC:Z

    .line 268
    return-void
.end method
