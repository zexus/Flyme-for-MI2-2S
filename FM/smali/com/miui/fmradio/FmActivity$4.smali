.class Lcom/miui/fmradio/FmActivity$4;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmActivity;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$4;->this$0:Lcom/miui/fmradio/FmActivity;

    iput-object p2, p0, Lcom/miui/fmradio/FmActivity$4;->val$endAction:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/miui/fmradio/FmActivity$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$4;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$4;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 705
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 709
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 697
    return-void
.end method
