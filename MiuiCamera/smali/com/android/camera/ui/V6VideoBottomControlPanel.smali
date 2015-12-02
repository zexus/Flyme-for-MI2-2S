.class public Lcom/android/camera/ui/V6VideoBottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6VideoBottomControlPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final DURATION_IN:I

.field private static final DURATION_OUT:I


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationSwitchInCallback:Ljava/lang/Runnable;

.field private mAnimationSwitchOutCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

.field public mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

.field private mProgressBar:Landroid/view/View;

.field public mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

.field private mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field public mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

.field private mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field private mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    .line 21
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    :goto_0
    sput v0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_IN:I

    .line 22
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_0

    const/16 v1, 0xfa

    :cond_0
    sput v1, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_OUT:I

    return-void

    :cond_1
    move v0, v1

    .line 21
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .locals 10
    .param p1, "thumbnailButtonWidth"    # F
    .param p2, "shutterButtonWidth"    # F
    .param p3, "modulePickerWidth"    # F
    .param p4, "padding"    # F

    .prologue
    .line 140
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_IN:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p2, p3

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p2, p3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .locals 10
    .param p1, "thumbnailButtonWidth"    # F
    .param p2, "shutterButtonWidth"    # F
    .param p3, "modulePickerWidth"    # F
    .param p4, "padding"    # F

    .prologue
    .line 91
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_IN:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method

.method private initThumbnailButtonSwitchAnimation(FFFF)V
    .locals 11
    .param p1, "thumbnailButtonWidth"    # F
    .param p2, "shutterButtonWidth"    # F
    .param p3, "modulePickerWidth"    # F
    .param p4, "padding"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_IN:I

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, p4

    move v5, v3

    move v6, v4

    move v7, v3

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 124
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_OUT:I

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v10, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    move v5, v1

    move v6, p4

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 135
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public animateSwitch(Ljava/lang/Runnable;Z)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "in"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 163
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->clearAnimation()V

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModulePicker;->clearAnimation()V

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 167
    iput-object p1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 177
    iput-object p1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    return-object v0
.end method

.method public getProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 192
    iput-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 196
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 198
    iput-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 207
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 185
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 61
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 62
    const v4, 0x7f0c0043

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    .line 63
    const v4, 0x7f0c0045

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    .line 64
    const v4, 0x7f0c0049

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    .line 65
    const v4, 0x7f0c009a

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6PauseRecordingButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    .line 66
    const v4, 0x7f0c0099

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    .line 67
    const v4, 0x7f0c0048

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mProgressBar:Landroid/view/View;

    .line 69
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v4, v4, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 70
    .local v3, "thumbnailButtonWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 71
    .local v2, "shutterButtonWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModulePicker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v0, v4

    .line 72
    .local v0, "modulePickerWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v1, v4

    .line 73
    .local v1, "padding":F
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->initShutterButtonSwitchAnimation(FFFF)V

    .line 74
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->initModulePickerSwitchAnimation(FFFF)V

    .line 75
    add-float v4, v1, v3

    invoke-direct {p0, v3, v2, v0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->initThumbnailButtonSwitchAnimation(FFFF)V

    .line 77
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationIn:Landroid/view/animation/Animation;

    .line 78
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationIn:Landroid/view/animation/Animation;

    sget v5, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_IN:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v4, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationOut:Landroid/view/animation/Animation;

    .line 83
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationOut:Landroid/view/animation/Animation;

    sget v5, Lcom/android/camera/ui/V6VideoBottomControlPanel;->DURATION_OUT:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/V6ShutterButton;->setModuleOwner(Z)V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 40
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 41
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    goto :goto_0
.end method
