.class Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->onStationScaned(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

.field final synthetic val$freq:I


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;I)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iput p2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->val$freq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 500
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v2, v2, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->val$freq:I

    invoke-static {v2, v3}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v1

    .line 501
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    if-nez v1, :cond_0

    .line 502
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v2, v2, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->val$freq:I

    iget-object v4, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v4, v4, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Lcom/miui/fmradio/FmStationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/miui/fmradio/StationItemHelper;->addOrUpdateSingleStation(Landroid/content/Context;ILjava/lang/String;I)V

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v2, v2, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;

    .line 506
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$ScanDialog;
    if-eqz v0, :cond_1

    .line 507
    iget v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;->val$freq:I

    invoke-static {v2}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->setMessage(Ljava/lang/String;)V

    .line 509
    :cond_1
    return-void
.end method
