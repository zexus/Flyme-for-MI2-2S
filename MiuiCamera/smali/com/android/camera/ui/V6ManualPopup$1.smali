.class Lcom/android/camera/ui/V6ManualPopup$1;
.super Ljava/lang/Object;
.source "V6ManualPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ManualPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ManualPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ManualPopup;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$000(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$100(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # invokes: Lcom/android/camera/ui/V6ManualPopup;->computeTransY()I
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$200(Lcom/android/camera/ui/V6ManualPopup;)I

    move-result v1

    .line 52
    .local v1, "transY":I
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    iget-object v3, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v3}, Lcom/android/camera/ui/V6ManualPopup;->access$000(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    # invokes: Lcom/android/camera/ui/V6ManualPopup;->setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/V6ManualPopup;->access$300(Lcom/android/camera/ui/V6ManualPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    .line 53
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    iget-object v3, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;
    invoke-static {v3}, Lcom/android/camera/ui/V6ManualPopup;->access$100(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    move-result-object v3

    # invokes: Lcom/android/camera/ui/V6ManualPopup;->setupAnimation(ILcom/android/camera/ui/V6ManualPopup$AnimationType;)Landroid/animation/ValueAnimator;
    invoke-static {v2, v1, v3}, Lcom/android/camera/ui/V6ManualPopup;->access$400(Lcom/android/camera/ui/V6ManualPopup;ILcom/android/camera/ui/V6ManualPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 54
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    iget-object v3, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # getter for: Lcom/android/camera/ui/V6ManualPopup;->mPendingAnimationType:Lcom/android/camera/ui/V6ManualPopup$AnimationType;
    invoke-static {v3}, Lcom/android/camera/ui/V6ManualPopup;->access$100(Lcom/android/camera/ui/V6ManualPopup;)Lcom/android/camera/ui/V6ManualPopup$AnimationType;

    move-result-object v3

    # invokes: Lcom/android/camera/ui/V6ManualPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V
    invoke-static {v2, v0, v3}, Lcom/android/camera/ui/V6ManualPopup;->access$500(Lcom/android/camera/ui/V6ManualPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/V6ManualPopup$AnimationType;)V

    .line 56
    iget-object v2, p0, Lcom/android/camera/ui/V6ManualPopup$1;->this$0:Lcom/android/camera/ui/V6ManualPopup;

    # invokes: Lcom/android/camera/ui/V6ManualPopup;->removeOnPreDrawListener()Z
    invoke-static {v2}, Lcom/android/camera/ui/V6ManualPopup;->access$600(Lcom/android/camera/ui/V6ManualPopup;)Z

    .line 57
    const/4 v2, 0x0

    .line 59
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "transY":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
