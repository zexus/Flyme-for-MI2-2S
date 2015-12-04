.class Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->onScanStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v1, v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v2, 0x1

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmStationListFragment;->access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V

    .line 487
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v1, v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;

    .line 488
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$ScanDialog;
    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Lcom/miui/fmradio/Utils;->getMinFrequency()I

    move-result v1

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->setMessage(Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method
