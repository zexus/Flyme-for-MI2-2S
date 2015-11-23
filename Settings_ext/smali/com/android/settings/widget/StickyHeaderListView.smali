.class public Lcom/android/settings_ext/widget/StickyHeaderListView;
.super Landroid/widget/ListView;
.source "StickyHeaderListView.java"


# instance fields
.field private arJ:Landroid/view/View;

.field private arK:Landroid/view/View;

.field private arL:Z

.field private arM:I

.field private arN:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    .line 72
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arK:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 99
    iput-boolean v2, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arL:Z

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arJ:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arK:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arK:Landroid/view/View;

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arK:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arJ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 108
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 109
    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    if-lt v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_4

    .line 111
    :cond_0
    neg-int v4, v1

    iget v5, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 113
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v2, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    neg-int v4, v1

    iget v5, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v6, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 119
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arL:Z

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/widget/StickyHeaderListView;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 124
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arJ:Landroid/view/View;

    goto :goto_0

    :cond_3
    move v1, v2

    .line 106
    goto :goto_1

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arN:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_2
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/ListView;->isVerticalScrollBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arL:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ext/widget/StickyHeaderListView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arM:I

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    .line 137
    :cond_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arJ:Landroid/view/View;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ext/widget/StickyHeaderListView;->tL()V

    .line 80
    :cond_0
    return-void
.end method

.method public tL()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arJ:Landroid/view/View;

    .line 84
    const-string v0, "stickyContainer"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/widget/StickyHeaderListView;->arK:Landroid/view/View;

    .line 85
    return-void
.end method
