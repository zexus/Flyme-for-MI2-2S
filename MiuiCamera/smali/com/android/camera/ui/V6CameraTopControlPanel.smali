.class public Lcom/android/camera/ui/V6CameraTopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6CameraTopControlPanel.java"


# instance fields
.field public mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

.field public mCountDownButton:Lcom/android/camera/ui/CountDownButton;

.field public mFlashButton:Lcom/android/camera/ui/V6FlashButton;

.field public mHdrButton:Lcom/android/camera/ui/HdrButton;

.field public mPeakButton:Lcom/android/camera/ui/PeakButton;

.field public mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/V6FlashButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 24
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6FlashButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    .line 25
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraPicker;

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    .line 26
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    .line 27
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HdrButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    .line 28
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PeakButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    .line 29
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mCountDownButton:Lcom/android/camera/ui/CountDownButton;

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6FlashButton;->initializeXml(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraTopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HdrButton;->initializeXml(Z)V

    .line 33
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 38
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->setVisibility(I)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->setVisibility(I)V

    goto :goto_0
.end method
