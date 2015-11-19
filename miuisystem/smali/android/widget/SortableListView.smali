.class public Landroid/widget/SortableListView;
.super Landroid/widget/ListView;
.source "SortableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SortableListView$OnOrderChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final SCROLL_BOUND:F = 0.25f

.field private static final SCROLL_SPEED_MAX:I = 0x10

.field private static final SNAPSHOT_ALPHA:I = 0x99

.field private static final TAG:Ljava/lang/String; = "SortableListView"


# instance fields
.field private mDraggingFrom:I

.field private mDraggingItemHeight:I

.field private mDraggingItemWidth:I

.field private mDraggingTo:I

.field private mDraggingY:I

.field private mInterceptTouchForSorting:Z

.field private mItemUpperBound:I

.field private mOffsetYInDraggingItem:I

.field private mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScrollBound:I

.field private mScrollLowerBound:I

.field private mScrollUpperBound:I

.field private mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

.field private mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

.field private mSnapshotShadow:Landroid/graphics/drawable/Drawable;

.field private mSnapshotShadowPaddingBottom:I

.field private mSnapshotShadowPaddingTop:I

.field private mTmpLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v1, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    .line 33
    iput v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    .line 49
    iput v1, p0, Landroid/widget/SortableListView;->mItemUpperBound:I

    .line 270
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$drawable;->sortable_list_dragging_item_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v1, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 69
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingTop:I

    .line 70
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingBottom:I

    .line 73
    new-instance v1, Landroid/widget/SortableListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SortableListView$1;-><init>(Landroid/widget/SortableListView;)V

    iput-object v1, p0, Landroid/widget/SortableListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 133
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SortableListView;)Landroid/widget/SortableListView$OnOrderChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/widget/SortableListView;->mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/SortableListView;Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/SortableListView;->getHittenItemPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/SortableListView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/widget/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/SortableListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 18
    iput-object p1, p0, Landroid/widget/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/widget/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/SortableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget v0, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/SortableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget v0, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/SortableListView;IIII)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/SortableListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    return p1
.end method

