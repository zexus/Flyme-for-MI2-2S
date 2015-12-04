.class Lcom/miui/fmradio/FmStationListFragment$1;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$1;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$1;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$1;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$1;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->scanStations()V

    .line 224
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$1;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/fmradio/StationItemHelper;->clearNormalItems(Landroid/content/Context;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "mService is null cannot start scan"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "startScan failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
