.class Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog$1;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 570
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 571
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v1, :cond_0

    .line 572
    check-cast v0, Lcom/miui/fmradio/FmStationListFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;

    # getter for: Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->mFrequency:I
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->access$1000(Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;)I

    move-result v1

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->deleteStation(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmStationListFragment;->access$1100(Lcom/miui/fmradio/FmStationListFragment;I)V

    .line 574
    :cond_0
    return-void
.end method
