.class public Lcom/android/camera/ui/V6SettingsStatusBar;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6SettingsStatusBar.java"


# instance fields
.field private mAudioCapture:Lcom/android/camera/ui/RotateImageView;

.field private mColorEffect:Lcom/android/camera/ui/RotateImageView;

.field private mEvTextView:Lcom/android/camera/ui/RotateTextView;

.field private mFaceBeauty:Lcom/android/camera/ui/RotateImageView;

.field private mMarginTop:I

.field private mMarginTopLandscape:I

.field private mOrientation:I

.field private mVisible:Z

.field private mZoomTextView:Lcom/android/camera/ui/RotateTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mOrientation:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6SettingsStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingsStatusBar;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    return v0
.end method

.method private updateColorEffect()V
    .locals 7

    .prologue
    const v6, 0x7f0e0081

    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "colorEffect":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 131
    .local v1, "showColorEffect":Z
    :goto_0
    if-nez v1, :cond_2

    .line 132
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mColorEffect:Lcom/android/camera/ui/RotateImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 136
    :goto_1
    return-void

    .end local v1    # "showColorEffect":Z
    :cond_1
    move v1, v2

    .line 128
    goto :goto_0

    .line 134
    .restart local v1    # "showColorEffect":Z
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mColorEffect:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateLayoutParameter(ILcom/android/camera/ui/RotateTextView;)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "view"    # Lcom/android/camera/ui/RotateTextView;

    .prologue
    .line 180
    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/android/camera/ui/RotateTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 196
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/camera/ui/RotateTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void

    .line 184
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :sswitch_0
    iget v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTop:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 187
    :sswitch_1
    iget v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTopLandscape:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 190
    :sswitch_2
    iget v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTop:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 193
    :sswitch_3
    iget v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTopLandscape:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    if-nez v0, :cond_2

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 64
    :cond_2
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Lcom/android/camera/ui/V6SettingsStatusBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6SettingsStatusBar$1;-><init>(Lcom/android/camera/ui/V6SettingsStatusBar;Ljava/lang/Runnable;)V

    .line 82
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 165
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 172
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mFaceBeauty:Lcom/android/camera/ui/RotateImageView;

    .line 36
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mColorEffect:Lcom/android/camera/ui/RotateImageView;

    .line 37
    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mAudioCapture:Lcom/android/camera/ui/RotateImageView;

    .line 38
    const v0, 0x7f0c0092

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    .line 39
    const v0, 0x7f0c0093

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTop:I

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTopLandscape:I

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 202
    iget v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mOrientation:I

    if-eq v3, p1, :cond_0

    .line 203
    iput p1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mOrientation:I

    .line 204
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    invoke-direct {p0, p1, v3}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateLayoutParameter(ILcom/android/camera/ui/RotateTextView;)V

    .line 205
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    invoke-direct {p0, p1, v3}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateLayoutParameter(ILcom/android/camera/ui/RotateTextView;)V

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p2    # "animation":Z
    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 210
    .local v1, "i":Landroid/view/View;
    instance-of v3, v1, Lcom/android/camera/ui/Rotatable;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 211
    check-cast v3, Lcom/android/camera/ui/Rotatable;

    instance-of v4, v1, Lcom/android/camera/ui/RotateTextView;

    if-eqz v4, :cond_2

    move v0, p2

    .local v0, "animation":Z
    :goto_1
    invoke-interface {v3, p1, v0}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .end local v0    # "animation":Z
    :cond_2
    move v0, p2

    .restart local v0    # "animation":Z
    goto :goto_1

    .line 214
    .end local v0    # "animation":Z
    .end local v1    # "i":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public updateEV()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 139
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 140
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    mul-float v0, v3, v4

    .line 141
    .local v0, "ev":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 142
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const-string v2, "-"

    .line 143
    .local v2, "symbol":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    const-string v4, "%s %.1f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 148
    .end local v2    # "symbol":Ljava/lang/String;
    :goto_1
    return-void

    .line 142
    :cond_0
    const-string v2, "+"

    goto :goto_0

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateStatus()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateColorEffect()V

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 94
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "pref_camera_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v0, "pref_camera_exposure_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    goto :goto_0
.end method

.method public updateZoom()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 151
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 152
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v1

    .line 154
    .local v1, "valueIndex":I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v2, v3, v4

    .line 155
    .local v2, "zoomScale":F
    const v3, 0x3f8147ae    # 1.01f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    const-string v4, "x %.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 162
    .end local v1    # "valueIndex":I
    .end local v2    # "zoomScale":F
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    goto :goto_0
.end method
