.class public Lcom/android/camera/ui/V6CameraBottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6CameraBottomControlPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final DURATION_IN:I

.field private static final DURATION_OUT:I


# instance fields
.field private mAnimationSwitchInCallback:Ljava/lang/Runnable;

.field private mAnimationSwitchOutCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

.field public mProgressBar:Landroid/view/View;

.field public mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

.field private mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field public mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

.field private mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field private mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    .line 22
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    :goto_0
    sput v0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->DURATION_IN:I

    .line 23
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_0

    const/16 v1, 0xfa

    :cond_0
    sput v1, Lcom/android/camera/ui/V6CameraBottomControlPanel;->DURATION_OUT:I

    return-void

    :cond_1
    move v0, v1

    .line 22
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .locals 10
    .param p1, "thumbnailButtonWidth"    # F
    .param p2, "shutterButtonWidth"    # F
    .param p3, "modulePickerWidth"    # F
    .param p4, "padding"    # F

    .prologue
    .line 127
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/V6CameraBottomControlPanel;->DURATION_IN:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

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

    .line 140
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .locals 10
    .param p1, "thumbnailButtonWidth"    # F
    .param p2, "shutterButtonWidth"    # F
    .param p3, "modulePickerWidth"    # F
    .param p4, "padding"    # F

    .prologue
    .line 72
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/V6CameraBottomControlPanel;->DURATION_IN:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 75
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

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

    .line 85
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 98
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

    .line 102
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/android/camera/ui/V6CameraBottomControlPanel;->DURATION_IN:I

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v2, p4

    move v5, v3

    move v6, v4

    move v7, v3

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 113
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/android/camera/ui/V6CameraBottomControlPanel;->DURATION_OUT:I

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v10, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-float v6, p4

    move v5, v1

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6CameraBottomControlPanel animateIn getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public animateSwitch(Ljava/lang/Runnable;Z)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "in"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->clearAnimation()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModulePicker;->clearAnimation()V

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 154
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    return-object v0
.end method

.method public getProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 181
    iput-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwitchOut:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 185
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 187
    iput-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 195
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 174
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 56
    const v4, 0x7f0c0043

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    .line 57
    const v4, 0x7f0c0045

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    .line 58
    const v4, 0x7f0c0049

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    .line 59
    const v4, 0x7f0c0048

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mProgressBar:Landroid/view/View;

    .line 61
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v4, v4, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 62
    .local v3, "thumbnailButtonWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 63
    .local v2, "shutterButtonWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModulePicker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v0, v4

    .line 64
    .local v0, "modulePickerWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v1, v4

    .line 65
    .local v1, "padding":F
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->initShutterButtonSwitchAnimation(FFFF)V

    .line 66
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->initModulePickerSwitchAnimation(FFFF)V

    .line 67
    add-float v4, v1, v3

    invoke-direct {p0, v3, v2, v0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->initThumbnailButtonSwitchAnimation(FFFF)V

    .line 68
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 38
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 39
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    goto :goto_0
.end method
