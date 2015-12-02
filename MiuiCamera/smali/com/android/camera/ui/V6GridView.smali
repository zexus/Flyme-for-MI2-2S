.class public Lcom/android/camera/ui/V6GridView;
.super Landroid/widget/GridView;
.source "V6GridView.java"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 23
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6GridView;->mActivity:Lcom/android/camera/ActivityBase;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6GridView;->mActivity:Lcom/android/camera/ActivityBase;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6GridView;->mActivity:Lcom/android/camera/ActivityBase;

    .line 29
    return-void
.end method

.method private clearSubViewsPressState(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GridView;->getChildCount()I

    move-result v0

    .line 57
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/V6GridView;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6GridView;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GridView;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 46
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GridView;->clearSubViewsPressState(Landroid/view/MotionEvent;)V

    .line 51
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GridView;->updateEffectPosition()V

    .line 82
    return-void
.end method

.method public updateEffectPosition()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GridView;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 66
    .local v7, "loc":[I
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 69
    .local v8, "ratio":F
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    aget v1, v7, v6

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GridView;->getNumColumns()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GridView;->getHorizontalSpacing()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GridView;->getVerticalSpacing()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/EffectController;->setSurfacePosition(IIIIII)V

    .line 76
    .end local v7    # "loc":[I
    .end local v8    # "ratio":F
    :cond_0
    return-void

    .line 67
    .restart local v7    # "loc":[I
    :cond_1
    const/high16 v0, 0x44340000    # 720.0f

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    div-float v8, v0, v1

    goto :goto_0
.end method
