.class Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->onScanComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;I)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iput p2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 521
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v1, v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 522
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 523
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v1, v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f090000

    iget v3, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;->val$count:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;->val$count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 527
    :cond_0
    return-void
.end method
