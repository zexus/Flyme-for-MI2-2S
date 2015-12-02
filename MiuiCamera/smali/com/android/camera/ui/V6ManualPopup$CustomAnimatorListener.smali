.class Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V6ManualPopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ManualPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mIsValueVisible:Z

.field private mLayerType:I

.field private mType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

.field final synthetic this$0:Lcom/android/camera/ui/V6ManualPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6ManualPopup;)V
    .locals 2

    .prologue
    .line 285
    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6ManualPopup;ZLcom/android/camera/ui/V6ManualPopup$AnimationType;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/V6ManualPopup;ZLcom/android/camera/ui/V6ManualPopup$AnimationType;)V
    .locals 0
    .param p2, "isValueVisible"    # Z
    .param p3, "type"    # Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 280
    iput-boolean p2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mIsValueVisible:Z

    .line 281
    iput-object p3, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .line 282
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 307
    const-string v0, "V6ManualPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCancel: animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 312
    sget-object v1, Lcom/android/camera/ui/V6ManualPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 313
    .local v0, "slideDown":Z
    :goto_0
    const-string v1, "V6ManualPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",animation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",popup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v3}, Lcom/android/camera/ui/V6ManualPopup;->access$000(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$800(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$000(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$000(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # setter for: Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v1, v7}, Lcom/android/camera/ui/V6ManualPopup;->access$002(Lcom/android/camera/ui/V6ManualPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$700(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6ModeExitView;->setTranslationY(F)V

    .line 322
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$800(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$800(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 325
    iget-boolean v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mIsValueVisible:Z

    if-eqz v1, :cond_2

    .line 326
    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPopupValue:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$1000(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPopupValueLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$900(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 330
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPopupValueLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/V6ManualPopup;->access$900(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    iget v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v1, v2, v7}, Lcom/android/camera/ui/V6ManualPopup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 333
    return-void

    .line 312
    .end local v0    # "slideDown":Z
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x2

    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ManualPopup;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mLayerType:I

    .line 338
    iget v0, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mLayerType:I

    if-eq v0, v2, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/V6ManualPopup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 341
    :cond_0
    const-string v0, "V6ManualPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart: layerType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",popup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$000(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 295
    .local v1, "transY":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    sub-float v0, v2, v3

    .line 296
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$700(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/V6ModeExitView;->setTranslationY(F)V

    .line 297
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$800(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 298
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$800(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 299
    iget-boolean v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mIsValueVisible:Z

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPopupValueLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$900(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 301
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPopupValueLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$900(Lcom/android/camera/ui/V6ManualPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 303
    :cond_0
    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/camera/ui/V6ManualPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    .line 290
    return-void
.end method
