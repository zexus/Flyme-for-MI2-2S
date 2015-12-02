.class public Lcom/android/zxing/ui/QRCodeFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "QRCodeFragmentLayout.java"


# instance fields
.field private mDispatchTouchEvent:Z

.field private mFadeHide:Landroid/view/animation/Animation;

.field private mFadeShow:Landroid/view/animation/Animation;

.field private mViewFinderButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    .line 72
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    .line 73
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;

    invoke-direct {v1, p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;-><init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 89
    return-void
.end method
