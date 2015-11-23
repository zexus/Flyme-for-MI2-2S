.class public Lcom/android/settings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# instance fields
.field private apA:Landroid/graphics/Rect;

.field private apB:Landroid/graphics/Point;

.field private apC:Landroid/graphics/Rect;

.field private apD:F

.field private apE:I

.field private apF:I

.field private apG:F

.field private apH:I

.field private apI:Landroid/text/SpannableStringBuilder;

.field private apJ:Landroid/text/DynamicLayout;

.field private apK:Lcom/android/settings/widget/a;

.field private apL:J

.field private apM:J

.field private apN:J

.field private apO:Lcom/android/settings/widget/ChartSweepView;

.field private apP:Lcom/android/settings/widget/ChartSweepView;

.field private apQ:F

.field private apR:Landroid/graphics/Paint;

.field private apS:J

.field private apT:Lcom/android/settings/widget/h;

.field private apU:F

.field private apV:Landroid/view/MotionEvent;

.field private apW:[Lcom/android/settings/widget/ChartSweepView;

.field private apf:I

.field private apr:I

.field private apy:Landroid/graphics/drawable/Drawable;

.field private apz:Landroid/graphics/Rect;

.field private bA:Landroid/view/View$OnClickListener;

.field private mTouchMode:I

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apR:Landroid/graphics/Paint;

    .line 90
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    .line 98
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->apS:J

    .line 110
    new-array v0, v3, [Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apW:[Lcom/android/settings/widget/ChartSweepView;

    .line 151
    new-instance v0, Lcom/android/settings/widget/g;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/g;-><init>(Lcom/android/settings/widget/ChartSweepView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->bA:Landroid/view/View$OnClickListener;

    .line 123
    sget-object v0, Lcom/android/settings/fz;->uC:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->d(Landroid/graphics/drawable/Drawable;)V

    .line 127
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->cH(I)V

    .line 128
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->m(F)V

    .line 129
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->cG(I)V

    .line 131
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->cI(I)V

    .line 132
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->cJ(I)V

    .line 133
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->cK(I)V

    .line 136
    const v1, 0x7f020073

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apR:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apR:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apR:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 145
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->bA:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartSweepView;->setWillNotDraw(Z)V

    .line 149
    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 589
    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->apM:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartSweepView;->apN:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 590
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tv()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tw()J

    move-result-wide v4

    iget v6, p0, Lcom/android/settings/widget/ChartSweepView;->apD:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v0

    .line 593
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 596
    :cond_0
    return-object v7
.end method

.method private a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    instance-of v0, v0, Lcom/android/settings/widget/k;

    if-eqz v0, :cond_6

    .line 607
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 608
    :goto_1
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 610
    :goto_2
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    invoke-interface {v2, p4, p5}, Lcom/android/settings/widget/a;->t(J)F

    move-result v2

    add-float v2, v2, p6

    .line 611
    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    invoke-interface {v3, p2, p3}, Lcom/android/settings/widget/a;->t(J)F

    move-result v3

    sub-float v3, v3, p6

    .line 613
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 614
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 615
    if-eqz v0, :cond_0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    float-to-int v3, v3

    add-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 616
    :cond_0
    if-eqz v1, :cond_1

    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 621
    :cond_1
    :goto_3
    return-object v4

    .line 607
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 608
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 618
    :cond_4
    if-eqz v0, :cond_5

    iget v0, v4, Landroid/graphics/Rect;->left:I

    float-to-int v3, v3

    add-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 619
    :cond_5
    if-eqz v1, :cond_1

    iget v0, v4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_6
    move-wide v7, p4

    move-wide p4, p2

    move-wide p2, v7

    goto :goto_0
.end method

.method private aX(Z)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apT:Lcom/android/settings/widget/h;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apT:Lcom/android/settings/widget/h;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/h;->b(Lcom/android/settings/widget/ChartSweepView;Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public static d(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 2

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private e(Landroid/view/MotionEvent;)F
    .locals 3

    .prologue
    .line 412
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tl()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tl()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method public static e(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 2

    .prologue
    .line 743
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->d(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static f(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tm()V

    return-void
.end method

.method private tl()F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 182
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 185
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 189
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 189
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private tm()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apT:Lcom/android/settings/widget/h;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apT:Lcom/android/settings/widget/h;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/h;->c(Lcom/android/settings/widget/ChartSweepView;)V

    .line 207
    :cond_0
    return-void
.end method

.method private tn()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 257
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->apH:I

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 260
    new-instance v2, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 263
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apf:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 265
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apI:Landroid/text/SpannableStringBuilder;

    .line 266
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apI:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    .line 268
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->to()V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    .line 277
    return-void

    .line 271
    :cond_0
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apI:Landroid/text/SpannableStringBuilder;

    .line 272
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    goto :goto_0
.end method

.method private to()V
    .locals 6

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apI:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apI:Landroid/text/SpannableStringBuilder;

    iget-wide v4, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/settings/widget/a;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->apL:J

    .line 282
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apI:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->tp()V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->apL:J

    goto :goto_0
.end method

.method private tu()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 557
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, v5, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private tv()J
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apO:Lcom/android/settings/widget/ChartSweepView;

    .line 574
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method private tw()J
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apP:Lcom/android/settings/widget/ChartSweepView;

    .line 579
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->apO:Lcom/android/settings/widget/ChartSweepView;

    .line 398
    iput-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->apP:Lcom/android/settings/widget/ChartSweepView;

    .line 399
    return-void
.end method

.method a(Lcom/android/settings/widget/a;)V
    .locals 1

    .prologue
    .line 158
    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/a;

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    .line 159
    return-void
.end method

.method public a(Lcom/android/settings/widget/h;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->apT:Lcom/android/settings/widget/h;

    .line 195
    return-void
.end method

.method public varargs a([Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->apW:[Lcom/android/settings/widget/ChartSweepView;

    .line 163
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->e(Landroid/view/MotionEvent;)F

    move-result v0

    .line 407
    invoke-direct {p2, p1}, Lcom/android/settings/widget/ChartSweepView;->e(Landroid/view/MotionEvent;)F

    move-result v1

    .line 408
    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public cG(I)V
    .locals 0

    .prologue
    .line 388
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->apr:I

    .line 389
    return-void
.end method

.method public cH(I)V
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    .line 239
    return-void
.end method

.method public cI(I)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->apF:I

    .line 243
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tn()V

    .line 244
    return-void
.end method

.method public cJ(I)V
    .locals 0

    .prologue
    .line 247
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->apH:I

    .line 248
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tn()V

    .line 249
    return-void
.end method

.method public cK(I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->apf:I

    .line 253
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tn()V

    .line 254
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_0
    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 228
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 234
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 235
    return-void

    :cond_2
    move v0, v1

    .line 227
    goto :goto_0

    .line 231
    :cond_3
    iput-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 626
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 627
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 630
    :cond_0
    return-void
.end method

.method public f(JJ)V
    .locals 1

    .prologue
    .line 379
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->apM:J

    .line 380
    iput-wide p3, p0, Lcom/android/settings/widget/ChartSweepView;->apN:J

    .line 381
    return-void
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 330
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 333
    :cond_0
    return-void
.end method

.method public m(F)V
    .locals 0

    .prologue
    .line 384
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->apD:F

    .line 385
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v1

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v2

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 711
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->apG:F

    const/high16 v4, 0x44800000    # 1024.0f

    sub-float/2addr v3, v4

    .line 712
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->apQ:F

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 714
    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    invoke-virtual {v3, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 716
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 717
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->apG:F

    float-to-int v0, v0

    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->apr:I

    add-int/2addr v0, v3

    .line 722
    :goto_0
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 723
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 730
    :goto_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 736
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 726
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 696
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->tp()V

    .line 698
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 638
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    .line 640
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iput v5, v2, Landroid/graphics/Point;->x:I

    .line 641
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 642
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tl()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 643
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 651
    :goto_0
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 654
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 655
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 656
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 657
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 667
    :goto_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v0

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .line 672
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    if-nez v2, :cond_2

    .line 673
    mul-int/lit8 v2, v0, 0x3

    .line 674
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 675
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 677
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v0, v0, 0x2

    .line 678
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 679
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 690
    :goto_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 692
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 647
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apB:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 648
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 661
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 662
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 663
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 664
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 681
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    .line 682
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 683
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v0, v0, 0x2

    .line 686
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apA:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 687
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 530
    :cond_0
    :goto_0
    return v2

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 530
    goto :goto_0

    .line 430
    :pswitch_0
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    if-ne v1, v2, :cond_5

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    move v1, v2

    .line 432
    :goto_1
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    invoke-virtual {v5}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v4, v2

    .line 440
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 444
    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->apW:[Lcom/android/settings/widget/ChartSweepView;

    array-length v8, v7

    move v5, v3

    :goto_3
    if-ge v5, v8, :cond_a

    aget-object v9, v7, v5

    .line 445
    invoke-virtual {p0, v6, v9}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v2, v3

    .line 446
    goto :goto_0

    :cond_2
    move v1, v3

    .line 431
    goto :goto_1

    :cond_3
    move v4, v3

    .line 432
    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_2

    .line 435
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apz:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    move v1, v2

    .line 436
    :goto_4
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apJ:Landroid/text/DynamicLayout;

    invoke-virtual {v5}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    move v4, v2

    goto :goto_2

    :cond_6
    move v1, v3

    .line 435
    goto :goto_4

    :cond_7
    move v4, v3

    .line 436
    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_2

    .line 444
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 450
    :cond_a
    if-eqz v1, :cond_c

    .line 451
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    if-ne v1, v2, :cond_b

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->apU:F

    .line 456
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apV:Landroid/view/MotionEvent;

    .line 457
    iput v2, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_0

    .line 454
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->apU:F

    goto :goto_5

    .line 465
    :cond_c
    if-eqz v4, :cond_d

    .line 466
    iput v10, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    goto/16 :goto_0

    .line 469
    :cond_d
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    move v2, v3

    .line 470
    goto/16 :goto_0

    .line 474
    :pswitch_1
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-eq v0, v10, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 481
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tu()Landroid/graphics/Rect;

    move-result-object v0

    .line 482
    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 486
    iget v4, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    if-ne v4, v2, :cond_e

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 488
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->apU:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->apV:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 490
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {v5, v6, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 492
    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 494
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-interface {v4, v0}, Lcom/android/settings/widget/a;->l(F)J

    move-result-wide v0

    .line 507
    :goto_6
    iget-wide v4, p0, Lcom/android/settings/widget/ChartSweepView;->apS:J

    rem-long v4, v0, v4

    sub-long/2addr v0, v4

    .line 508
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 510
    invoke-direct {p0, v3}, Lcom/android/settings/widget/ChartSweepView;->aX(Z)V

    goto/16 :goto_0

    .line 496
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 497
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->apU:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->apV:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 499
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v5, v6, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 501
    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 503
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-interface {v4, v0}, Lcom/android/settings/widget/a;->l(F)J

    move-result-wide v0

    goto :goto_6

    .line 514
    :pswitch_2
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-ne v0, v10, :cond_10

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->performClick()Z

    .line 526
    :cond_f
    :goto_7
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    goto/16 :goto_0

    .line 516
    :cond_10
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-ne v0, v2, :cond_f

    .line 517
    iput v4, p0, Lcom/android/settings/widget/ChartSweepView;->apU:F

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apV:Landroid/view/MotionEvent;

    .line 519
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->apL:J

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    .line 520
    invoke-direct {p0, v2}, Lcom/android/settings/widget/ChartSweepView;->aX(Z)V

    .line 521
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 522
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    goto :goto_7

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    .line 214
    return-void
.end method

.method public setValue(J)V
    .locals 1

    .prologue
    .line 353
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    .line 354
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->to()V

    .line 355
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 341
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 339
    goto :goto_0
.end method

.method public tj()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    return v0
.end method

.method public tk()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    return-object v0
.end method

.method public tp()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 295
    .line 296
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apO:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v1, :cond_3

    .line 298
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->f(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apO:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartSweepView;->f(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->apG:F

    .line 299
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apO:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v1}, Lcom/android/settings/widget/ChartSweepView;->d(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->e(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 300
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 301
    div-float v0, v1, v3

    .line 316
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apG:F

    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->apF:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->apG:F

    .line 319
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apQ:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 320
    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->apQ:F

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 322
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apO:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apO:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->tp()V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apP:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apP:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->tp()V

    .line 325
    :cond_2
    return-void

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apP:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v1, :cond_4

    .line 304
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->f(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apP:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartSweepView;->f(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->apG:F

    .line 305
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->d(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apP:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartSweepView;->e(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 306
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 307
    neg-float v0, v1

    div-float/2addr v0, v3

    goto :goto_0

    .line 310
    :cond_4
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->f(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->apG:F

    goto :goto_0
.end method

.method public tq()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->apL:J

    return-wide v0
.end method

.method public tr()F
    .locals 4

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v2, v3}, Lcom/android/settings/widget/a;->t(J)F

    move-result v0

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ts()V
    .locals 3

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->tu()Landroid/graphics/Rect;

    move-result-object v0

    .line 542
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->apE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 544
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    invoke-interface {v1, v0}, Lcom/android/settings/widget/a;->l(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->apC:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 547
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    invoke-interface {v1, v0}, Lcom/android/settings/widget/a;->l(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_0
.end method

.method public tt()I
    .locals 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apK:Lcom/android/settings/widget/a;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/settings/widget/a;->u(J)I

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->apy:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y(J)V
    .locals 1

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->apS:J

    .line 175
    return-void
.end method
