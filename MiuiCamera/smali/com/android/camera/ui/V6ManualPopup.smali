.class public Lcom/android/camera/ui/V6ManualPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6ManualPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6ManualPopup$AnimationType;,
        Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mManualPopupParent:Landroid/widget/FrameLayout;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

.field private mPopupTranslationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupValue:Landroid/view/View;

.field private mPopupValueLayout:Landroid/view/View;

.field private mPopupValueVisible:Z

.field private mRunningAnimation:Landroid/animation/ValueAnimator;

.field private mSettingView:Lcom/android/camera/ui/SettingView;

.field private mTranslationAnimationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mValueBottomLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/android/camera/ui/V6ManualPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6ManualPopup$1;-><init>(Lcom/android/camera/ui/V6ManualPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/V6ManualPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;
    .param p1, "x1"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6ManualPopup$AnimationType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValue:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6ManualPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/V6ManualPopup;->computeTransY()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6ManualPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;
    .param p1, "x1"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6ManualPopup;->setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6ManualPopup;ILcom/android/camera/ui/V6ManualPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6ManualPopup;->setupAnimation(ILcom/android/camera/ui/V6ManualPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6ManualPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;
    .param p2, "x2"    # Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6ManualPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6ManualPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/V6ManualPopup;->removeOnPreDrawListener()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6ModeExitView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ManualPopup;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValueLayout:Landroid/view/View;

    return-object v0
.end method

.method private addOnPreDrawListener()Z
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ManualPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 195
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 197
    const/4 v1, 0x1

    .line 199
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeTransY()I
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValueVisible:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValueLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getManualKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "pref_focus_position_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v1, "pref_qc_camera_exposuretime_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    const-string v1, "pref_qc_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-object v0
.end method

.method private getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, "transY":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 216
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private removeOnPreDrawListener()Z
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ManualPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 204
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 206
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "transY"    # I

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    return-void
.end method

.method private setupAnimation(ILcom/android/camera/ui/V6ManualPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "transY"    # I
    .param p2, "type"    # Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 235
    iget-object v6, p0, Lcom/android/camera/ui/V6ManualPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 236
    .local v0, "animSlideDown":Landroid/animation/ValueAnimator;
    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    .line 238
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 239
    .local v3, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v6, v3, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;

    if-eqz v6, :cond_0

    .line 240
    check-cast v3, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;

    .end local v3    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {v3, p2}, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V

    goto :goto_0

    .line 243
    :cond_1
    const-string v6, "V6ManualPopup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupAnimation: reuse transY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_1
    return-object v0

    .line 245
    :cond_2
    new-instance v1, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6ManualPopup;)V

    .line 246
    .local v1, "animatorListener":Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;
    invoke-virtual {v1, p2}, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V

    .line 247
    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    int-to-float v8, p1

    aput v8, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 248
    .local v5, "popupTransYOut":Landroid/animation/PropertyValuesHolder;
    iget-object v6, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    iget-object v6, p0, Lcom/android/camera/ui/V6ManualPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    const-string v6, "V6ManualPopup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupAnimation: new transY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 5
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v4, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 180
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 190
    .end local v1    # "childCount":I
    :cond_0
    :goto_0
    return v3

    .line 183
    .restart local v1    # "childCount":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 184
    iget-object v4, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "child":Landroid/view/View;
    if-eq p1, v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 186
    const/4 v3, 0x0

    goto :goto_0

    .line 183
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "type"    # Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6ManualPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    .line 266
    sget-object v0, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    if-ne p2, v0, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method


# virtual methods
.method public dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 6
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/16 v5, 0x8

    .line 148
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 149
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ManualPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ManualPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v1

    .line 151
    .local v1, "transY":I
    const-string v2, "V6ManualPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissChildPopup: transY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",popup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-nez v1, :cond_2

    .line 153
    sget-object v2, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    iput-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .line 154
    invoke-direct {p0}, Lcom/android/camera/ui/V6ManualPopup;->addOnPreDrawListener()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v2, p1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValue:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss()V

    .line 172
    .end local v1    # "transY":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 174
    :goto_1
    return v2

    .line 162
    .restart local v1    # "transY":I
    :cond_2
    sget-object v2, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/V6ManualPopup;->setupAnimation(ILcom/android/camera/ui/V6ManualPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 163
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/V6ManualPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V

    goto :goto_0

    .line 166
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "transY":I
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v2, p1, :cond_4

    .line 167
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValue:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss()V

    goto :goto_0

    .line 174
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 7
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    const v2, 0x7f0a000a

    const v1, 0x7f0a0009

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->setBackgroundResource(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-direct {p0}, Lcom/android/camera/ui/V6ManualPopup;->getManualKeys()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    move-object v1, p1

    move-object v4, p3

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/SettingView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 99
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 73
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ManualPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValueLayout:Landroid/view/View;

    .line 74
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ManualPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValue:Landroid/view/View;

    .line 75
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ManualPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;

    .line 76
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ManualPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mManualPopupParent:Landroid/widget/FrameLayout;

    .line 77
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ManualPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingView;

    iput-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 78
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 117
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 83
    return-void
.end method

.method public showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 5
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v3, 0x0

    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iput-object p1, p0, Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 129
    const-string v2, "pref_camera_whitebalance_key"

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValueVisible:Z

    .line 130
    iget-object v4, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValue:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mPopupValueVisible:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show()V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ManualPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ManualPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v1

    .line 135
    .local v1, "transY":I
    const-string v2, "V6ManualPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showChildPopup: transY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",popup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez v1, :cond_3

    .line 137
    sget-object v2, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    iput-object v2, p0, Lcom/android/camera/ui/V6ManualPopup;->mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .line 138
    invoke-direct {p0}, Lcom/android/camera/ui/V6ManualPopup;->addOnPreDrawListener()Z

    .line 145
    .end local v1    # "transY":I
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v3

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    .line 140
    .restart local v1    # "transY":I
    :cond_3
    sget-object v2, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/V6ManualPopup;->setupAnimation(ILcom/android/camera/ui/V6ManualPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 141
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/V6ManualPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V

    goto :goto_2
.end method
