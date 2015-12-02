.class public Lcom/android/camera/ui/V6BottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6BottomControlPanel.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mControl:Landroid/widget/RelativeLayout;

.field private mControlVisible:Z

.field public mLowerPanel:Lcom/android/camera/ui/V6BottomControlLowerPanel;

.field public mSeekBarIndicator:Lcom/android/camera/ui/V6SeekBarIndicator;

.field public mUpperPanel:Lcom/android/camera/ui/V6BottomControlUpperPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6BottomControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6BottomControlPanel;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControlVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6BottomControlPanel;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6BottomControlPanel;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControlVisible:Z

    if-nez v0, :cond_2

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 71
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->setBackgroundVisible(Z)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControlVisible:Z

    .line 79
    :cond_2
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControlVisible:Z

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Lcom/android/camera/ui/V6BottomControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomControlPanel$1;-><init>(Lcom/android/camera/ui/V6BottomControlPanel;Ljava/lang/Runnable;)V

    .line 98
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 102
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onCameraOpen()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 44
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControlVisible:Z

    .line 51
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "mKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mSeekBarIndicator:Lcom/android/camera/ui/V6SeekBarIndicator;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6SeekBarIndicator;->setVisibility(I)V

    .line 53
    iget-object v4, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mSeekBarIndicator:Lcom/android/camera/ui/V6SeekBarIndicator;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v3, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->setPageVisible(IZ)V

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mSeekBarIndicator:Lcom/android/camera/ui/V6SeekBarIndicator;

    const/4 v4, 0x2

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v4, v3}, Lcom/android/camera/ui/V6SeekBarIndicator;->setPageVisible(IZ)V

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mSeekBarIndicator:Lcom/android/camera/ui/V6SeekBarIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6SeekBarIndicator;->updateSeekPoints(I)V

    .line 57
    return-void

    .line 47
    .end local v0    # "mKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 49
    goto :goto_1

    .restart local v0    # "mKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v1, v3

    .line 53
    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 31
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBarIndicator;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mSeekBarIndicator:Lcom/android/camera/ui/V6SeekBarIndicator;

    .line 33
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomControlUpperPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/V6BottomControlUpperPanel;

    .line 35
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomControlLowerPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/V6BottomControlLowerPanel;

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlPanel;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mBackground:Landroid/view/View;

    .line 38
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    .line 39
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    return-void

    .line 61
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
