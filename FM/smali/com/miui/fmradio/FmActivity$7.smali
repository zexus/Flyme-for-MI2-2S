.class Lcom/miui/fmradio/FmActivity$7;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmActivity;
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
    .line 842
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$7;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationItemClick(Lcom/miui/fmradio/StationItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 845
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$7;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$7;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$7;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget v2, p1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$7;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget v2, p1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmActivity"

    const-string v2, "tune Fm failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
