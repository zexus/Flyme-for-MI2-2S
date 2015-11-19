.class public Lmiui/notification/NotificationRowLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationRowLayout.java"

# interfaces
.implements Lmiui/notification/SwipeHelper$Callback;


# static fields
.field private static final APPEAR_ANIM_LEN:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DISAPPEAR_ANIM_LEN:I = 0xfa

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationRowLayout"


# instance fields
.field mAnimateBounds:Z

.field mAppearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDisappearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mRealLayoutTransition:Landroid/animation/LayoutTransition;

.field mRemoveViews:Z

.field private mSwipeHelper:Lmiui/notification/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/notification/NotificationRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v3, p0, Lmiui/notification/NotificationRowLayout;->mAnimateBounds:Z

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/notification/NotificationRowLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/notification/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/notification/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    .line 59
    iput-boolean v3, p0, Lmiui/notification/NotificationRowLayout;->mRemoveViews:Z

    .line 70
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v2, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    .line 71
    iget-object v2, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 72
    invoke-virtual {p0, v3}, Lmiui/notification/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 74
    invoke-virtual {p0, v3}, Lmiui/notification/NotificationRowLayout;->setOrientation(I)V

    .line 91
    invoke-virtual {p0}, Lmiui/notification/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .local v0, "densityScale":F
    iget-object v2, p0, Lmiui/notification/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 93
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lmiui/notification/SwipeHelper;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0, v1}, Lmiui/notification/SwipeHelper;-><init>(ILmiui/notification/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    .line 94
    return-void
.end method

.method private logLayoutTransition()V
    .locals 3

    .prologue
    .line 113
    const-string v1, "NotificationRowLayout"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "in transition and animations "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "are "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "running."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 113
    :cond_0
    const-string v0, "is not "

    goto :goto_0

    :cond_1
    const-string v0, "are not "

    goto :goto_1
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    sget v1, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dismissRowAnimated(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/notification/NotificationRowLayout;->dismissRowAnimated(Landroid/view/View;I)V

    .line 227
    return-void
.end method

.method public dismissRowAnimated(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "vel"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lmiui/notification/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 231
    return-void
.end method

.method public getChildAtPosition(FF)Landroid/view/View;
    .locals 6
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 172
    invoke-virtual {p0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v1

    .line 173
    .local v1, "count":I
    const/4 v3, 0x0

    .line 174
    .local v3, "y":I
    const/4 v0, 0x0

    .line 176
    .local v0, "childIdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 177
    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, "slidingChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 182
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    .line 184
    .end local v2    # "slidingChild":Landroid/view/View;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/notification/NotificationRowLayout;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtRawPosition(FF)Landroid/view/View;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 165
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 166
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->getLocationOnScreen([I)V

    .line 167
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lmiui/notification/NotificationRowLayout;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    return-object p1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    sget v1, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lmiui/notification/NotificationRowLayout;->mRemoveViews:Z

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 149
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    invoke-virtual {p0}, Lmiui/notification/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 195
    .local v0, "densityScale":F
    iget-object v2, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v2, v0}, Lmiui/notification/SwipeHelper;->setDensityScale(F)V

    .line 196
    iget-object v2, p0, Lmiui/notification/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 197
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v2, v1}, Lmiui/notification/SwipeHelper;->setPagingTouchSlop(F)V

    .line 198
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 237
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lmiui/notification/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lmiui/notification/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 103
    if-nez p1, :cond_0

    .line 104
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    .line 106
    :cond_0
    return-void
.end method

.method public setAnimateBounds(Z)V
    .locals 0
    .param p1, "anim"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lmiui/notification/NotificationRowLayout;->mAnimateBounds:Z

    .line 110
    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 219
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 221
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lmiui/notification/SwipeHelper;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    return-void
.end method

.method public setViewRemoval(Z)V
    .locals 0
    .param p1, "removeViews"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lmiui/notification/NotificationRowLayout;->mRemoveViews:Z

    .line 210
    return-void
.end method
