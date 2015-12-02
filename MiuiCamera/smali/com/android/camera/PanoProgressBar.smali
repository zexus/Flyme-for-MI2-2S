.class public Lcom/android/camera/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# instance fields
.field private mDirection:I

.field private mDoneAreaNinePatch:Landroid/graphics/NinePatch;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private mIndicatorLBitmap:Landroid/graphics/Bitmap;

.field private mIndicatorRBitmap:Landroid/graphics/Bitmap;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightIncreasing:Z

.field private mRightMostProgress:F

.field private mShowIndicator:Z

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 38
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 39
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 40
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 41
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 42
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 43
    iput v3, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 51
    iput-object v4, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 52
    iput-boolean v3, p0, Lcom/android/camera/PanoProgressBar;->mRightIncreasing:Z

    .line 61
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020059

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorRBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorLBitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorLBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020054

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "doneBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 69
    .local v1, "donenpChunk":[B
    if-eqz v1, :cond_0

    .line 70
    new-instance v2, Landroid/graphics/NinePatch;

    invoke-direct {v2, v0, v1, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaNinePatch:Landroid/graphics/NinePatch;

    .line 72
    :cond_0
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 80
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 81
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    .line 164
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_2

    .line 165
    new-instance v6, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    add-float/2addr v0, v9

    iget-object v1, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    sub-float/2addr v2, v9

    iget-object v3, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v9

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 172
    .local v6, "doneArea":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaNinePatch:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PanoProgressBar;->mShowIndicator:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 179
    const/4 v7, 0x0

    .line 181
    .local v7, "indicator":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 182
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 183
    .local v8, "l":F
    iget-object v7, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorRBitmap:Landroid/graphics/Bitmap;

    .line 188
    :goto_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 189
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 190
    sub-float v0, v8, v9

    sub-float v1, v0, v4

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v8, v9

    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v3

    add-float v3, v0, v4

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    if-eqz v7, :cond_1

    .line 193
    sub-float v0, v8, v9

    iget-object v1, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v9

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 201
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "doneArea":Landroid/graphics/RectF;
    .end local v7    # "indicator":Landroid/graphics/Bitmap;
    .end local v8    # "l":F
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    return-void

    .line 185
    .restart local v6    # "doneArea":Landroid/graphics/RectF;
    .restart local v7    # "indicator":Landroid/graphics/Bitmap;
    :cond_3
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 186
    .restart local v8    # "l":F
    iget-object v7, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorLBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 102
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    .line 103
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    .line 104
    iget-boolean v0, p0, Lcom/android/camera/PanoProgressBar;->mRightIncreasing:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 157
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 160
    return-void
.end method

.method public setIndicatorFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/camera/PanoProgressBar;->mShowIndicator:Z

    .line 206
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 109
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 110
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 76
    return-void
.end method

.method public setProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 131
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 132
    if-le p1, v4, :cond_4

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 139
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 140
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 142
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 143
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v4, :cond_1

    .line 145
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 147
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 149
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 153
    :cond_3
    return-void

    .line 134
    :cond_4
    const/4 v0, -0x2

    if-ge p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .param p1, "rightIncreasing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 115
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 116
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 117
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 124
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/PanoProgressBar;->mRightIncreasing:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 126
    return-void

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 120
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 121
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
