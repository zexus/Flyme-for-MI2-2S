.class public Lcom/android/camera/ui/V6PreviewPage;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6PreviewPage$AnimationType;,
        Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;,
        Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAnimPopup:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

.field public mAsdIndicatorView:Landroid/widget/ImageView;

.field private mCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private mExpandInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mModeExitButton:Landroid/view/View;

.field public mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

.field public mPanoramaViewRoot:Landroid/widget/RelativeLayout;

.field private mPopupGroupVisible:Z

.field private mPopupIndicator:Landroid/view/View;

.field public mPopupIndicatorLayout:Landroid/view/View;

.field public mPopupParent:Landroid/view/ViewGroup;

.field public mPopupParentLayout:Landroid/view/ViewGroup;

.field private mPopupVisible:Z

.field private mPreviewFrontGround:Landroid/view/View;

.field private mVisible:Z

.field public mWarningMessageLayout:Landroid/widget/RelativeLayout;

.field public mWarningView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 50
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 53
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 69
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 50
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 53
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 74
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->getChildY(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->clearOnLayoutChangeListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    return-void
.end method

.method private clearOnLayoutChangeListener()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 323
    return-void
.end method

.method private createAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    const-string v1, "V6PreviewPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAnimation: popupHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v1, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    .line 339
    :cond_0
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 340
    .local v0, "popupTransYOut":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    .line 341
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 343
    return-void
.end method

.method private createOrUpdateAnimatorListener()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    goto :goto_0
.end method

.method private doViewAnimation(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v0, p2, :cond_0

    .line 97
    if-eqz p2, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 111
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 96
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_1

    .line 107
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private getChildY(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 371
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 372
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    if-eq v0, p0, :cond_0

    move-object v1, v0

    .line 373
    check-cast v1, Landroid/view/View;

    .line 374
    .local v1, "viewParent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 375
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 376
    goto :goto_0

    .line 378
    .end local v1    # "viewParent":Landroid/view/View;
    :cond_0
    return v2
.end method

.method private getCurrentPopupShownView()Landroid/view/View;
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 276
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 271
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasSettingPopup()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->getCurrentPopup()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "slideUp"    # Z

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v1, Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 241
    .local v1, "animationListener":Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setupOnLayoutChangeListener()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 315
    return-void
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 6
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "visiblePopup":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 216
    iget-object v5, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 217
    iget-object v5, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 218
    if-eq v2, p1, :cond_1

    .line 232
    :cond_0
    :goto_1
    return v4

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_2
    if-nez v2, :cond_3

    move v4, v3

    .line 225
    goto :goto_1

    .line 226
    :cond_3
    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_0

    .line 227
    iget-object v5, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/PopupManager;->getLastOnOtherPopupShowedListener()Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    move-result-object v1

    .line 229
    .local v1, "lastListener":Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    if-nez v1, :cond_4

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private updatePopupIndicatorImageResource()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updatePopupVisibility(ZZZ)V
    .locals 4
    .param p1, "isExitViewVisible"    # Z
    .param p2, "isPopupVisible"    # Z
    .param p3, "isIndicatorVisible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 361
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 361
    goto :goto_1

    :cond_2
    move v1, v2

    .line 362
    goto :goto_2
.end method


# virtual methods
.method public dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    .line 261
    .local v0, "animation":Z
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    .line 263
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss()V

    goto :goto_0
.end method

.method public inflatePanoramaView()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 293
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04000b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 294
    const v1, 0x7f0c001c

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    .line 296
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public isPopupShown()Z
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->getCurrentPopupShownView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewPageVisible()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 114
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewFrontGround:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 119
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicatorImageResource()V

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 307
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 80
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    .line 81
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    .line 82
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ModeExitView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 83
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    .line 84
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/RelativeLayout;

    .line 86
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewFrontGround:Landroid/view/View;

    .line 87
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    .line 88
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    .line 89
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    .line 93
    return-void
.end method

.method public onPopupChange()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "V6PreviewPage"

    const-string v1, "onPopupChange"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    return-void
.end method

.method public setPopupVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-ne v0, p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    goto :goto_0
.end method

.method public showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    .line 250
    .local v0, "animation":Z
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show()V

    .line 252
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    .line 253
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show()V

    goto :goto_0
.end method

.method public showPopupWithoutExitView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iput-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 209
    invoke-direct {p0, v1, v2, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    .line 211
    :cond_0
    return-void
.end method

.method public simplifyPopup(ZZ)V
    .locals 5
    .param p1, "simplify"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    const-string v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simplifyPopup: simplify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iput-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 187
    if-eqz p2, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0, v3, v3, v4}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0

    .line 194
    :cond_3
    if-nez p1, :cond_0

    .line 195
    iput-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 196
    if-eqz p2, :cond_4

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 201
    :cond_4
    invoke-direct {p0, v4, v4, v3}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0
.end method

.method public switchWithAnimation(Z)V
    .locals 5
    .param p1, "switchToPreviewPage"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    const-string v0, "Camera10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchWithAnimation: toPreviewPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",popupVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",groupVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewFrontGround:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 128
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v0, :cond_0

    .line 129
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 149
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 150
    return-void

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-ne v4, v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewFrontGround:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public updatePopupIndicator()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasSettingPopup()Z

    move-result v0

    .line 155
    .local v0, "hasSettingPopup":Z
    const-string v2, "V6PreviewPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePopupIndicator: groupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",popupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",hasSettingPopup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v2, :cond_1

    .line 158
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-direct {p0, v1, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0
.end method