.method static synthetic access$302(Landroid/widget/SortableListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/SortableListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget-boolean v0, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/SortableListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/SortableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingItemWidth:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/SortableListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Landroid/widget/SortableListView;->mDraggingItemWidth:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/SortableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/SortableListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/SortableListView;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SortableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SortableListView;

    .prologue
    .line 18
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingY:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/SortableListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Landroid/widget/SortableListView;->mDraggingY:I

    return p1
.end method

.method static synthetic access$902(Landroid/widget/SortableListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/SortableListView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Landroid/widget/SortableListView;->mOffsetYInDraggingItem:I

    return p1
.end method

.method private createAnimation(IIII)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "fromX"    # I
    .param p2, "toX"    # I
    .param p3, "fromY"    # I
    .param p4, "toY"    # I

    .prologue
    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 137
    .local v0, "result":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 139
    return-object v0
.end method

.method private getHittenItemPosition(Landroid/view/MotionEvent;)I
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 273
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 274
    .local v4, "y":F
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 276
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 277
    sub-int v5, v1, v0

    invoke-virtual {p0, v5}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 278
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 279
    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 280
    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    aget v5, v5, v7

    int-to-float v5, v5

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_0

    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    aget v5, v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_0

    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    aget v5, v5, v8

    int-to-float v5, v5

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_0

    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    aget v5, v5, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_0

    .line 286
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return v1

    .line 276
    .restart local v1    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 286
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    if-eqz p2, :cond_1

    .line 337
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private setViewAnimationByPisition(ILandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/SortableListView;->setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 331
    return-void
.end method

.method private updateDraggingToPisition(I)V
    .locals 4
    .param p1, "draggingTo"    # I

    .prologue
    const/4 v3, 0x0

    .line 290
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 327
    :cond_0
    return-void

    .line 292
    :cond_1
    const-string v0, "SortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sort item from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 297
    :goto_0
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-le v0, p1, :cond_2

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-le v0, v1, :cond_2

    .line 298
    const-string v0, "SortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    neg-int v1, v1

    invoke-direct {p0, v3, v3, v1, v3}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_0

    .line 304
    :cond_2
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 305
    :goto_1
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-ge v0, p1, :cond_3

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ge v0, v1, :cond_3

    .line 306
    const-string v0, "SortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    invoke-direct {p0, v3, v3, v1, v3}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_1

    .line 313
    :cond_3
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 314
    :goto_2
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-ge v0, p1, :cond_4

    .line 315
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    neg-int v1, v1

    invoke-direct {p0, v3, v3, v3, v1}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    .line 316
    const-string v0, "SortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 321
    :cond_4
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 322
    :goto_3
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-le v0, p1, :cond_0

    .line 323
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    invoke-direct {p0, v3, v3, v3, v1}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    .line 324
    const-string v0, "SortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 167
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ltz v2, :cond_5

    .line 168
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingY:I

    iget v3, p0, Landroid/widget/SortableListView;->mOffsetYInDraggingItem:I

    sub-int v1, v2, v3

    .line 171
    .local v1, "offset":I
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v0

    .line 172
    .local v0, "index":I
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    .line 176
    invoke-virtual {p0, v0}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 180
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v0

    .line 183
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    .line 184
    invoke-virtual {p0, v0}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 186
    int-to-float v2, v1

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget-object v2, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v2, p0, Landroid/widget/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v2, p0, Landroid/widget/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v3, p0, Landroid/widget/SortableListView;->mItemUpperBound:I

    if-ge v2, v3, :cond_4

    .line 190
    iget-object v2, p0, Landroid/widget/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 192
    :cond_4
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    .end local v0    # "index":I
    .end local v1    # "offset":I
    :cond_5
    return-void
.end method

.method public getListenerForStartingSort()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/widget/SortableListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const/4 v4, 0x0

    .line 346
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 348
    .local v0, "animation":Landroid/view/animation/Animation;
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ne v2, p1, :cond_1

    .line 349
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemWidth:I

    iget v3, p0, Landroid/widget/SortableListView;->mDraggingItemWidth:I

    invoke-direct {p0, v2, v3, v4, v4}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 350
    const-string v2, "SortableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set move out animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/widget/SortableListView;->setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 362
    return-object v1

    .line 352
    :cond_1
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ge v2, p1, :cond_2

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-gt p1, v2, :cond_2

    .line 353
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    neg-int v2, v2

    invoke-direct {p0, v4, v4, v4, v2}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 354
    const-string v2, "SortableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set move up animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_2
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-le v2, p1, :cond_0

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-lt p1, v2, :cond_0

    .line 357
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    invoke-direct {p0, v4, v4, v4, v2}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 358
    const-string v2, "SortableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set move down animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 198
    iget-boolean v1, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Landroid/widget/SortableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 200
    invoke-virtual {p0, p1}, Landroid/widget/SortableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 204
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 158
    const/4 v0, 0x1

    int-to-float v1, p2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SortableListView;->mScrollBound:I

    .line 159
    iget v0, p0, Landroid/widget/SortableListView;->mScrollBound:I

    iput v0, p0, Landroid/widget/SortableListView;->mScrollUpperBound:I

    .line 160
    iget v0, p0, Landroid/widget/SortableListView;->mScrollBound:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/widget/SortableListView;->mScrollLowerBound:I

    .line 161
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, -0x1

    .line 209
    iget-boolean v4, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    if-nez v4, :cond_0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 267
    :goto_0
    return v4

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 267
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 216
    .local v3, "y":I
    iget-boolean v4, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    if-nez v4, :cond_2

    iget v4, p0, Landroid/widget/SortableListView;->mDraggingY:I

    if-eq v3, v4, :cond_1

    .line 218
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SortableListView;->getHittenItemPosition(Landroid/view/MotionEvent;)I

    move-result v1

    .line 219
    .local v1, "position":I
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v4

    if-lt v1, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_4

    .line 220
    :cond_3
    iget v1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    .line 222
    :cond_4
    invoke-direct {p0, v1}, Landroid/widget/SortableListView;->updateDraggingToPisition(I)V

    .line 225
    iput v3, p0, Landroid/widget/SortableListView;->mDraggingY:I

    .line 226
    invoke-virtual {p0}, Landroid/widget/SortableListView;->invalidate()V

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "delta":I
    iget v4, p0, Landroid/widget/SortableListView;->mScrollLowerBound:I

    if-le v3, v4, :cond_6

    .line 232
    iget v4, p0, Landroid/widget/SortableListView;->mScrollLowerBound:I

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Landroid/widget/SortableListView;->mScrollBound:I

    div-int v0, v4, v5

    .line 237
    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 239
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v4}, Landroid/widget/SortableListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 233
    .end local v2    # "v":Landroid/view/View;
    :cond_6
    iget v4, p0, Landroid/widget/SortableListView;->mScrollUpperBound:I

    if-ge v3, v4, :cond_5

    .line 235
    iget v4, p0, Landroid/widget/SortableListView;->mScrollUpperBound:I

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Landroid/widget/SortableListView;->mScrollBound:I

    div-int v0, v4, v5

    goto :goto_2

    .line 248
    .end local v0    # "delta":I
    .end local v1    # "position":I
    .end local v3    # "y":I
    :pswitch_2
    iget v4, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ltz v4, :cond_7

    .line 249
    iget-object v4, p0, Landroid/widget/SortableListView;->mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    if-eqz v4, :cond_8

    iget v4, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v5, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-eq v4, v5, :cond_8

    iget v4, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-ltz v4, :cond_8

    .line 251
    iget-object v4, p0, Landroid/widget/SortableListView;->mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    iget v5, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-interface {v4, v5, v6}, Landroid/widget/SortableListView$OnOrderChangedListener;->OnOrderChanged(II)V

    .line 260
    :cond_7
    :goto_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    .line 261
    iput v8, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    .line 262
    iput v8, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    .line 263
    invoke-virtual {p0}, Landroid/widget/SortableListView;->invalidate()V

    goto/16 :goto_1

    .line 256
    :cond_8
    iget v4, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_3

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setItemUpperBound(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "upper"    # I
    .param p2, "snapshotShadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    iput p1, p0, Landroid/widget/SortableListView;->mItemUpperBound:I

    .line 144
    iput-object p2, p0, Landroid/widget/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    .line 145
    return-void
.end method

.method public setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SortableListView$OnOrderChangedListener;

    .prologue
    .line 148
    iput-object p1, p0, Landroid/widget/SortableListView;->mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    .line 149
    return-void
.end method
