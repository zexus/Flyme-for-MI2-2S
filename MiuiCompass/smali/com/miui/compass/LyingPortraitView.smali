.class public abstract Lcom/miui/compass/LyingPortraitView;
.super Landroid/widget/ViewSwitcher;
.source "LyingPortraitView.java"


# instance fields
.field private mInAnimationLying:Landroid/view/animation/AnimationSet;

.field private mInAnimationPortrait:Landroid/view/animation/AnimationSet;

.field private mIsAnimationsInited:Z

.field private mOutAnimationLying:Landroid/view/animation/AnimationSet;

.field private mOutAnimationPortrat:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/LyingPortraitView;->mIsAnimationsInited:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/LyingPortraitView;->mIsAnimationsInited:Z

    .line 24
    return-void
.end method

.method private initAnimations()V
    .locals 10

    .prologue
    const/high16 v9, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getRotationCenterY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationLying:Landroid/view/animation/AnimationSet;

    .line 44
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 45
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationLying:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 47
    new-instance v0, Lcom/miui/compass/Rotate3dAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getRotationCenterY()F

    move-result v3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/miui/compass/Rotate3dAnimation;-><init>(FFFF)V

    .line 48
    .restart local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationLying:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 51
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationPortrat:Landroid/view/animation/AnimationSet;

    .line 52
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    invoke-direct {v0, v8, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 53
    .restart local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationPortrat:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 55
    new-instance v0, Lcom/miui/compass/Rotate3dAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getRotationCenterY()F

    move-result v2

    invoke-direct {v0, v4, v9, v1, v2}, Lcom/miui/compass/Rotate3dAnimation;-><init>(FFFF)V

    .line 56
    .restart local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationPortrat:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 59
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationPortrait:Landroid/view/animation/AnimationSet;

    .line 60
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    invoke-direct {v0, v4, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 61
    .restart local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 62
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationPortrait:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 63
    new-instance v0, Lcom/miui/compass/Rotate3dAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getRotationCenterY()F

    move-result v2

    invoke-direct {v0, v9, v4, v1, v2}, Lcom/miui/compass/Rotate3dAnimation;-><init>(FFFF)V

    .line 64
    .restart local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 65
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationPortrait:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 67
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationLying:Landroid/view/animation/AnimationSet;

    .line 68
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    invoke-direct {v0, v4, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .restart local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationLying:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 71
    new-instance v0, Lcom/miui/compass/Rotate3dAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getRotationCenterY()F

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/compass/Rotate3dAnimation;-><init>(FFFF)V

    .line 72
    .restart local v0    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationLying:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    iput-boolean v5, p0, Lcom/miui/compass/LyingPortraitView;->mIsAnimationsInited:Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract getLyingViewId()I
.end method

.method protected abstract getPortraitViewId()I
.end method

.method protected abstract getRotationCenterY()F
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/widget/ViewSwitcher;->onMeasure(II)V

    .line 29
    return-void
.end method

.method public setFaceDirection(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-boolean v1, p0, Lcom/miui/compass/LyingPortraitView;->mIsAnimationsInited:Z

    if-nez v1, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/miui/compass/LyingPortraitView;->initAnimations()V

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    .line 87
    .local v0, "currentId":I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 88
    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_4

    const/high16 v1, 0x43070000    # 135.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getLyingViewId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationLying:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Lcom/miui/compass/LyingPortraitView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 91
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationPortrait:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Lcom/miui/compass/LyingPortraitView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->showNext()V

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->getPortraitViewId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mOutAnimationPortrat:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Lcom/miui/compass/LyingPortraitView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v1, p0, Lcom/miui/compass/LyingPortraitView;->mInAnimationLying:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Lcom/miui/compass/LyingPortraitView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/compass/LyingPortraitView;->showNext()V

    goto :goto_0
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 106
    return-void
.end method
