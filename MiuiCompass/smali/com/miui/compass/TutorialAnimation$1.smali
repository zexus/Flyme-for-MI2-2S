.class Lcom/miui/compass/TutorialAnimation$1;
.super Landroid/os/Handler;
.source "TutorialAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/TutorialAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/TutorialAnimation;


# direct methods
.method constructor <init>(Lcom/miui/compass/TutorialAnimation;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    # getter for: Lcom/miui/compass/TutorialAnimation;->mIsAnimating:Z
    invoke-static {v1}, Lcom/miui/compass/TutorialAnimation;->access$000(Lcom/miui/compass/TutorialAnimation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    iget-object v2, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    # getter for: Lcom/miui/compass/TutorialAnimation;->mIndex:I
    invoke-static {v2}, Lcom/miui/compass/TutorialAnimation;->access$100(Lcom/miui/compass/TutorialAnimation;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    # getter for: Lcom/miui/compass/TutorialAnimation;->mAnimation:Ljava/util/List;
    invoke-static {v3}, Lcom/miui/compass/TutorialAnimation;->access$200(Lcom/miui/compass/TutorialAnimation;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    # setter for: Lcom/miui/compass/TutorialAnimation;->mIndex:I
    invoke-static {v1, v2}, Lcom/miui/compass/TutorialAnimation;->access$102(Lcom/miui/compass/TutorialAnimation;I)I

    .line 30
    iget-object v1, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    # getter for: Lcom/miui/compass/TutorialAnimation;->mAnimation:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/compass/TutorialAnimation;->access$200(Lcom/miui/compass/TutorialAnimation;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    # getter for: Lcom/miui/compass/TutorialAnimation;->mIndex:I
    invoke-static {v2}, Lcom/miui/compass/TutorialAnimation;->access$100(Lcom/miui/compass/TutorialAnimation;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/compass/TutorialAnimation$AnimationItem;

    .line 31
    .local v0, "item":Lcom/miui/compass/TutorialAnimation$AnimationItem;
    iget-object v1, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    # getter for: Lcom/miui/compass/TutorialAnimation;->mAnimationView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/miui/compass/TutorialAnimation;->access$300(Lcom/miui/compass/TutorialAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, v0, Lcom/miui/compass/TutorialAnimation$AnimationItem;->mResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object v1, p0, Lcom/miui/compass/TutorialAnimation$1;->this$0:Lcom/miui/compass/TutorialAnimation;

    # getter for: Lcom/miui/compass/TutorialAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/compass/TutorialAnimation;->access$400(Lcom/miui/compass/TutorialAnimation;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, v0, Lcom/miui/compass/TutorialAnimation$AnimationItem;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    .end local v0    # "item":Lcom/miui/compass/TutorialAnimation$AnimationItem;
    :cond_0
    return-void
.end method
