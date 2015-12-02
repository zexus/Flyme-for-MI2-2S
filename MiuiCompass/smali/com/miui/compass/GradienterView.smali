.class public Lcom/miui/compass/GradienterView;
.super Landroid/view/View;
.source "GradienterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/compass/GradienterView$1;,
        Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;
    }
.end annotation


# instance fields
.field private final VIEW_HEIGHT:I

.field private final VIEW_WIDTH:I

.field private mCircleLying1:Landroid/graphics/drawable/Drawable;

.field private mCircleLying2:Landroid/graphics/drawable/Drawable;

.field private mCirclePortrait1:Landroid/graphics/drawable/Drawable;

.field private mCirclePortrait2:Landroid/graphics/drawable/Drawable;

.field private mDirectionLying:F

.field private mIsPortrait:Z

.field private mIsZero:Z

.field private mPointerLying1:Landroid/graphics/drawable/Drawable;

.field private mPointerLying2:Landroid/graphics/drawable/Drawable;

.field private mPointerPortrait1:Landroid/graphics/drawable/Drawable;

.field private mPointerPortrait2:Landroid/graphics/drawable/Drawable;

.field private mVY:F

.field private mVZ:F

.field private mZ:F

.field private mZeroAnimator:Landroid/animation/ValueAnimator;

.field private mZeroProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/GradienterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/compass/GradienterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/compass/GradienterView;->mIsZero:Z

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    .line 52
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 54
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-static {v1, v2, v0}, Lmiui/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/miui/compass/GradienterView;->VIEW_WIDTH:I

    .line 56
    iget v1, p0, Lcom/miui/compass/GradienterView;->VIEW_WIDTH:I

    iput v1, p0, Lcom/miui/compass/GradienterView;->VIEW_HEIGHT:I

    .line 57
    return-void
.end method

