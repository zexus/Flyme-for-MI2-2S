.class Lcom/miui/fmradio/FmStationListFragment$EditStationDialog$1;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Lcom/miui/fmradio/StationEditDialog$EditStationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationChanged(ILjava/lang/String;I)V
    .locals 3
    .param p1, "newFreq"    # I
    .param p2, "newLabel"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 632
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;

    # getter for: Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->mIsAdd:Z
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->access$1200(Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;

    # getter for: Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->access$1300(Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;)Lcom/miui/fmradio/StationItem;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStationListFragment$EditStationDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 634
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v1, :cond_1

    .line 635
    check-cast v0, Lcom/miui/fmradio/FmStationListFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    # invokes: Lcom/miui/fmradio/FmStationListFragment;->addOrEditStation(ILjava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/miui/fmradio/FmStationListFragment;->access$1400(Lcom/miui/fmradio/FmStationListFragment;ILjava/lang/String;I)V

    .line 638
    :cond_1
    return-void
.end method
