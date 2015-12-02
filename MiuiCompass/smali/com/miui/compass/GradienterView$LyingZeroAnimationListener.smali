.class Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;
.super Ljava/lang/Object;
.source "GradienterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/GradienterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyingZeroAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/GradienterView;


# direct methods
.method private constructor <init>(Lcom/miui/compass/GradienterView;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;->this$0:Lcom/miui/compass/GradienterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/compass/GradienterView;Lcom/miui/compass/GradienterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/compass/GradienterView;
    .param p2, "x1"    # Lcom/miui/compass/GradienterView$1;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;-><init>(Lcom/miui/compass/GradienterView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;->this$0:Lcom/miui/compass/GradienterView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/miui/compass/GradienterView;->mZeroProgress:F
    invoke-static {v1, v0}, Lcom/miui/compass/GradienterView;->access$102(Lcom/miui/compass/GradienterView;F)F

    .line 230
    iget-object v0, p0, Lcom/miui/compass/GradienterView$LyingZeroAnimationListener;->this$0:Lcom/miui/compass/GradienterView;

    invoke-virtual {v0}, Lcom/miui/compass/GradienterView;->invalidate()V

    .line 231
    return-void
.end method