.method static synthetic access$102(Lcom/miui/compass/GradienterView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/GradienterView;
    .param p1, "x1"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    return p1
.end method

.method private drawGradienterLying(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x43a70000    # 334.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 125
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying1:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying1:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying1:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/compass/GradienterView;->mCircleLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/miui/compass/GradienterView;->mCircleLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/miui/compass/GradienterView;->getCenterRect(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying2:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying2:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying2:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/compass/GradienterView;->mCircleLying2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/miui/compass/GradienterView;->mCircleLying2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/miui/compass/GradienterView;->getCenterRect(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 133
    :cond_1
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying1:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    sub-float v5, v9, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 134
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying2:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 136
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mCircleLying2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    .line 140
    :cond_2
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying2:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying2:Landroid/graphics/drawable/Drawable;

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v7

    .line 145
    .local v0, "cX":F
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v7

    .line 147
    .local v1, "cY":F
    iget v4, p0, Lcom/miui/compass/GradienterView;->mVZ:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 148
    .local v2, "l":I
    iget v4, p0, Lcom/miui/compass/GradienterView;->mVY:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 149
    .local v3, "t":I
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    sub-float v5, v9, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying2:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/miui/compass/GradienterView;->mPointerLying1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying2:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 156
    iget-object v4, p0, Lcom/miui/compass/GradienterView;->mPointerLying2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    return-void
.end method

.method private drawGradienterPortrait(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    .line 89
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait1:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait1:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait1:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/compass/GradienterView;->getCenterRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait2:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait2:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait2:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/compass/GradienterView;->getCenterRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait1:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait1:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait1:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/compass/GradienterView;->getCenterRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait2:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait2:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait2:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/compass/GradienterView;->getCenterRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait1:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    sub-float v1, v4, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 110
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mCirclePortrait2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget v0, p0, Lcom/miui/compass/GradienterView;->mZ:F

    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 117
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait1:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    sub-float v1, v4, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mPointerPortrait2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    return-void
.end method

.method private getCenterRect(II)Landroid/graphics/Rect;
    .locals 7
    .param p1, "iW"    # I
    .param p2, "iH"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getHeight()I

    move-result v3

    .line 161
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->getWidth()I

    move-result v0

    .line 162
    .local v0, "h":I
    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, p1, 0x2

    sub-int v1, v4, v5

    .line 163
    .local v1, "l":I
    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, p2, 0x2

    sub-int v2, v4, v5

    .line 164
    .local v2, "t":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, p1

    add-int v6, v2, p2

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private getViewSize(II)I
    .locals 2
    .param p1, "measureSpec"    # I
    .param p2, "size"    # I

    .prologue
    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 67
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 68
    .local v0, "result":I
    sparse-switch v1, :sswitch_data_0

    .line 76
    :goto_0
    return v0

    .line 71
    :sswitch_0
    move v0, p2

    .line 72
    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private startZeroAnimationIfNeed()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 194
    iget v0, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 195
    iput-boolean v2, p0, Lcom/miui/compass/GradienterView;->mIsZero:Z

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/miui/compass/GradienterView;->mIsZero:Z

    if-eqz v0, :cond_5

    .line 199
    iget-boolean v0, p0, Lcom/miui/compass/GradienterView;->mIsPortrait:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/compass/GradienterView;->mDirectionLying:F

    float-to-int v0, v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/compass/GradienterView;->mIsPortrait:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/compass/GradienterView;->mZ:F

    float-to-int v0, v0

    if-eqz v0, :cond_4

    .line 200
    :cond_2
    iput-boolean v4, p0, Lcom/miui/compass/GradienterView;->mIsZero:Z

    .line 201
    iget v0, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 205
    :cond_3
    new-array v0, v1, [F

    iget v1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    aput v1, v0, v4

    aput v5, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    .line 206
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;-><init>(Lcom/miui/compass/GradienterView;Lcom/miui/compass/GradienterView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 223
    :cond_4
    :goto_0
    return-void

    .line 211
    :cond_5
    iget-boolean v0, p0, Lcom/miui/compass/GradienterView;->mIsPortrait:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/miui/compass/GradienterView;->mDirectionLying:F

    float-to-int v0, v0

    if-eqz v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/miui/compass/GradienterView;->mIsPortrait:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/compass/GradienterView;->mZ:F

    float-to-int v0, v0

    if-nez v0, :cond_4

    .line 212
    :cond_7
    iput-boolean v2, p0, Lcom/miui/compass/GradienterView;->mIsZero:Z

    .line 213
    iget v0, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 215
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 217
    :cond_8
    new-array v0, v1, [F

    iget v1, p0, Lcom/miui/compass/GradienterView;->mZeroProgress:F

    aput v1, v0, v4

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    .line 218
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;-><init>(Lcom/miui/compass/GradienterView;Lcom/miui/compass/GradienterView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object v0, p0, Lcom/miui/compass/GradienterView;->mZeroAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public getDirectionLying()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/miui/compass/GradienterView;->mDirectionLying:F

    return v0
.end method

.method public getDirectionPortart()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/miui/compass/GradienterView;->mZ:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/miui/compass/GradienterView;->mIsPortrait:Z

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/miui/compass/GradienterView;->drawGradienterLying(Landroid/graphics/Canvas;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/compass/GradienterView;->drawGradienterPortrait(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 62
    iget v0, p0, Lcom/miui/compass/GradienterView;->VIEW_WIDTH:I

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/GradienterView;->getViewSize(II)I

    move-result v0

    iget v1, p0, Lcom/miui/compass/GradienterView;->VIEW_HEIGHT:I

    invoke-direct {p0, p2, v1}, Lcom/miui/compass/GradienterView;->getViewSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/compass/GradienterView;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method public setDirection(FF)V
    .locals 12
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 168
    iget-boolean v8, p0, Lcom/miui/compass/GradienterView;->mIsPortrait:Z

    if-nez v8, :cond_0

    .line 169
    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-static {p1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 170
    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-static {p2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 172
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v8, p1, v8

    float-to-double v4, v8

    .line 173
    .local v4, "vY":D
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v8, p2, v8

    float-to-double v6, v8

    .line 174
    .local v6, "vZ":D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double v2, v8, v10

    .line 176
    .local v2, "length2":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 182
    .local v0, "len":D
    :goto_0
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    :goto_1
    iput v8, p0, Lcom/miui/compass/GradienterView;->mVY:F

    .line 183
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    :goto_2
    iput v8, p0, Lcom/miui/compass/GradienterView;->mVZ:F

    .line 184
    iget v8, p0, Lcom/miui/compass/GradienterView;->mVY:F

    iget v9, p0, Lcom/miui/compass/GradienterView;->mVY:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/miui/compass/GradienterView;->mVZ:F

    iget v10, p0, Lcom/miui/compass/GradienterView;->mVZ:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x4056800000000000L    # 90.0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    iput v8, p0, Lcom/miui/compass/GradienterView;->mDirectionLying:F

    .line 186
    .end local v0    # "len":D
    .end local v2    # "length2":D
    .end local v4    # "vY":D
    .end local v6    # "vZ":D
    :cond_0
    iput p2, p0, Lcom/miui/compass/GradienterView;->mZ:F

    .line 188
    invoke-direct {p0}, Lcom/miui/compass/GradienterView;->startZeroAnimationIfNeed()V

    .line 190
    invoke-virtual {p0}, Lcom/miui/compass/GradienterView;->invalidate()V

    .line 191
    return-void

    .line 179
    .restart local v2    # "length2":D
    .restart local v4    # "vY":D
    .restart local v6    # "vZ":D
    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_2

    const-wide/16 v0, 0x0

    .restart local v0    # "len":D
    :goto_3
    goto :goto_0

    .end local v0    # "len":D
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_3

    .line 182
    .restart local v0    # "len":D
    :cond_3
    div-double v8, v4, v0

    double-to-float v8, v8

    goto :goto_1

    .line 183
    :cond_4
    div-double v8, v6, v0

    double-to-float v8, v8

    goto :goto_2
.end method

.method public setIsPortrait(Z)V
    .locals 0
    .param p1, "isPortrait"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/miui/compass/GradienterView;->mIsPortrait:Z

    .line 236
    return-void
.end method
