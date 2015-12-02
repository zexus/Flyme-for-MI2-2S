.class Lcom/android/camera/ui/V6FlashButton$1;
.super Landroid/os/Handler;
.source "V6FlashButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6FlashButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6FlashButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6FlashButton;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/ui/V6FlashButton$1;->this$0:Lcom/android/camera/ui/V6FlashButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton$1;->this$0:Lcom/android/camera/ui/V6FlashButton;

    iget-object v0, v0, Lcom/android/camera/ui/V6FlashButton;->transition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setLevel(I)Z

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton$1;->this$0:Lcom/android/camera/ui/V6FlashButton;

    # getter for: Lcom/android/camera/ui/V6FlashButton;->mRevert:Z
    invoke-static {v0}, Lcom/android/camera/ui/V6FlashButton;->access$000(Lcom/android/camera/ui/V6FlashButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton$1;->this$0:Lcom/android/camera/ui/V6FlashButton;

    iget-object v0, v0, Lcom/android/camera/ui/V6FlashButton;->transition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton$1;->this$0:Lcom/android/camera/ui/V6FlashButton;

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton$1;->this$0:Lcom/android/camera/ui/V6FlashButton;

    # getter for: Lcom/android/camera/ui/V6FlashButton;->mRevert:Z
    invoke-static {v0}, Lcom/android/camera/ui/V6FlashButton;->access$000(Lcom/android/camera/ui/V6FlashButton;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    # setter for: Lcom/android/camera/ui/V6FlashButton;->mRevert:Z
    invoke-static {v2, v0}, Lcom/android/camera/ui/V6FlashButton;->access$002(Lcom/android/camera/ui/V6FlashButton;Z)Z

    .line 62
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/ui/V6FlashButton$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton$1;->this$0:Lcom/android/camera/ui/V6FlashButton;

    iget-object v0, v0, Lcom/android/camera/ui/V6FlashButton;->transition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 61
    goto :goto_2

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
