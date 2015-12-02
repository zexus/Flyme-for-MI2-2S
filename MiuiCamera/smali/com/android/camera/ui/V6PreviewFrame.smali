.class public Lcom/android/camera/ui/V6PreviewFrame;
.super Landroid/widget/RelativeLayout;
.source "V6PreviewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAspectRatio:D

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    iput-wide v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    .line 26
    return-void
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 55
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreen()Z
    .locals 8

    .prologue
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 83
    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-double v2, v2

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 84
    .local v0, "screenRatio":D
    iget-wide v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLineColor(I)V

    .line 71
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PreviewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 72
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const v2, 0x7f0c007e

    const/4 v1, 0x1

    .line 110
    sub-int v0, p5, p3

    sub-int v3, p4, p2

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v3, 0x2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v3, 0x3

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->updatePreviewGrid(Z)V

    .line 126
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    .line 43
    :cond_0
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 46
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c007e

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 5
    .param p1, "ratio"    # D

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 77
    iput-wide p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    .line 80
    :cond_1
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 104
    return-void
.end method

.method public updatePreviewGrid(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    goto :goto_0
.end method
