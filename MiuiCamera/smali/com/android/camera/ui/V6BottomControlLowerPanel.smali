.class public Lcom/android/camera/ui/V6BottomControlLowerPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6BottomControlLowerPanel.java"


# instance fields
.field public mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

.field public mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

.field private mControlVisible:Z

.field public mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6BottomControlLowerPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6BottomControlLowerPanel;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mControlVisible:Z

    return v0
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6BottomControl animateIn getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mControlVisible:Z

    if-nez v0, :cond_2

    .line 103
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6BottomControl animateIn be1 getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->setVisibility(I)V

    .line 107
    :cond_1
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6BottomControl animateIn be2 getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 113
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mControlVisible:Z

    .line 115
    :cond_2
    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->animateIn(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 124
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V6BottomControl animateOut getVisibility()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mControlVisible:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    new-instance v0, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;-><init>(Lcom/android/camera/ui/V6BottomControlLowerPanel;Ljava/lang/Runnable;)V

    .line 138
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 144
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v0    # "r":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->animateOut(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public animationSwitchToCamera(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 52
    return-void
.end method

.method public animationSwitchToVideo(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 47
    return-void
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    goto :goto_0
.end method

.method public getProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getProgressBar()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getProgressBar()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CaptureControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CaptureControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mControlVisible:Z

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCreate()V

    .line 36
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 25
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraBottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    .line 27
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoBottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    .line 29
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CaptureControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

    .line 31
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->updateThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->updateThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 63
    return-void
.end method
