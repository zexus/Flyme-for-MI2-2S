.class Lcom/android/settings/display/s;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Vx:Lcom/android/settings/display/PageLayoutFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 600
    :goto_0
    return-void

    .line 575
    :pswitch_0
    invoke-static {}, Lcom/android/settings/display/n;->oy()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->a(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/display/n;->br(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    new-instance v0, Lcom/android/settings/display/t;

    invoke-direct {v0}, Lcom/android/settings/display/t;-><init>()V

    .line 578
    iget-object v1, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/t;->bw(I)V

    .line 579
    iget-object v1, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {v1}, Lcom/android/settings/display/PageLayoutFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    # getter for: Lcom/android/settings/display/t;->Vy:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/display/t;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/t;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->b(Lcom/android/settings/display/PageLayoutFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->b(Landroid/app/Activity;I)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/n;->e(Landroid/content/Context;I)Z

    .line 585
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->b(Lcom/android/settings/display/PageLayoutFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {v1}, Lcom/android/settings/display/PageLayoutFragment;->a(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->b(Landroid/app/Activity;I)V

    goto :goto_0

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 597
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/display/s;->Vx:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x7f10017d
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
