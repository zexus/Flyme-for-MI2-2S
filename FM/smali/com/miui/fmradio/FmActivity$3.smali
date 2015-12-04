.class Lcom/miui/fmradio/FmActivity$3;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity;->doAnimation(I)V
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
    .line 672
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$3;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$3;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mTxtFreqRep:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/fmradio/FmActivity;->access$400(Lcom/miui/fmradio/FmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$3;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/fmradio/FmActivity;->access$500(Lcom/miui/fmradio/FmActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$3;->this$0:Lcom/miui/fmradio/FmActivity;

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v2}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 678
    return-void
.end method
