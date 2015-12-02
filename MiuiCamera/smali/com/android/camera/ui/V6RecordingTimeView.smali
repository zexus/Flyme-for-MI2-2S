.class public Lcom/android/camera/ui/V6RecordingTimeView;
.super Lcom/android/camera/ui/RotateTextView;
.source "V6RecordingTimeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field private mMarginTop:I

.field private mMarginTopLandscape:I

.field private mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateTextView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private updateLayoutParameter(ILcom/android/camera/ui/RotateTextView;)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "view"    # Lcom/android/camera/ui/RotateTextView;

    .prologue
    .line 222
    if-eqz p2, :cond_0

    .line 223
    invoke-virtual {p2}, Lcom/android/camera/ui/RotateTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 238
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/camera/ui/RotateTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 226
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_0
    iget v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mMarginTop:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 229
    :sswitch_1
    iget v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mMarginTopLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 232
    :sswitch_2
    iget v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mMarginTop:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 235
    :sswitch_3
    iget v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mMarginTopLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 224
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
.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    iput-object v2, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 82
    if-eqz p3, :cond_1

    .line 83
    const-string v0, "Camera16"

    const-string v1, "recordingtime animateIn.run() 76"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "Camera16"

    const-string v1, "mAnimationOutCallback.run() 80"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    :cond_3
    :goto_0
    return-void

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    iput-object v2, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "Camera16"

    const-string v1, "mAnimationOutCallback.run() 100"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 110
    iput-object v2, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 113
    :cond_0
    if-eqz p3, :cond_3

    .line 114
    new-instance v0, Lcom/android/camera/ui/V6RecordingTimeView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6RecordingTimeView$1;-><init>(Lcom/android/camera/ui/V6RecordingTimeView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 127
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "Camera16"

    const-string v1, "mAnimationOutCallback.run() 120"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 130
    iput-object v2, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    :cond_2
    :goto_1
    return-void

    .line 124
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "Camera16"

    const-string v1, "mAnimationOutCallback.run() 127"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    iput-object v2, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 187
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 199
    iput-object v2, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "Camera16"

    const-string v1, "mAnimationOutCallback.run() 191"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    iput-object v2, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 213
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 192
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 36
    invoke-super {p0}, Lcom/android/camera/ui/RotateTextView;->onFinishInflate()V

    .line 37
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mMarginTop:I

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mMarginTopLandscape:I

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    .line 169
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    .line 164
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 182
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 217
    invoke-direct {p0, p1, p0}, Lcom/android/camera/ui/V6RecordingTimeView;->updateLayoutParameter(ILcom/android/camera/ui/RotateTextView;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, v0}, Lcom/android/camera/ui/RotateTextView;->setOrientation(IZ)V

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
