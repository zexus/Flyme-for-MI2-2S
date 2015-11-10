.class public Lmiui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/component/MamlView$InnerView;
    }
.end annotation


# instance fields
.field private mHasDelay:Z

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mUpdater:Lmiui/maml/RenderUpdater;

.field private mView:Lmiui/maml/component/MamlView$InnerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 41
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "startDelay"    # J

    .prologue
    .line 45
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "startDelay"    # J

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setClickable(Z)V

    .line 51
    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setFocusableInTouchMode(Z)V

    .line 54
    new-instance v3, Lmiui/maml/component/MamlView$InnerView;

    invoke-direct {v3, p0, p1}, Lmiui/maml/component/MamlView$InnerView;-><init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    .line 55
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 58
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    invoke-virtual {p0, v3, v2}, Lmiui/maml/component/MamlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iput-object p2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 60
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, p0}, Lmiui/maml/ScreenElementRoot;->setViewManager(Landroid/view/ViewManager;)V

    .line 61
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v4, Lmiui/maml/component/MamlView$1;

    invoke-direct {v4, p0}, Lmiui/maml/component/MamlView$1;-><init>(Lmiui/maml/component/MamlView;)V

    invoke-virtual {v3, v4}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 70
    :cond_0
    new-instance v3, Lmiui/maml/component/MamlView$2;

    iget-object v4, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, p0, v4, p3}, Lmiui/maml/component/MamlView$2;-><init>(Lmiui/maml/component/MamlView;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    .line 76
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_1

    .line 77
    iput-boolean v6, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 79
    .local v0, "createTime":J
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v3, v0, v1, p4, p5}, Lmiui/maml/RenderUpdater;->setStartDelay(JJ)V

    .line 81
    .end local v0    # "createTime":J
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/component/MamlView;)Lmiui/maml/component/MamlView$InnerView;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/component/MamlView;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    .line 22
    iget-boolean v0, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    return v0
.end method

.method static synthetic access$200(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderUpdater;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/component/MamlView;)F
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    .line 22
    iget v0, p0, Lmiui/maml/component/MamlView;->mScale:F

    return v0
.end method

.method static synthetic access$400(Lmiui/maml/component/MamlView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    .line 22
    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/component/MamlView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    .line 22
    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    return v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->cleanUp(Z)V

    .line 130
    return-void
.end method

.method public cleanUp(Z)V
    .locals 1
    .param p1, "keepResource"    # Z

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 136
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->cleanUp()V

    .line 137
    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 125
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->init()V

    .line 126
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 190
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    .line 191
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 196
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    .line 197
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 110
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v2, "accessibilityText"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 115
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 209
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 211
    iget-object v5, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 212
    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string v5, "view_width"

    sub-int v6, p4, p2

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 213
    const-string v5, "view_height"

    sub-int v6, p5, p3

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 215
    move v3, p2

    .line 216
    .local v3, "x":I
    move v4, p3

    .line 217
    .local v4, "y":I
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mParent:Landroid/view/ViewParent;

    .line 218
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 219
    check-cast v1, Landroid/view/View;

    .line 220
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 223
    goto :goto_0

    .line 225
    .end local v1    # "parentView":Landroid/view/View;
    :cond_0
    const-string v5, "view_x"

    int-to-float v6, v3

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 226
    const-string v5, "view_y"

    int-to-float v6, v4

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 228
    iget-object v5, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v5}, Lmiui/maml/RenderUpdater;->triggerUpdate()V

    .line 229
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onPause()V

    .line 201
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onResume()V

    .line 205
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 167
    .local v0, "b":Z
    iget-boolean v1, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 169
    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 172
    :cond_0
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 173
    const/4 v1, 0x1

    .line 175
    .end local v0    # "b":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoCleanup(Z)Lmiui/maml/component/MamlView;
    .locals 1
    .param p1, "autoCleanup"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderUpdater;->setAutoCleanup(Z)V

    .line 119
    return-object p0
.end method

.method public setScale(FII)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 234
    iput p1, p0, Lmiui/maml/component/MamlView;->mScale:F

    .line 235
    iput p2, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    .line 236
    iput p3, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    .line 237
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 156
    if-nez p1, :cond_1

    .line 157
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    goto :goto_0
.end method
