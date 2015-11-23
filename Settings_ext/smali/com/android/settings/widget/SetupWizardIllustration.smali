.class public Lcom/android/settings/widget/SetupWizardIllustration;
.super Landroid/widget/FrameLayout;
.source "SetupWizardIllustration.java"


# instance fields
.field private arD:F

.field private arE:Landroid/graphics/drawable/Drawable;

.field private arF:Landroid/graphics/drawable/Drawable;

.field private final arG:Landroid/graphics/Rect;

.field private final arH:Landroid/graphics/Rect;

.field private arI:F

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arG:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arH:Landroid/graphics/Rect;

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    .line 50
    iput v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arI:F

    .line 67
    if-eqz p2, :cond_0

    .line 68
    sget-object v0, Lcom/android/settings/fz;->uJ:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arI:F

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SetupWizardIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arD:F

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SetupWizardIllustration;->setWillNotDraw(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arE:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arH:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    iget v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 116
    sub-int v6, p4, p2

    .line 117
    sub-int v7, p5, p3

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/widget/SetupWizardIllustration;->getLayoutDirection()I

    move-result v5

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arG:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arI:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 125
    int-to-float v0, v6

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    .line 127
    int-to-float v0, v2

    iget v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    move v1, v6

    .line 129
    :cond_0
    const/16 v0, 0x37

    iget-object v3, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arG:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arH:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arH:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arE:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arE:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v6

    iget v2, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v2, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arH:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 140
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arI:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 106
    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arI:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 107
    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arD:F

    rem-float/2addr v0, v2

    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 108
    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/android/settings/widget/SetupWizardIllustration;->setPaddingRelative(IIII)V

    .line 110
    :cond_0
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SetupWizardIllustration;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 112
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 100
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arE:Landroid/graphics/drawable/Drawable;

    .line 85
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->arF:Landroid/graphics/drawable/Drawable;

    .line 94
    return-void
.end method
