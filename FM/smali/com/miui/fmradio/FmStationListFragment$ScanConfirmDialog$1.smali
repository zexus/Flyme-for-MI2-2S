.class Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog$1;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 656
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog$1;->this$0:Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStationListFragment$ScanConfirmDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 657
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v1, :cond_0

    .line 658
    check-cast v0, Lcom/miui/fmradio/FmStationListFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    # invokes: Lcom/miui/fmradio/FmStationListFragment;->initScan()V
    invoke-static {v0}, Lcom/miui/fmradio/FmStationListFragment;->access$1500(Lcom/miui/fmradio/FmStationListFragment;)V

    .line 660
    :cond_0
    return-void
.end method
