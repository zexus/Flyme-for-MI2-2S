.class Lcom/android/settings_ext/display/m;
.super Ljava/lang/Object;
.source "HandyModeGuideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic UN:Lcom/android/settings_ext/display/HandyModeGuideView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/HandyModeGuideView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ext/display/m;->UN:Lcom/android/settings_ext/display/HandyModeGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ext/display/m;->UN:Lcom/android/settings_ext/display/HandyModeGuideView;

    iget v0, v0, Lcom/android/settings_ext/display/HandyModeGuideView;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/display/m;->UN:Lcom/android/settings_ext/display/HandyModeGuideView;

    iget v0, v0, Lcom/android/settings_ext/display/HandyModeGuideView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/display/m;->UN:Lcom/android/settings_ext/display/HandyModeGuideView;

    iget v0, v0, Lcom/android/settings_ext/display/HandyModeGuideView;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/display/m;->UN:Lcom/android/settings_ext/display/HandyModeGuideView;

    invoke-virtual {v0}, Lcom/android/settings_ext/display/HandyModeGuideView;->invalidate()V

    .line 96
    :cond_1
    return-void
.end method
