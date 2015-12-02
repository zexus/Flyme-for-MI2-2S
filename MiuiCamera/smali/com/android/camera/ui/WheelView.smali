.class public Lcom/android/camera/ui/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mAdapter:Lcom/android/camera/ui/WheelAdapter;

.field private mChangingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentItem:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsCyclic:Z

.field private mIsScrollingPerformed:Z

.field private mItemHeight:I

.field private mItemsLayout:Landroid/text/StaticLayout;

.field private mItemsPaint:Landroid/text/TextPaint;

.field private mItemsWidth:I

.field private mLabel:Ljava/lang/String;

.field private mLastScrollY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollingOffset:I

.field private mValueLayout:Landroid/text/StaticLayout;

.field private mValuePaint:Landroid/text/TextPaint;

.field private mVisibleItems:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    .line 41
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    .line 45
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mItemHeight:I

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mChangingListeners:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mScrollingListeners:Ljava/util/List;

    .line 70
    iput v1, p0, Lcom/android/camera/ui/WheelView;->MESSAGE_SCROLL:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/WheelView;->MESSAGE_JUSTIFY:I

    .line 540
    new-instance v0, Lcom/android/camera/ui/WheelView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/WheelView$1;-><init>(Lcom/android/camera/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 578
    new-instance v0, Lcom/android/camera/ui/WheelView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/WheelView$2;-><init>(Lcom/android/camera/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/camera/ui/WheelView;->initData(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    .line 41
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    .line 45
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mItemHeight:I

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mChangingListeners:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mScrollingListeners:Ljava/util/List;

    .line 70
    iput v1, p0, Lcom/android/camera/ui/WheelView;->MESSAGE_SCROLL:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/WheelView;->MESSAGE_JUSTIFY:I

    .line 540
    new-instance v0, Lcom/android/camera/ui/WheelView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/WheelView$1;-><init>(Lcom/android/camera/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 578
    new-instance v0, Lcom/android/camera/ui/WheelView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/WheelView$2;-><init>(Lcom/android/camera/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/camera/ui/WheelView;->initData(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    .line 41
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    .line 45
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mItemHeight:I

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mChangingListeners:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mScrollingListeners:Ljava/util/List;

    .line 70
    iput v1, p0, Lcom/android/camera/ui/WheelView;->MESSAGE_SCROLL:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/WheelView;->MESSAGE_JUSTIFY:I

    .line 540
    new-instance v0, Lcom/android/camera/ui/WheelView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/WheelView$1;-><init>(Lcom/android/camera/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 578
    new-instance v0, Lcom/android/camera/ui/WheelView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/WheelView$2;-><init>(Lcom/android/camera/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/camera/ui/WheelView;->initData(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/WheelView;)Lcom/android/camera/ui/WheelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/ui/WheelView;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/WheelView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->justify()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->clearMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->invalidateLayouts()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->startScrolling()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/ui/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mLastScrollY:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/camera/ui/WheelView;->mLastScrollY:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/WheelView;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    return v0
.end method

.method private buildText(Z)Ljava/lang/String;
    .locals 5
    .param p1, "useCurrentValue"    # Z

    .prologue
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v2, "itemsText":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 301
    .local v0, "addItems":I
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    sub-int v1, v4, v0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    add-int/2addr v4, v0

    if-gt v1, v4, :cond_3

    .line 302
    if-nez p1, :cond_0

    iget v4, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    if-eq v1, v4, :cond_1

    .line 303
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/ui/WheelView;->getTextItem(I)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_2

    .line 309
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->initResourcesIfNecessary()V

    .line 354
    move v3, p1

    .line 356
    .local v3, "width":I
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->getMaxTextLength()I

    move-result v0

    .line 357
    .local v0, "maxLength":I
    if-lez v0, :cond_3

    .line 358
    const-string v4, "0"

    iget-object v5, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    invoke-static {v4, v5}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 359
    .local v2, "textWidth":F
    int-to-float v4, v0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    .line 363
    .end local v2    # "textWidth":F
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    add-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "recalculate":Z
    const/high16 v4, 0x40000000    # 2.0f

    if-ne p2, v4, :cond_4

    .line 367
    move v3, p1

    .line 368
    const/4 v1, 0x1

    .line 379
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 381
    add-int/lit8 v4, v3, -0x14

    iput v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    .line 384
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    if-lez v4, :cond_2

    .line 385
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/WheelView;->createLayouts(I)V

    .line 388
    :cond_2
    return v3

    .line 361
    .end local v1    # "recalculate":Z
    :cond_3
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    goto :goto_0

    .line 371
    .restart local v1    # "recalculate":Z
    :cond_4
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 373
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_0

    if-ge p1, v3, :cond_0

    .line 374
    move v3, p1

    .line 375
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    return-void
.end method

.method private createLayouts(I)V
    .locals 9
    .param p1, "widthItems"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 393
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    invoke-direct {p0, v1}, Lcom/android/camera/ui/WheelView;->buildText(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    .line 400
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_6

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getAdapter()Lcom/android/camera/ui/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getAdapter()Lcom/android/camera/ui/WheelAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mLabel:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "text":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v8, :cond_5

    move-object v1, v8

    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    .line 413
    .end local v8    # "text":Ljava/lang/String;
    :goto_3
    return-void

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_0

    .line 401
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 404
    .restart local v8    # "text":Ljava/lang/String;
    :cond_5
    const-string v1, ""

    goto :goto_2

    .line 407
    .end local v8    # "text":Ljava/lang/String;
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    if-eqz v0, :cond_7

    .line 408
    iput-object v8, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    goto :goto_3

    .line 410
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_3
.end method

.method private doScroll(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    const/4 v5, 0x0

    .line 501
    iget v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    .line 502
    iget v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->getItemHeight()I

    move-result v4

    div-int v0, v3, v4

    .line 503
    .local v0, "count":I
    iget v3, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    sub-int v2, v3, v0

    .line 504
    .local v2, "pos":I
    iget-boolean v3, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 506
    :goto_0
    if-gez v2, :cond_0

    .line 507
    iget-object v3, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 509
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v3

    rem-int/2addr v2, v3

    .line 525
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    .line 526
    .local v1, "offset":I
    iget v3, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    if-eq v2, v3, :cond_6

    .line 527
    invoke-virtual {p0, v2, v5}, Lcom/android/camera/ui/WheelView;->setCurrentItem(IZ)V

    .line 533
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    .line 534
    iget v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 535
    iget v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getHeight()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    .line 537
    :cond_2
    return-void

    .line 510
    .end local v1    # "offset":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    if-eqz v3, :cond_5

    .line 512
    if-gez v2, :cond_4

    .line 513
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    .line 514
    const/4 v2, 0x0

    goto :goto_1

    .line 515
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 516
    iget v3, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 517
    iget-object v3, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 521
    :cond_5
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 522
    iget-object v3, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 529
    .restart local v1    # "offset":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 478
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 479
    .local v0, "top":I
    const/4 v1, 0x0

    neg-int v2, v0

    iget v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 480
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    const v2, 0x4fffffff    # 8.5899341E9f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 481
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 482
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 461
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 463
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 464
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 467
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 469
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 470
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 473
    :cond_0
    return-void
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->getItemHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, -0xf

    .line 245
    .local v0, "desired":I
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 247
    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 341
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mItemHeight:I

    if-eqz v0, :cond_0

    .line 342
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mItemHeight:I

    .line 348
    :goto_0
    return v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/WheelView;->mItemHeight:I

    .line 345
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mItemHeight:I

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaxTextLength()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getAdapter()Lcom/android/camera/ui/WheelAdapter;

    move-result-object v0

    .line 318
    .local v0, "adapter":Lcom/android/camera/ui/WheelAdapter;
    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v6

    .line 322
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/ui/WheelAdapter;->getMaximumLength()I

    move-result v8

    iget-object v7, p0, Lcom/android/camera/ui/WheelView;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/ui/WheelView;->mLabel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    :goto_1
    add-int v1, v8, v7

    .line 323
    .local v1, "adapterLength":I
    if-lez v1, :cond_3

    move v6, v1

    .line 324
    goto :goto_0

    .end local v1    # "adapterLength":I
    :cond_2
    move v7, v6

    .line 322
    goto :goto_1

    .line 327
    .restart local v1    # "adapterLength":I
    :cond_3
    const/4 v4, 0x0

    .line 328
    .local v4, "maxText":Ljava/lang/String;
    iget v7, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    div-int/lit8 v2, v7, 0x2

    .line 329
    .local v2, "addItems":I
    iget v7, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    sub-int/2addr v7, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 330
    .local v3, "i":I
    :goto_2
    iget v7, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    iget v8, p0, Lcom/android/camera/ui/WheelView;->mVisibleItems:I

    add-int/2addr v7, v8

    invoke-interface {v0}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 331
    invoke-interface {v0, v3}, Lcom/android/camera/ui/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 333
    :cond_4
    move-object v4, v5

    .line 330
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 337
    .end local v5    # "text":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0
.end method

.method private getTextItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v1

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v0

    .line 255
    .local v0, "count":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    if-eqz v2, :cond_0

    .line 258
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    .line 259
    add-int/2addr p1, v0

    goto :goto_1

    .line 263
    :cond_4
    rem-int/2addr p1, v0

    .line 264
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 93
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;

    .line 94
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x42960000    # 75.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsPaint:Landroid/text/TextPaint;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x43020000    # 130.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mValuePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v2, 0x0

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, -0x6c000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 235
    :cond_1
    return-void
.end method

.method private invalidateLayouts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    .line 215
    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mValueLayout:Landroid/text/StaticLayout;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    .line 217
    return-void
.end method

.method private justify()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 609
    :cond_0
    iput v1, p0, Lcom/android/camera/ui/WheelView;->mLastScrollY:I

    .line 610
    iget v4, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    .line 611
    .local v4, "offset":I
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->getItemHeight()I

    move-result v6

    .line 612
    .local v6, "itemHeight":I
    if-lez v4, :cond_4

    iget v0, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    move v7, v8

    .line 613
    .local v7, "needToIncrease":Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    if-nez v0, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    int-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 614
    if-gez v4, :cond_6

    .line 615
    add-int/lit8 v0, v6, 0xa

    add-int/2addr v4, v0

    .line 619
    :cond_2
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_7

    .line 620
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 621
    invoke-direct {p0, v8}, Lcom/android/camera/ui/WheelView;->setNextMessage(I)V

    goto :goto_0

    .end local v7    # "needToIncrease":Z
    :cond_3
    move v7, v1

    .line 612
    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    if-lez v0, :cond_5

    move v7, v8

    goto :goto_1

    :cond_5
    move v7, v1

    goto :goto_1

    .line 617
    .restart local v7    # "needToIncrease":Z
    :cond_6
    add-int/lit8 v0, v6, 0xa

    sub-int/2addr v4, v0

    goto :goto_2

    .line 623
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->finishScrolling()V

    goto :goto_0
.end method

.method private setNextMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->clearMessages()V

    .line 569
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 570
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    .line 630
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->notifyScrollingListenersAboutStart()V

    .line 632
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/android/camera/ui/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/OnWheelChangedListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public addScrollingListener(Lcom/android/camera/ui/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/OnWheelScrollListener;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method finishScrolling()V
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->invalidateLayouts()V

    .line 640
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->invalidate()V

    .line 641
    return-void
.end method

.method public getAdapter()Lcom/android/camera/ui/WheelAdapter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    return v0
.end method

.method public getItemIndexByValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, -0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/camera/ui/WheelAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getItemValue(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 268
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v0

    .line 272
    .local v0, "count":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    if-eqz v2, :cond_0

    .line 275
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    .line 276
    add-int/2addr p1, v0

    goto :goto_1

    .line 279
    :cond_4
    rem-int/2addr p1, v0

    .line 280
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/WheelAdapter;->getItemValue(I)I

    move-result v1

    goto :goto_0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/OnWheelChangedListener;

    .line 141
    .local v1, "listener":Lcom/android/camera/ui/OnWheelChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/android/camera/ui/OnWheelChangedListener;->onChanged(Lcom/android/camera/ui/WheelView;II)V

    goto :goto_0

    .line 143
    .end local v1    # "listener":Lcom/android/camera/ui/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/OnWheelScrollListener;

    .line 161
    .local v1, "listener":Lcom/android/camera/ui/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/android/camera/ui/OnWheelScrollListener;->onScrollingFinished(Lcom/android/camera/ui/WheelView;)V

    goto :goto_0

    .line 163
    .end local v1    # "listener":Lcom/android/camera/ui/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/camera/ui/WheelView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/OnWheelScrollListener;

    .line 155
    .local v1, "listener":Lcom/android/camera/ui/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/android/camera/ui/OnWheelScrollListener;->onScrollingStarted(Lcom/android/camera/ui/WheelView;)V

    goto :goto_0

    .line 157
    .end local v1    # "listener":Lcom/android/camera/ui/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 442
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    if-nez v0, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/WheelView;->calculateLayoutWidth(II)I

    .line 449
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    if-lez v0, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 452
    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    invoke-direct {p0, p1}, Lcom/android/camera/ui/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/android/camera/ui/WheelView;->drawValue(Landroid/graphics/Canvas;)V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 457
    :cond_1
    return-void

    .line 445
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mItemsWidth:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/WheelView;->createLayouts(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 417
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 418
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 419
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 420
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 422
    .local v2, "heightSize":I
    invoke-direct {p0, v5, v4}, Lcom/android/camera/ui/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 425
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 426
    move v0, v2

    .line 435
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/ui/WheelView;->setMeasuredDimension(II)V

    .line 436
    return-void

    .line 428
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/WheelView;->mItemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v6}, Lcom/android/camera/ui/WheelView;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v0

    .line 430
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 431
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getAdapter()Lcom/android/camera/ui/WheelAdapter;

    move-result-object v0

    .line 490
    .local v0, "adapter":Lcom/android/camera/ui/WheelAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v2

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->justify()V

    goto :goto_0
.end method

.method public scroll(II)V
    .locals 7
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 646
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mScrollingOffset:I

    iput v0, p0, Lcom/android/camera/ui/WheelView;->mLastScrollY:I

    .line 647
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->getItemHeight()I

    move-result v0

    mul-int v6, p1, v0

    .line 649
    .local v6, "offset":I
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/camera/ui/WheelView;->mLastScrollY:I

    iget v3, p0, Lcom/android/camera/ui/WheelView;->mLastScrollY:I

    sub-int v4, v6, v3

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 650
    invoke-direct {p0, v1}, Lcom/android/camera/ui/WheelView;->setNextMessage(I)V

    .line 652
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->startScrolling()V

    .line 653
    return-void
.end method

.method public setAdapter(Lcom/android/camera/ui/WheelAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/camera/ui/WheelAdapter;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    .line 102
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->invalidateLayouts()V

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->invalidate()V

    .line 104
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/WheelView;->setCurrentItem(IZ)V

    .line 200
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lt p1, v1, :cond_4

    .line 174
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    if-eqz v1, :cond_0

    .line 175
    :goto_1
    if-gez p1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v1

    rem-int/2addr p1, v1

    .line 183
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    if-eq p1, v1, :cond_0

    .line 184
    if-eqz p2, :cond_5

    .line 185
    iget v1, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    sub-int v1, p1, v1

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/WheelView;->scroll(II)V

    goto :goto_0

    .line 187
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->invalidateLayouts()V

    .line 188
    iget v0, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    .line 189
    .local v0, "old":I
    iput p1, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    .line 191
    iget v1, p0, Lcom/android/camera/ui/WheelView;->mCurrentItem:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/WheelView;->notifyChangingListeners(II)V

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/camera/ui/WheelView;->mIsCyclic:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->invalidate()V

    .line 210
    invoke-direct {p0}, Lcom/android/camera/ui/WheelView;->invalidateLayouts()V

    .line 211
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 108
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;

    .line 109
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/WheelView;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/WheelView;->mLabel:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/ui/WheelView;->invalidate()V

    .line 129
    :cond_1
    return-void
.end method
