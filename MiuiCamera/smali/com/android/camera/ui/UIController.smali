.class public Lcom/android/camera/ui/UIController;
.super Lcom/android/camera/ui/V6ModuleUI;
.source "UIController.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field public mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

.field public mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

.field public mEffectSettingPage:Lcom/android/camera/ui/V6EffectSettingPage;

.field public mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field public mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

.field public mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field public mSettingPage:Lcom/android/camera/ui/V6SettingPage;

.field public mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

.field public mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

.field public mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

.field private mV6SettingAnimationManager:Lcom/android/camera/ui/V6SettingAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ModuleUI;-><init>(Lcom/android/camera/Camera;)V

    .line 34
    new-instance v0, Lcom/android/camera/ui/V6SettingAnimationManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6SettingAnimationManager;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mV6SettingAnimationManager:Lcom/android/camera/ui/V6SettingAnimationManager;

    .line 35
    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 99
    packed-switch p3, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/camera/Camera;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAsdIndicator()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/V6BottomControlLowerPanel;

    return-object v0
.end method

.method public getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    return-object v0
.end method

.method public getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/V6BottomControlUpperPanel;

    return-object v0
.end method

.method public getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureDelayNumber()Lcom/android/camera/ui/RotateTextView;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getCaptureProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getProgressBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    return-object v0
.end method

.method public getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    return-object v0
.end method

.method public getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEffectSettingPage:Lcom/android/camera/ui/V6EffectSettingPage;

    return-object v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/V6FlashButton;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    return-object v0
.end method

.method public getFocusView()Lcom/android/camera/ui/FocusView;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    return-object v0
.end method

.method public getModeExitView()Lcom/android/camera/ui/V6ModeExitView;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getObjectView()Lcom/android/camera/ui/ObjectView;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    return-object v0
.end method

.method public getPanoramaViewRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/V6BottomControlLowerPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    return-object v0
.end method

.method public getPopupParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPopupParentLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 326
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    return-object v0
.end method

.method public getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewPlayView()Lcom/android/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6BottomControlPanel;->mSeekBarIndicator:Lcom/android/camera/ui/V6SeekBarIndicator;

    return-object v0
.end method

.method public getSettingAnimationManager()Lcom/android/camera/ui/V6SettingAnimationManager;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mV6SettingAnimationManager:Lcom/android/camera/ui/V6SettingAnimationManager;

    return-object v0
.end method

.method public getSettingButton()Lcom/android/camera/ui/V6SettingButton;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    return-object v0
.end method

.method public getSettingPage()Lcom/android/camera/ui/V6SettingPage;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    return-object v0
.end method

.method public getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    return-object v0
.end method

.method public getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    return-object v0
.end method

.method public getWarningMessageParent()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getWarningMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 73
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mV6SettingAnimationManager:Lcom/android/camera/ui/V6SettingAnimationManager;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/camera/ui/V6SettingAnimationManager;->handleGestureMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :sswitch_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/EffectController;->setBlurEffect(Z)V

    .line 78
    iget-object v2, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 79
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/V6BottomControlUpperPanel;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6BottomControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6SeekBarIndicator;->updateSeekPoints(I)V

    goto :goto_0

    .line 90
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    goto :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c000a -> :sswitch_1
        0x7f0c0078 -> :sswitch_0
        0x7f0c007e -> :sswitch_2
    .end sparse-switch
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCameraOpen()V

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    .line 60
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 39
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    .line 40
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    .line 41
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    .line 42
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 43
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectSettingPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mEffectSettingPage:Lcom/android/camera/ui/V6EffectSettingPage;

    .line 44
    const v0, 0x7f0c0095

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SmartShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    .line 45
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingsStatusBar;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    .line 46
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 47
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SurfaceViewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    .line 48
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EdgeShutterView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/UIController;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 51
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCreate()V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 53
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onResume()V

    .line 65
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBlurEffect(Z)V

    .line 66
    return-void
.end method

.method public updatePreferenceGroup()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06000a

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/PreferenceGroup;

    iput-object v1, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 117
    return-void

    .line 114
    :cond_0
    const v1, 0x7f060002

    goto :goto_0
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/V6BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->updateThumbnailView(Lcom/android/camera/Thumbnail;)V

    .line 145
    return-void
.end method

.method public useProperView()V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->initSurfaceView()V

    goto :goto_0
.end method
