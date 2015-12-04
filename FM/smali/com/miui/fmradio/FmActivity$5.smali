.class Lcom/miui/fmradio/FmActivity$5;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 729
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 738
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-static {p2}, Lcom/miui/fmradio/IFmLocalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v3

    # setter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmActivity;->access$702(Lcom/miui/fmradio/FmActivity;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;
    invoke-static {v3}, Lcom/miui/fmradio/FmActivity;->access$800(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/fmradio/IFmLocalService;->registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V

    .line 741
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->isFmServiceReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->initFmService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v3, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 753
    return-void

    .line 743
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_0

    .line 745
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    const-class v3, Lcom/miui/fmradio/FmStationListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/miui/fmradio/FmActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 749
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmActivity"

    const-string v3, "initFmService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 732
    const-string v0, "Fm:FmActivity"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$5;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # setter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$702(Lcom/miui/fmradio/FmActivity;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 734
    return-void
.end method
