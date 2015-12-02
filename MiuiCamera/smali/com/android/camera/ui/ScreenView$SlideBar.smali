.class public Lcom/android/camera/ui/ScreenView$SlideBar;
.super Landroid/widget/FrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/android/camera/ui/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SlideBar"
.end annotation


# instance fields
.field private mPadding:Landroid/graphics/Rect;

.field private mPos:Landroid/graphics/Rect;

.field private mSlidePoint:Landroid/graphics/NinePatch;


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 431
    :cond_0
    return-void
.end method

.method public fastOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 454
    iget v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mRight:I

    .line 455
    iput p1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mLeft:I

    .line 456
    return-void
.end method

.method public getSlideWidth()I
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SlideBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 435
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 436
    .local v0, "r":Z
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    sub-int v2, p4, p2

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 438
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 440
    :cond_0
    return v0
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 445
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 446
    return-void
.end method
