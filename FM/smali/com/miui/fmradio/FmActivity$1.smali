.class Lcom/miui/fmradio/FmActivity$1;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Lmiui/app/OnStatusBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmActivity;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$1;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusBarHeightChange(I)V
    .locals 3
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 196
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$1;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$100(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    .local v1, "btnPowerLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 198
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$1;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$100(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$1;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mBtnMenu:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$200(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 200
    .local v0, "btnMenuLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 201
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$1;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mBtnMenu:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$200(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-void
.end method
