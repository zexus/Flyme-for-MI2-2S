.class public Lcom/android/camera/ui/V6BottomControlUpperPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6BottomControlUpperPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field public mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

.field private mControlVisible:Z

.field public mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6BottomControlUpperPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6BottomControlUpperPanel;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mControlVisible:Z

    return v0
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 81
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;I)V

    .line 82
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 92
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6TopControl animateIn getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    iput-object v3, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mControlVisible:Z

    if-nez v0, :cond_4

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 110
    if-eqz p3, :cond_2

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->setVisibility(I)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->clearAnimation()V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mControlVisible:Z

    .line 126
    :cond_4
    return-void

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    iput-object v3, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 86
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;I)V

    .line 87
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 97
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v3, 0x0

    .line 131
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6TopControl animateOut getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mControlVisible:Z

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 136
    iput-object v3, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    if-eqz p3, :cond_2

    .line 141
    new-instance v0, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;-><init>(Lcom/android/camera/ui/V6BottomControlUpperPanel;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->clearAnimation()V

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :cond_1
    :goto_1
    return-void

    .line 153
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 163
    iput-object v3, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v0

    goto :goto_0
.end method

.method public getFlashButton()Lcom/android/camera/ui/V6FlashButton;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    goto :goto_0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    goto :goto_0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 179
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 184
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    return-void
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->setVisibility(I)V

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mControlVisible:Z

    .line 61
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 38
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraTopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    .line 39
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoTopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    .line 41
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6CameraTopControlPanel;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6VideoTopControlPanel;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 33
    return-void
.end method
