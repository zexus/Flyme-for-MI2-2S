.class public Lcom/android/camera/ui/V6VideoTopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6VideoTopControlPanel.java"


# instance fields
.field public mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

.field public mFlashButton:Lcom/android/camera/ui/V6FlashButton;

.field public mHdrButton:Lcom/android/camera/ui/HdrButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/V6FlashButton;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 22
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6FlashButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    .line 23
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraPicker;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    .line 24
    const v0, 0x7f0c0099

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    .line 25
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HdrButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6FlashButton;->initializeXml(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HdrButton;->initializeXml(Z)V

    .line 29
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->setVisibility(I)V

    .line 38
    :goto_0
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 39
    return-void

    .line 36
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->setVisibility(I)V

    goto :goto_0
.end method
