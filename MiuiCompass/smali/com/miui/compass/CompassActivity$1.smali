.class Lcom/miui/compass/CompassActivity$1;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 239
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 244
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    return-void
.end method
